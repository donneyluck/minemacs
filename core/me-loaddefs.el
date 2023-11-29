;;; me-loaddefs.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:



;;; Generated autoloads from ../elisp/ecryptfs.el

(autoload 'ecryptfs-toggle-mount-private "../elisp/ecryptfs" "\
Mount/Unmount eCryptfs' private directory." t)
(autoload 'ecryptfs-mount-private "../elisp/ecryptfs" "\
Mount eCryptfs' private directory." t)
(autoload 'ecryptfs-umount-private "../elisp/ecryptfs" "\
Unmount eCryptfs' private directory." t)
(register-definition-prefixes "../elisp/ecryptfs" '("ecryptfs-"))


;;; Generated autoloads from me-bootstrap.el

(autoload '+straight-prune-build-cache "me-bootstrap")


;;; Generated autoloads from ../modules/extras/me-cocogitto.el

(autoload '+cocogitto-bump "../modules/extras/me-cocogitto" "\
Bump version LEVEL (`auto', `major', `minor' or `patch'), and with PRE if it
is a pre-release.

This command stashes the current workspace before bumping the version, and
restores it after that.

(fn LEVEL &optional PRE)" t)
(register-definition-prefixes "../modules/extras/me-cocogitto" '("+cocogitto-buffer-name"))


;;; Generated autoloads from ../modules/extras/me-dap-utils.el

(autoload '+github-latest-release "../modules/extras/me-dap-utils" "\
Get the latest release of USER/REPO. Strips the \"v\" at left.

Fallback to FALLBACK-RELEASE when it can't get the last one.

(fn USER REPO &optional FALLBACK-RELEASE)")


;;; Generated autoloads from ../modules/extras/me-eglot-ltex.el

(put 'eglot-ltex-language 'safe-local-variable 'stringp)
(register-definition-prefixes "../modules/extras/me-eglot-ltex" '("eglot-ltex-"))


;;; Generated autoloads from me-fonts.el

(autoload '+setup-fonts "me-fonts" "\
Setup fonts." t)
(register-definition-prefixes "me-fonts" '("+apply-font-or-script" "+f" "+known-scripts" "minemacs-fonts-plist"))


;;; Generated autoloads from ../modules/extras/me-gdb.el

(autoload '+gdb-set-layout "../modules/extras/me-gdb" "\
Enable custom window layout for gdb." t)
(autoload '+emacs-gdb-enable "../modules/extras/me-gdb" "\
Load a faster \"gdb\" command from \"emacs-gdb\".
This will overwrite the built-in \"gdb-mi\" for this session." t)
(register-definition-prefixes "../modules/extras/me-gdb" '("+gdb-"))


;;; Generated autoloads from me-lib.el

(register-definition-prefixes "me-lib" '("+a" "+binary-" "+c" "+d" "+e" "+f" "+h" "+i" "+kill-" "+l" "+m" "+n" "+omap!" "+p" "+quoted-p" "+r" "+s" "+t" "+un" "+v" "+w" "+yank-this-file-name" "minemacs-" "objdump-disassemble-mode"))


;;; Generated autoloads from me-modules.el

(register-definition-prefixes "me-modules" '("minemacs-"))


;;; Generated autoloads from ../modules/extras/me-mu4e-extras.el

(register-definition-prefixes "../modules/extras/me-mu4e-extras" '("+mu4e-" "+org-msg-make-signature"))


;;; Generated autoloads from ../modules/extras/me-mu4e-gmail.el

(register-definition-prefixes "../modules/extras/me-mu4e-gmail" '("+mu4e-"))


;;; Generated autoloads from ../modules/extras/me-mu4e-ui.el

(register-definition-prefixes "../modules/extras/me-mu4e-ui" '("+mu4e-"))


;;; Generated autoloads from ../modules/extras/me-org-extras.el

(register-definition-prefixes "../modules/extras/me-org-extras" '("+org-"))


;;; Generated autoloads from ../modules/extras/me-realgud.el

(autoload '+realgud:start "../modules/extras/me-realgud" "Start the RealGUD debugger suitable for the current mode." t)
(autoload '+realgud:toggle-breakpoint "../modules/extras/me-realgud" "Toggle break point." t)
(autoload '+realgud-hydra/body "../modules/extras/me-realgud" "Hydra keys for RealGUD." t)
(register-definition-prefixes "../modules/extras/me-realgud" '("+realgud:cmd-"))


;;; Generated autoloads from ../modules/extras/me-spell-fu.el

(autoload '+spell-fu-correct "../modules/extras/me-spell-fu" "\
Correct spelling of word at point." t)
(autoload '+spell-fu-register-dictionaries! "../modules/extras/me-spell-fu" "\
Register dictionaries for `LANGS` to spell-fu's multi-dict.

(fn &rest LANGS)" nil t)
(register-definition-prefixes "../modules/extras/me-spell-fu" '("+spell-fu--"))


;;; Generated autoloads from me-splash.el

(register-definition-prefixes "me-splash" '("minemacs-splash"))


;;; Generated autoloads from me-vars.el

(register-definition-prefixes "me-vars" '("+env-" "+load" "emacs/features" "minemacs-" "os/" "sys/arch"))


;;; Generated autoloads from ../modules/extras/me-writing-mode.el

(autoload '+writing-mode "../modules/extras/me-writing-mode" "\
A mode for writing without distraction.

This is a minor mode.  If called interactively, toggle the
`+Writing mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `+writing-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(put '+writing-global-mode 'globalized-minor-mode t)
(defvar +writing-global-mode nil "\
Non-nil if +Writing-Global mode is enabled.
See the `+writing-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `+writing-global-mode'.")
(custom-autoload '+writing-global-mode "../modules/extras/me-writing-mode" nil)
(autoload '+writing-global-mode "../modules/extras/me-writing-mode" "\
Toggle +Writing mode in all buffers.
With prefix ARG, enable +Writing-Global mode if ARG is positive; otherwise,
disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

+Writing mode is enabled in all buffers where `+turn-on-writing-mode' would do
it.

See `+writing-mode' for more information on +Writing mode.

(fn &optional ARG)" t)
(register-definition-prefixes "../modules/extras/me-writing-mode" '("+turn-on-writing-mode" "+writing-"))


;;; Generated autoloads from ../elisp/netextender.el

(autoload 'netextender-start "../elisp/netextender" "\
Launch a NetExtender VPN session." t)
(autoload 'netextender-toggle "../elisp/netextender" "\
Toggle connection to NetExtender." t)
(register-definition-prefixes "../elisp/netextender" '("netextender-"))


;;; Generated autoloads from ../elisp/valgrind.el

(autoload 'valgrind "../elisp/valgrind" "\
Run valgrind.
Runs a shell COMMAND in a separate process asynchronously with output going to
the buffer `*valgrind*'.
You can then use the command \\[next-error] to find the next error message and
move to the source code that caused it.

(fn COMMAND)" t)
(register-definition-prefixes "../elisp/valgrind" '("valgrind-"))

;;; End of scraped data

(provide 'me-loaddefs)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8
;; End:

;;; me-loaddefs.el ends here
