;; me-fonts.el --- MinEmacs fonts -*- lexical-binding: t; -*-

;; Copyright (C) 2022-2023  Abdelhak Bougouffa

;; Author: Abdelhak Bougouffa (concat "abougouffa" "@" "fedora" "project" "." "org")

;;; Commentary:

;;; Code:


(defcustom minemacs-fonts-plist
  '(:default
    ((:family "Iosevka" :height 130)
     (:family "Cascadia Code" :height 130)
     (:family "Fira Code" :height 130)
     (:family "Jetbrains Mono" :height 110)
     (:family "Hack" :height 130)
     (:family "Roboto Mono" :height 120)
     (:family "SF Mono" :height 130)
     (:family "Source Code Pro" :height 130)
     (:family "Menlo" :height 130)
     (:family "Monaco" :height 130)
     (:family "DejaVu Sans Mono" :height 130)
     (:family "Consolas" :height 130))
    :symbol
    ((:family "Segoe UI Symbol" :prepend t)
     (:family "Symbola" :prepend t)
     (:family "Symbol" :prepend t))
    :emoji
    ((:family "Noto Color Emoji" :prepend t)
     (:family "Apple Color Emoji" :prepent t)
     (:family "Segoe UI Emoji" :prepend t)
     (:family "Quivira" :prepend t))
    ;; Arabic script
    :arabic
    ("KacstOne"
     "Amiri Typewriter"
     "Scheherazade"
     "Koodak"
     (:family "Amiri" :scale 0.9))
    ;; Chinese script
    :han
    ((:family "LXGW Neo Xihei" :scale 1.3)
     (:family "WenQuanYi Micro Hei Mono" :scale 1.3)
     (:family "LXGW WenKai Screen" :scale 1.3)
     (:family "LXGW WenKai Mono" :scale 1.3)
     (:family "PingFang SC" :scale 1.3)
     (:family "Microsoft Yahei UI" :scale 1.3)
     (:family "Simhei" :scale 1.3)))
  "Default fonts of MinEmacs."
  :group 'minemacs-ui
  :type '(choice
          (list string)
          (plist
           (:family string)
           (:scale number)
           (:height number))))

;; Setup default fonts (depending on the OS)
(let ((mono-font (cond (os/linux "monospace")
                       (os/win "Lucida Console")
                       (os/mac "monospace")))
      (varp-font (cond (os/linux "monospace")
                       (os/win "Tahoma")
                       (os/mac "monospace"))))
  (defconst minemacs-default-fonts
    `(:font-family ,mono-font
      :font-size 13
      :unicode-font-family nil
      :variable-pitch-font-family ,varp-font
      :variable-pitch-font-size 13)
    "Default fonts of MinEmacs."))

(make-obsolete-variable 'minemacs-default-fonts nil "v3.0.0")

(defcustom minemacs-fonts nil
  "Fonts to use within MinEmacs."
  :group 'minemacs-ui
  :type '(plist
          (:font-family string)
          (:font-size natnum)
          (:unicode-font-family string)
          (:variable-pitch-font-family string)
          (:variable-pitch-font-size natnum)))

(make-obsolete-variable 'minemacs-fonts 'minemacs-fonts-plist "v3.0.0")

(defconst +known-scripts (mapcar #'car script-representative-chars))

(defconst +font-family-list (font-family-list))

(defconst +set-face-attribute-keywords
  '(:family :foundry :width :height :weight :slant :foreground
    :background :underline :overline :strike-through :box
    :inverse-video :stipple :extend :font :inherit))

(defconst +font-spec-keywords
  '(:family :foundry :width :weight :slant :adstyle :registry :dpi :size :spacing
    :avgwidth :name :script :lang :otf))

(defun +font--get-valid-args (script-or-face font)
  (if (stringp font)
      `(:family ,font)
    (apply
     #'append
     (mapcar (lambda (a) (list a (plist-get font a)))
             (cl-intersection (+plist-keys font)
                              (if (memq script-or-face +known-scripts)
                                  +font-spec-keywords
                                +set-face-attribute-keywords))))))

(defun +font-installed-p (font-family)
  "Check if FONT-FAMILY is installed on the system."
  (and font-family (member font-family +font-family-list)) t)

(defun +apply-font-script (script-or-face)
  "Set font for SCRIPT-OR-FACE from `minemacs-fonts-plist'."
  (catch 'done
    (dolist (font (plist-get minemacs-fonts-plist (intern (format ":%s" script-or-face))))
      (let* ((spec (+font--get-valid-args script-or-face font))
             (prepend (and (plistp font) (plist-get font :family)))
             (scale (and (plistp font) (plist-get font :scale)))
             (family (plist-get spec :family)))
        (when (+font-installed-p family)
          (if (memq script-or-face +known-scripts)
              (set-fontset-font t script-or-face (apply #'font-spec spec) nil prepend)
            (apply #'set-face-attribute (append `(,script-or-face nil) spec)))
          (when scale (add-to-list 'face-font-rescale-alist (cons (plist-get spec :family) scale)))
          (throw 'done spec))))))

;; Inspired by: github.com/seagle0128/.emacs.d/blob/master/custom-example.el
;;;###autoload
(defun +setup-fonts ()
  "Setup fonts."
  (interactive)
  (mapc #'+apply-font-script
        (reverse
         (mapcar (lambda (k) (intern (substring (symbol-name k) 1)))
                 (+plist-keys minemacs-fonts-plist))))
  ;; Run hooks
  (run-hooks 'minemacs-after-setup-fonts-hook))

(defun +set-fonts ()
  "Set Emacs' fonts from `minemacs-fonts'."
  (interactive)
  (custom-set-faces
   `(default
     ((t (:font ,(format "%s %d"
                  (or (plist-get minemacs-fonts :font-family)
                   (plist-get minemacs-default-fonts :font-family))
                  (or (plist-get minemacs-fonts :font-size)
                   (plist-get minemacs-default-fonts :font-size)))))))
   `(fixed-pitch
     ((t (:inherit (default)))))
   `(fixed-pitch-serif
     ((t (:inherit (default)))))
   `(variable-pitch
     ((t (:font ,(format "%s %d"
                  (or (plist-get minemacs-fonts :variable-pitch-font-family)
                   (plist-get minemacs-default-fonts :variable-pitch-font-family))
                  (or (plist-get minemacs-fonts :variable-pitch-font-size)
                   (plist-get minemacs-default-fonts :variable-pitch-font-size))))))))
  ;; Run hooks
  (run-hooks 'minemacs-after-set-fonts-hook))

(make-obsolete #'+set-fonts #'+setup-fonts "v3.0.0")

(add-hook 'window-setup-hook #'+setup-fonts)
(add-hook 'server-after-make-frame-hook #'+setup-fonts)


(provide 'me-fonts)
