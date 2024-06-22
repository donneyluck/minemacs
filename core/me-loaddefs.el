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


;;; Generated autoloads from ../modules/extras/me-cocogitto.el

(autoload '+cocogitto-bump "../modules/extras/me-cocogitto" "\
Bump version LEVEL (`auto', `major', `minor' or `patch'), and with PRE if it
is a pre-release.

This command stashes the current workspace before bumping the version, and
restores it after that.

(fn LEVEL &optional PRE)" t)
(register-definition-prefixes "../modules/extras/me-cocogitto" '("+cocogitto-buffer-name"))


;;; Generated autoloads from ../modules/extras/me-eglot-ltex.el

(put 'eglot-ltex-language 'safe-local-variable 'stringp)
(register-definition-prefixes "../modules/extras/me-eglot-ltex" '("eglot-ltex-"))


;;; Generated autoloads from me-external-tools.el

(register-definition-prefixes "me-external-tools" '("minemacs-external-dependencies"))


;;; Generated autoloads from ../modules/extras/me-gdb.el

(autoload '+gdb-set-layout "../modules/extras/me-gdb" "\
Enable custom window layout for gdb." t)
(autoload '+emacs-gdb-enable "../modules/extras/me-gdb" "\
Load a faster \"gdb\" command from \"emacs-gdb\".
This will overwrite the built-in \"gdb-mi\" for this session." t)
(register-definition-prefixes "../modules/extras/me-gdb" '("+gdb-"))


;;; Generated autoloads from me-lib.el

(register-definition-prefixes "me-lib" '("+a" "+binary-hexl-enable" "+c" "+d" "+e" "+f" "+hook-once" "+i" "+known-scripts" "+l" "+m" "+n" "+omap!" "+p" "+quoted-p" "+r" "+s" "+un" "+v" "+with-" "minemacs-"))


;;; Generated autoloads from me-lib-extra.el

(autoload '+deferred-when! "me-lib-extra" "\
Like `+deferred!', with BODY executed only if CONDITION is non-nil.

(fn CONDITION &rest BODY)" nil t)
(function-put '+deferred-when! 'lisp-indent-function 1)
(autoload '+deferred-unless! "me-lib-extra" "\
Like `+deferred!', with BODY executed only if CONDITION is nil.

(fn CONDITION &rest BODY)" nil t)
(function-put '+deferred-unless! 'lisp-indent-function 1)
(autoload '+lazy-when! "me-lib-extra" "\
Like `+lazy!', with BODY executed only if CONDITION is non-nil.

(fn CONDITION &rest BODY)" nil t)
(function-put '+lazy-when! 'lisp-indent-function 1)
(autoload '+lazy-unless! "me-lib-extra" "\
Like `+lazy!', with BODY executed only if CONDITION is nil.

(fn CONDITION &rest BODY)" nil t)
(function-put '+lazy-unless! 'lisp-indent-function 1)
(autoload '+hook-with-delay! "me-lib-extra" "\
Add the FUNCTION to the value of HOOK.
The FUNCTION is delayed to be evaluated in SECS once HOOK is
triggered.
DEPTH and LOCAL are passed as is to `add-hook'.

(fn HOOK SECS FUNCTION &optional DEPTH LOCAL)" nil t)
(autoload 'minemacs-run-build-functions "me-lib-extra" "\
Run all build functions in `minemacs-build-functions'.

Call functions without asking when DONT-ASK-P is non-nil.

(fn &optional DONT-ASK-P)" t)
(autoload 'minemacs--bump-packages "me-lib-extra" "\
Bump MinEmacs packages to the latest revisions.")
(autoload 'minemacs-bump-packages "me-lib-extra" "\
Update MinEmacs packages to the last revisions (can cause breakages)." t)
(autoload 'minemacs-restore-locked-packages "me-lib-extra" "\
Restore lockfile packages list. Takes into account the pinned ones.
When called with \\[universal-argument] or with RESTORE-FROM-BACKUP, it will
restore the lockfile from backups, not Git.

(fn RESTORE-FROM-BACKUP)" t)
(autoload 'minemacs-upgrade "me-lib-extra" "\
Upgrade MinEmacs and its packages to the latest pinned versions (recommended).

When PULL-MINEMACS is non-nil, run a \"git pull\" in MinEmacs' directory.

This calls `minemacs-update-restore-locked' asynchronously.

(fn PULL-MINEMACS)" t)
(autoload '+minemacs-root-dir-cleanup "me-lib-extra" "\
Cleanup MinEmacs' root directory.")
(autoload '+straight-prune-build-cache "me-lib-extra" "\
Prune straight.el build directories for old Emacs versions.")
(autoload '+minemacs-cleanup-emacs-directory "me-lib-extra" "\
Cleanup unwanted files/directories from MinEmacs' directory." t)
(autoload 'minemacs-apply-performance-tweaks "me-lib-extra" "\
Set some Emacs variables for better (!) performance." t)
(autoload '+file-mime-type "me-lib-extra" "\
Get MIME type for FILE based on magic codes provided by the \"file\" command.
Return a symbol of the MIME type, ex: `text/x-lisp', `text/plain',
`application/x-object', `application/octet-stream', etc.

(fn FILE)")
(autoload '+file-name-incremental "me-lib-extra" "\
Return a unique file name for FILENAME.
If \"file.ext\" exists, returns \"file-0.ext\".

(fn FILENAME)")
(autoload '+directory-root-containing-file "me-lib-extra" "\
Return the path containing a file from FILES starting from START-PATH.

(fn FILES &optional START-PATH)")
(autoload '+delete-this-file "me-lib-extra" "\
Delete PATH.

If PATH is not specified, default to the current buffer's file.

If FORCE-P, delete without confirmation.

(fn &optional PATH FORCE-P)" t)
(autoload '+delete-file-or-directory "me-lib-extra" "\
Delete FILE-OR-DIRECTORY with `delete-file' or `delete-directory'.

Move to trash when TRASH is non-nil, delete directories recursively when
RECURSIVE is non-nil.

(fn FILE-OR-DIRECTORY &optional TRASH RECURSIVE)")
(autoload '+delete-this-file-and-buffer "me-lib-extra" "\
Delete FILENAME and its associated visiting buffer.

(fn &optional FILENAME)" t)
(autoload '+tramp-sudo-file-path "me-lib-extra" "\
Construct a Tramp sudo path to FILE. Works for both local and remote files.

(fn FILE)")
(autoload '+sudo-find-file "me-lib-extra" "\
Open FILE as root.

(fn FILE)" t)
(autoload '+sudo-this-file "me-lib-extra" "\
Open the current file as root." t)
(autoload '+sudo-save-buffer "me-lib-extra" "\
Save this buffer as root. Save as new file name if called with prefix." t)
(autoload '+yank-this-file-name "me-lib-extra" "\
Yank the file name of this buffer." t)
(autoload '+clean-file-name "me-lib-extra" "\
Clean FILENAME, optionally convert to DOWNCASE-P.

(fn FILENAME &optional DOWNCASE-P)")
(autoload '+html2pdf "me-lib-extra" "\
Convert HTML file INFILE to PDF and save it to OUTFILE.
When BACKEND is provided, the corresponding program is used, otherwise, the
value of `+html2pdf-default-backend' is used.

(fn INFILE OUTFILE &optional BACKEND)")
(autoload '+txt2html "me-lib-extra" "\
Convert plain-text file INFILE to HTML and save it to OUTFILE.
When MAIL-MODE-P is non-nil, --mailmode is passed to \"txt2html\".

(fn INFILE OUTFILE &optional MAIL-MODE-P)")
(autoload '+save-as-pdf "me-lib-extra" "\
Save URL as PDF.
This function's signature is compatible with `browse-url-browser-function'
so it can be used to save HTML pages or emails to PDF.
When MAIL-MODE-P is non-nil, treat INFILE as a mail.

(fn INFILE &optional MAIL-MODE-P)")
(autoload '+single-file "me-lib-extra" "\
Save URL into OUT-FILE as a standalone HTML file.

(fn URL OUT-FILE)" t)
(autoload '+serial-running-p "me-lib-extra" "\
Is there a serial port terminal running?")
(autoload '+serial-run-commands "me-lib-extra" "\
Run COMMANDS on a device via serial communication.

If PORT or BAUD are nil, use values from `+serial-port' and `+serial-baudrate'.

(fn COMMANDS &optional PORT BAUD)" t)
(autoload '+net-get-ip-address "me-lib-extra" "\
Get the IP-address for device DEV (default: eth0) of the current machine.

(fn &optional DEV)")
(autoload '+github-latest-release "me-lib-extra" "\
Get the latest release of REPO. Strips the \"v\" at left.

Fallback to FALLBACK-RELEASE when it can't get the last one.

(fn REPO &optional FALLBACK-RELEASE)")
(autoload '+dir-locals-reload-for-this-buffer "me-lib-extra" "\
Reload directory-local for the current buffer." t)
(autoload '+dir-locals-reload-for-all-buffers-in-this-directory "me-lib-extra" "\
Reload dir-locals for all buffers in the current `default-directory'." t)
(autoload '+dir-locals-toggle-autoreload "me-lib-extra" "\
Toggle autoloading dir-local variables after editing the \".dir-locals\" file.

If ENABLE is non-nil, force enabling autoreloading.

(fn &optional ENABLE)" t)
(autoload '+dir-locals-open-or-create "me-lib-extra" "\
Open or create the dir-locals.el for the current project." t)
(autoload '+what-faces "me-lib-extra" "\
Get the font faces at POS.

(fn POS)" t)
(autoload '+screenshot-svg "me-lib-extra" "\
Save a screenshot of the current frame as an SVG image to OUTFILE.

If launched with a prefix or universal argument, it waits for a moment (defined
by `+screenshot-delay') before taking the screenshot.

(fn OUTFILE)" t)
(autoload '+minibuffer-kill-minibuffer "me-lib-extra" "\
Kill the minibuffer when switching to window with mouse." t)
(autoload '+region-or-thing-at-point "me-lib-extra" "\
Return the region or the thing at point.

If LEAVE-REGION-MARKED is no-nil, don't call `desactivate-mark'
when a region is selected.

(fn &optional LEAVE-REGION-MARKED)")
(autoload '+kill-region-or-backward-word "me-lib-extra" "\
Kill selected region if region is active. Otherwise kill a backward word." t)
(autoload '+kill-whitespace-or-word "me-lib-extra" "\
Kill forward whitespace or word.
With argument ARG, do this that many times.
Restricts the effect of `kill-word' to the current line.

(fn ARG)" t)
(autoload '+backward-kill-whitespace-or-word "me-lib-extra" "\
Kill backward whitespace or word.
With argument ARG, do this that many times.
Restricts the effect of `backward-kill-word' to the current line.

(fn ARG)" t)
(autoload '+webjump "me-lib-extra" "\
Like `webjump', with initial query filled from `+region-org-thing-at-point'." t)
(autoload '+eglot-ccls-inheritance-hierarchy "me-lib-extra" "\
Show inheritance hierarchy for the thing at point.
If DERIVED is non-nil (interactively, with prefix argument), show
the children of class at point.

(fn &optional DERIVED)" t)
(autoload '+eglot-help-at-point "me-lib-extra" "\
Request documentation for the thing at point." t)
(autoload '+server-restart "me-lib-extra" "\
Restart the Emacs server." t)
(autoload '+binary-buffer-p "me-lib-extra" "\
Return whether BUFFER or the current buffer is binary.

A binary buffer is defined as containing at least one null byte.

Returns either nil, or the position of the first null byte.

(fn &optional BUFFER)")
(autoload '+binary-file-p "me-lib-extra" "\
Is FILE a binary?

This checks the first CHUNK of bytes, defaults to 1024.

(fn FILE &optional CHUNK)")
(autoload '+binary-hexl-buffer-p "me-lib-extra" "\
Does BUFFER (defaults to the current buffer) should be viewed using `hexl-mode'.

(fn &optional BUFFER)")
(autoload '+binary-hexl-mode-maybe "me-lib-extra" "\
Activate `hexl-mode' if relevant for the current buffer." t)
(autoload '+kill-buffer-and-its-windows "me-lib-extra" "\
Kill BUFFER and delete its windows.  Default is `current-buffer'.
BUFFER may be either a buffer or its name (a string).

(fn BUFFER &optional MSGP)" t)
(autoload '+region-to-buffer "me-lib-extra" "\
Copy region to BUFFER: At beginning (prefix >= 0), end (< 0), or replace.
START and END are the region boundaries.
BUFFER is a buffer or its name (a string).
With prefix ARG >= 0: `append-to-buffer':
  Append contents of region to end of BUFFER.
  (Point is moved to end of BUFFER first.)
With prefix ARG < 0:  `prepend-to-buffer':
  Prepend contents of region to beginning of BUFFER.
  (Point is moved to beginning of BUFFER first.)
With no prefix ARG (nil): `copy-to-buffer'.
  Write region to BUFFER, replacing any previous contents.

(fn START END BUFFER ARG)" t)
(autoload '+region-to-file "me-lib-extra" "\
With prefix arg, this is `append-to-file'.  Without, it is `write-region'.
START and END are the region boundaries.
Prefix ARG non-nil means append region to end of file FILENAME.
Prefix ARG nil means write region to FILENAME, replacing contents.

(fn START END FILENAME ARG)" t)
(autoload '+kill-some-buffers "me-lib-extra" "\
Kill some buffers.  Asks the user whether to kill the modified ones.
Non-interactively, if optional argument LIST is non-nil, it
specifies the list of buffers to kill, asking for approval for each one.
See `kill-some-buffers'.

(fn &optional LIST)" t)
(autoload '+kill-buffer-ask-if-modified "me-lib-extra" "\
Like `kill-buffer-ask', but kills BUFFER without confirmation when unmodified.
Kill without asking for buffer names in `+kill-buffer-no-ask-list'.

(fn BUFFER)")
(autoload '+delete-extra-windows-for-buffer "me-lib-extra" "\
Delete all other windows showing the selected window's buffer." t)
(autoload '+delete-window-maybe-kill-buffer "me-lib-extra" "\
Delete selected window.
If no other window shows its buffer, kill the buffer too." t)
(autoload '+replace-in-buffer "me-lib-extra" "\
Replace OLD with NEW in the current buffer.

(fn OLD NEW)")
(autoload '+clear-frenchy-ponctuations "me-lib-extra" "\
Replace french ponctuations (like unsectable space) by regular ones." t)
(autoload '+kill-region-as-paragraph "me-lib-extra" "\
Kill (copy) region as one paragraph.
This command removes new line characters between lines." t)
(autoload '+first-line-empty-p "me-lib-extra" "\
Return t when the first line of the buffer is empty.")
(autoload '+project-add-project "me-lib-extra" "\
Switch to another project at DIR.
When DIR is not detected as a project, ask to force it to be by adding a
\".project.el\" file. When DONT-ASK is non-nil, create the file without asking.

(fn DIR &optional DONT-ASK)" t)
(autoload '+project-forget-zombie-projects "me-lib-extra" "\
Forget all known projects that don't exist any more.

Like `project-forget-zombie-projects', but handles remote projects differently,
it forget them only when we are sure they don't exist." t)
(autoload '+project-gdb "me-lib-extra" "\
Invoke `gdb' in the project's root." t)
(autoload '+project-list-cleanup "me-lib-extra" "\
Forget all duplicate known projects (/home/user/proj, ~/proj)." t)
(autoload '+xref-find-references-at-point "me-lib-extra" "\
Find references to the identifier at or around point." t)
(autoload '+systemd-running-p "me-lib-extra" "\
Check if the systemd SERVICE is running.

(fn SERVICE)")
(autoload '+systemd-command "me-lib-extra" "\
Call systemd with COMMAND and SERVICE.

(fn SERVICE COMMAND &optional PRE-FN POST-FN)")
(autoload '+systemd-start "me-lib-extra" "\
Start systemd SERVICE. Optionally run PRE-FN and POST-FN.

(fn SERVICE &optional PRE-FN POST-FN)")
(autoload '+systemd-stop "me-lib-extra" "\
Stops the systemd SERVICE. Optionally run PRE-FN and POST-FN.

(fn SERVICE &optional PRE-FN POST-FN)")
(autoload '+list-external-dependencies "me-lib-extra" "\
Show the list of declared external dependencies." t)
(register-definition-prefixes "me-lib-extra" '("+dir-locals--autoreload-" "+eglot--help-buffer" "+html2pdf-" "+kill-buffer-no-ask-list" "+net-default-device" "+s" "+webjump-read-string-"))


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


;;; Generated autoloads from minemacs-lazy.el

(register-definition-prefixes "minemacs-lazy" '("minemacs--lazy-"))


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
