;;; me-latex.el --- LaTeX related stuff -*- lexical-binding: t; -*-

;; Copyright (C) 2022-2023  Abdelhak Bougouffa

;; Author: Abdelhak Bougouffa (concat "abougouffa" "@" "fedora" "project" "." "org")

;;; Commentary:

;;; Code:

;; Adapted from Doom Emacs and Crafted Emacs
(use-package tex
  :straight auctex
  :hook ((tex-mode TeX-mode latex-mode LaTeX-mode) . TeX-source-correlate-mode)
  :hook ((tex-mode TeX-mode latex-mode LaTeX-mode) . hs-minor-mode)
  :custom
  (TeX-parse-self t) ; parse on load
  (TeX-auto-save t)  ; parse on save
  (TeX-auto-local ".auctex-auto") ; use hidden directories for AUCTeX files.
  (TeX-style-local ".auctex-style")
  (TeX-source-correlate-method 'synctex)
  (TeX-electric-math '("$" . "$")) ; auto close inline equations
  (TeX-source-correlate-start-server nil) ; don't start the Emacs server when correlating sources.
  (TeX-electric-sub-and-superscript t) ; automatically insert braces after sub/superscript in `LaTeX-math-mode'.
  (TeX-save-query nil) ; just save, don't ask before each compilation.
  (TeX-engine 'xetex) ; use XeLaTeX by default
  :init
  (+map-local! :keymaps '(tex-mode-map TeX-mode-map latex-mode-map LaTeX-mode-map)
    "c" #'TeX-command-run-all
    "m" #'TeX-command-master
    "e" #'TeX-engine-set
    "v" #'TeX-view)
  :config
  (when (functionp 'pdf-tools-install)
    (add-to-list 'TeX-view-program-selection '(output-pdf "PDF Tools")))

  ;; To have the buffer refresh after compilation
  (add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer)

  ;; Compile to PDF by default
  (TeX-PDF-mode 1))

;; Adapted from Doom Emacs and Crafted Emacs
(use-package latex
  :straight auctex
  :hook (LaTeX-mode . latex-math-mode)
  :hook (LaTeX-mode . turn-on-reftex)
  :custom
  ;; Add the TOC entry to the sectioning hooks.
  (LaTeX-fill-break-at-separators nil)
  (LaTeX-item-indent 0)
  (LaTeX-electric-left-right-brace t)
  (LaTeX-reftex-cite-format-auto-activate nil)
  :config
  ;; Set a correct indentation in a few additional environments
  (add-to-list 'LaTeX-indent-environment-list '("lstlisting" current-indentation))
  (add-to-list 'LaTeX-indent-environment-list '("tikzcd" LaTeX-indent-tabular))
  (add-to-list 'LaTeX-indent-environment-list '("tikzpicture" current-indentation))

  ;; Add a few macros and environment as verbatim
  (add-to-list 'LaTeX-verbatim-environments "lstlisting")
  (add-to-list 'LaTeX-verbatim-environments "Verbatim")
  (add-to-list 'LaTeX-verbatim-macros-with-braces "lstinline")
  (add-to-list 'LaTeX-verbatim-macros-with-delims "lstinline")

  ;; Electric pairs in auctex
  (customize-set-variable 'TeX-electric-sub-and-superscript t)
  (customize-set-variable 'LaTeX-electric-left-right-brace t)
  (customize-set-variable 'TeX-electric-math (cons "$" "$"))

  ;; Fontification taken from: tex.stackexchange.com/a/86119/81279
  (setq font-latex-match-reference-keywords
        '(;; BibLaTeX.
          ("printbibliography" "[{")
          ("addbibresource" "[{")
          ;; Standard commands.
          ("cite" "[{")
          ("citep" "[{")
          ("citet" "[{")
          ("Cite" "[{")
          ("parencite" "[{")
          ("Parencite" "[{")
          ("footcite" "[{")
          ("footcitetext" "[{")
          ;; Style-specific commands.
          ("textcite" "[{")
          ("Textcite" "[{")
          ("smartcite" "[{")
          ("Smartcite" "[{")
          ("cite*" "[{")
          ("parencite*" "[{")
          ("supercite" "[{")
          ;; Qualified citation lists.
          ("cites" "[{")
          ("Cites" "[{")
          ("parencites" "[{")
          ("Parencites" "[{")
          ("footcites" "[{")
          ("footcitetexts" "[{")
          ("smartcites" "[{")
          ("Smartcites" "[{")
          ("textcites" "[{")
          ("Textcites" "[{")
          ("supercites" "[{")
          ;; Style-independent commands.
          ("autocite" "[{")
          ("Autocite" "[{")
          ("autocite*" "[{")
          ("Autocite*" "[{")
          ("autocites" "[{")
          ("Autocites" "[{")
          ;; Text commands.
          ("citeauthor" "[{")
          ("Citeauthor" "[{")
          ("citetitle" "[{")
          ("citetitle*" "[{")
          ("citeyear" "[{")
          ("citedate" "[{")
          ("citeurl" "[{")
          ;; Special commands.
          ("fullcite" "[{")
          ;; Cleveref.
          ("cref" "{")
          ("Cref" "{")
          ("cpageref" "{")
          ("Cpageref" "{")
          ("cpagerefrange" "{")
          ("Cpagerefrange" "{")
          ("crefrange" "{")
          ("Crefrange" "{")
          ("labelcref" "{"))
        font-latex-match-textual-keywords
        '(;; BibLaTeX brackets.
          ("parentext" "{")
          ("brackettext" "{")
          ("hybridblockquote" "[{")
          ;; Auxiliary commands.
          ("textelp" "{")
          ("textelp*" "{")
          ("textins" "{")
          ("textins*" "{")
          ;; Subcaption.
          ("subcaption" "[{"))
        font-latex-match-variable-keywords
        '(;; Amsmath.
          ("numberwithin" "{")
          ;; Enumitem.
          ("setlist" "[{")
          ("setlist*" "[{")
          ("newlist" "{")
          ("renewlist" "{")
          ("setlistdepth" "{")
          ("restartlist" "{")
          ("crefname" "{"))))

;; Adapted from Doom Emacs
(use-package auctex-latexmk
  :straight t
  :after latex
  :demand t
  :custom
  (auctex-latexmk-inherit-TeX-PDF-mode t)
  :config
  ;; Enable only if Latexmk is available
  (when (executable-find "latexmk")
    (setq-default
     TeX-command-list
     (cons
      '("LatexMk-2" "latexmk -shell-escape %(-PDF)%S%(mode) %(file-line-error) %(extraopts) %t" TeX-run-latexmk nil
        (plain-tex-mode latex-mode doctex-mode) :help "Run LatexMk with shell-escape")
      TeX-command-list))

    (add-hook
     'LaTeX-mode-hook
     (defun +tex--set-latexmk-as-default-cmd-h ()
       (setq TeX-command-default "LatexMk-2")))

    ;; Add LatexMk as a TeX target.
    (auctex-latexmk-setup)))

(use-package me-latex-fonts
  :after latex
  :demand t)


(provide 'me-latex)

;;; me-latex.el ends here
