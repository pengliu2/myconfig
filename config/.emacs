;;This configuration needs following elisps:
;;goto-last-change.el  setnu.el
;;browse-kill-ring.el  cygwin-mount.el      igrep.el             
;;color-moccur.el      dired-sort-map.el    erin.el
;;ecb                  muse
;;maxframe.el
;;git.le		    git-blame.el

;;ChangeLogs
;;11-07-2010	Peng Liu	Remove the Windows stuffs.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Automatical settings start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(case-fold-search t)
 '(compilation-scroll-output t)
 '(compilation-window-height 10)
 '(confirm-kill-emacs (quote y-or-n-p))
 '(dired-recursive-copies (quote top))
 '(dired-recursive-deletes (quote top))
 '(ediff-coding-system-for-read (quote raw-text))
 '(ediff-diff-options "-w")
 '(enable-recursive-minibuffers t)
 '(find-ls-option (quote ("-exec ls -ld {} \\;" . "-ld")) t)
 '(igrep-files-default nil)
 '(ispell-program-name "aspell")
 '(make-backup-files nil)
 '(mouse-avoidance-mode (quote banish) nil (avoid))
 '(shell-file-name "bash")
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify))
 '(transient-mark-mode t)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Automatical settings end
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(message "customizing GNU Emacs for Linux")
(setq load-path (cons "~/.elisp/" load-path))
(setq load-path (add-to-list 'load-path "~/usr/share/emacs/site-lisp/"))
(setq Info-default-directory-list (add-to-list 'Info-default-directory-list "/home/peng/usr/share/info/"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Editing Settings Start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq default-frame-alist (append (list
  '(top . 0)
  '(left . 0)
  '(width  . 100)  ; Width set to 100 characters
  '(height . 36)) ; Height set to 36 lines
  default-frame-alist)) 
(setq inhibit-startup-message 0)
(setq initial-scratch-message nil)
(setq tool-bar-mode -1)
(setq frame-title-format "Emacs - %S: %b %f")
(setq blink-cursor nil)
(put 'upcase-region 'disabled nil)
(setq read-quoted-char-radix 16)
(setq tramp-default-method "ssh")
(setq-default fill-column 80)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Editing Settings End
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Packages Start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(if peng-laptop
 (load-theme 'tsdh-dark t)
 (load-theme 'manoj-dark t)
 )

(require 'dired-sort-map)

(require 'rect)

(require 'color-moccur)

(require 'browse-kill-ring)

(require 'goto-last-change)

(require 'iswitchb)
(iswitchb-mode 1)
(setq iswitchb-default-method 'always-frame)

(require 'recentf)
(recentf-mode 1)

(require 'ispell)
(setq ispell-program-name "aspell")

;;(require 'session)
;;(add-hook 'after-init-hook 'session-initialize)

;;(when window-system
;;(require 'maxframe)
;;    (add-hook 'window-setup-hook 'maximize-frame t))

(require 'xgtags)

(require 'column-marker)

(column-number-mode 1)
(global-font-lock-mode t)

(require 'xcscope)
(setq cscope-do-not-update-database 1)

(setq byte-compile-warnings
      '(not obsolete))

(load "/home/a22543/.elisp/nxhtml/autostart.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Packages End
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autocompletion starts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(cond
;; ((string-match "linux" system-configuration)
;;  (load-file "~/.elisp/cedet-1.0pre7/common/cedet.el"))
;; ((string-match "nt[0-9]" system-configuration)
;;  (load-file "d:/elisp/cedet-1.0pre6/common/cedet.el"))
;; )
;;
;;(global-ede-mode 1)
;;
;;(semantic-load-enable-minimum-features)
;;(semantic-load-enable-code-helpers)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Don't work things
;;(semantic-gcc-setup "/home/a22543/repo_storage/Flintstone/prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin/arm-eabi-gcc")
;;(require 'semanticdb-global)
;;(setq cedet-global-command "/home/a22543/usr/local/bin/global")
;;(semanticdb-enable-gnu-global-databases 'c++-mode)
;;(semanticdb-enable-gnu-global-databases 'c-mode)
;;End of dont work things
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(cond
;; ((string-match "linux" system-configuration)
;;  (setq semantic-default-save-directory "~/.emacs.d/semanticdb")
;;  (setq semanticdb-project-roots (list "/home/a22543/repo_storage/Emerald/kernel" "/home/a22543/repo_storage/Endive/kernel"))
;;  (ede-linux-project "Emerald" :file "/home/a22543/repo_storage/Emerald/kernel/Makefile")
;;  )
;; ((string-match "nt[0-9]" system-configuration)
;;  (setq semantic-default-save-directory "d:/.emacs.d/semanticdb")
;;  (setq linux-kernel-base-dir "d:/sources/linux-2.6.21-logfs.patch.577")
;;  (semantic-add-system-include linux-kernel-base-dir 'c-mode)
;;  (add-to-list 'auto-mode-alist (cons linux-kernel-base-dir 'c-mode))
;;  (add-to-list 'semantic-lex-c-preprocessor-symbol-file (concat linux-kernel-base-dir "/include/config.h"))
;;(ede-cpp-root-project "template" 
;;                      :name "template"
;;                      :file "d:/workspaces/workspace_cpp/README"
;;                      :include-path '("/"
;;                                      "sharelibrary"
;;                                      )
;;                      :system-include-path '("/usr/include")
;;                      :spp-table '(("__KERNEL__" . "")
;;                                   ("NDEBUG" . ""))
;;                      )
;;  ))

;;(global-set-key [?\C ?\M ?/] 'semantic-complete-analyze-inline) 
;;(require 'semanticdb-global)
;;(semanticdb-enable-gnu-global-databases 'c-mode)
;;(semanticdb-enable-gnu-global-databases 'c++-mode)
(setq hippie-expand-try-functions-list
      '( try-expand-dabbrev
	 try-expand-dabbrev-visible
	 try-expand-dabbrev-all-buffers
	 try-expand-dabbrev-from-kill
	 try-complete-file-name-partially
	 try-complete-file-name
	 try-expand-all-abbrevs
	 try-expand-list
	 try-expand-line
	 try-complete-lisp-symbol-partially
	 try-complete-lisp-symbol))
(global-set-key [(meta ?/)] 'hippie-expand) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autocompletion end
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; intelligent grep starts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload (function igrep) "igrep"                                            
  "*Run `grep` PROGRAM to match EXPRESSION in FILES..." t)                   
(autoload (function igrep-find) "igrep"                                       
  "*Run `grep` via `find`..." t)                                             
(autoload (function dired-do-igrep) "igrep"                                   
  "*Run `grep` on the marked (or next prefix ARG) files." t)                 
(autoload (function dired-do-igrep-find) "igrep"                              
  "*Run `grep` via `find` on the marked (or next prefix ARG) directories." t)
(put 'igrep-files-default 'c-mode
     (lambda () "*.[ch]"))
(global-set-key [?\M-s ?g] 'igrep)
(global-set-key [?\M-s ?f] 'igrep-find)

(setq igrep-options "-I")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; intelligent grep ends
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; intelligent search starts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun isearch-yank-symbol ()
  "Put symbol at current point into search string."
  (let ((sym (symbol-at-point)))
    (if sym
	(isearch-yank-string (symbol-name sym))
      (message "No symbol at point."))))

(defun isearch-current-symbol ()
  (interactive)
  (isearch-forward nil 1)
  (isearch-yank-symbol))


(defun isearch-backward-current-symbol ()
  (interactive)
  (isearch-backward nil 1)
  (isearch-yank-symbol))

(global-set-key (kbd "M-s s") 'isearch-current-symbol)
(global-set-key (kbd "M-s r") 'isearch-backward-current-symbol)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; intelligent search ends
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; key bindings start

(setq mysearch-keymap (make-sparse-keymap))
(define-key mysearch-keymap "r" 'isearch-backward-current-symbol)
(define-key mysearch-keymap "s" 'isearch-current-symbol)
(define-key mysearch-keymap "g" 'igrep)
(define-key mysearch-keymap "f" 'igrep-find)
(define-key mysearch-keymap "m" 'moccur)

(define-key global-map "\C-cf" mysearch-keymap)

(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key [(meta g)] 'goto-line)
(global-set-key [(meta o)] 'other-window)

;;(global-set-key [(control f4)] 'bookmark-set)
;;(global-set-key [f4] 'bookmark-jump)

(global-set-key "\M-n" (lambda() (interactive)(scroll-up 1)))
(global-set-key "\M-p" (lambda() (interactive)(scroll-down 1)))

(setq scroll-step 1
      scroll-margin 3
      scroll-conservatively 10000000)

(defun switch-to-other-buffer () (interactive) (switch-to-buffer (other-buffer)))
(global-set-key [(control meta l)] 'switch-to-other-buffer)
(global-set-key [\C-\M-\tab] 'other-window)
(global-set-key "\C-w" 'clipboard-kill-region)
(global-set-key "\M-w" 'clipboard-kill-ring-save)
(global-set-key "\C-y" 'clipboard-yank)
(global-set-key "\C-h" 'delete-backward-char)
;; key bindings end
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Programming Goodies and Mode Hooks Start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(which-func-mode 1)

(eval-after-load "which-func"
      '(add-to-list 'which-func-modes 'java-mode))
(eval-after-load "which-func"
      '(add-to-list 'which-func-modes 'python-mode))
(eval-after-load "which-func"
      '(add-to-list 'which-func-modes 'perl-mode))


(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-style "stroustrup")
             (outline-minor-mode)
;;             (local-set-key "." 'semantic-complete-self-insert)
;;             (local-set-key ">" 'semantic-complete-self-insert) 
	     (define-key c++-mode-map "\C-cc" 'compile)
	     (xgtags-mode 1)
             ))

(defun c-lineup-arglist-tabs-only (ignored)
  "Line up argument lists by tabs, not spaces"
  (let* ((anchor (c-langelem-pos c-syntactic-element))
         (column (c-langelem-2nd-pos c-syntactic-element))
         (offset (- (1+ column) anchor))
         (steps (floor offset c-basic-offset)))
    (* (max steps 1)
       c-basic-offset)))

(add-hook 'c-mode-common-hook
          (lambda ()
            ;; Add kernel style
            (setq tab-width 8)
            (c-add-style
             "linux-tabs-only"
             '("linux" (c-offsets-alist
                        (arglist-cont-nonempty
                         c-lineup-gcc-asm-reg
                         c-lineup-arglist-tabs-only)))))
	  )
(add-hook 'c-mode-hook
	  '(lambda ()
	     (outline-minor-mode)
	     (xgtags-mode 1)
;;	     (local-set-key "." 'semantic-complete-self-insert)
;;	     (local-set-key ">" 'semantic-complete-self-insert) 
	     (define-key c-mode-map "\C-cc" 'compile)
	     (setq indent-tabs-mode t)
	     (c-set-style "linux-tabs-only")
         ))


(add-hook 'text-mode-hook
	  '(lambda ()
	     (outline-minor-mode)
	     (column-number-mode 1)
	     (line-number-mode 1)
))

(add-hook 'java-mode-hook
	  '(lambda ()
	     (define-key java-mode-map "\C-cc" 'compile)
	     (outline-minor-mode)
	     (xgtags-mode 1)
	     ))

(add-hook 'sh-mode-hook
	  '(lambda ()
	     (setq default-tab-width 4)
	     (setq-default indent-tabs-mode nil)
         (define-key sh-mode-map "\C-cx" 'semantic-symref)
         ))

(add-hook 'Info-mode-hook
          '(lambda ()
             (define-key Info-mode-map [(meta n)] '(lambda() (interactive)(scroll-up 1)))
             (define-key Info-mode-map [(meta p)] '(lambda() (interactive)(scroll-down 1)))))

(add-hook 'c-mode-hook
	  (lambda ()
	    (interactive) (column-marker-3 80)))

(add-hook 'java-mode-hook
	  (lambda ()
	    (interactive) (column-marker-3 80)))

(add-hook 'c++-mode-hook
	  (lambda ()
	    (interactive) (column-marker-3 80)))

(add-hook 'sh-mode-hook
	  (lambda ()
	    (interactive) (column-marker-3 80)))

(add-hook 'python-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil tab-width 4)
	    (interactive) (column-marker-3 80)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Programming Goodies and Mode Hooks End
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defun paren-dwim ()
  (interactive)
  (insert "{")
  (indent-according-to-mode)
  (newline)
  (newline)
  (insert "}")
  (indent-according-to-mode)
  (previous-line 1))
(global-set-key [(meta ?[)] 'paren-dwim)

(defun insert-function-head (purpose param retval remarks)
  (interactive "spurpose:\nsparam:\nsretval:\nsremarks")
  (insert (format "/*********************************************************************\\"))
  (indent-according-to-mode)
  (newline)
  (insert (format "* Purpose:	%s" purpose))
  (indent-according-to-mode)
  (newline)
  (insert (format "* Params:	%s" param))
  (indent-according-to-mode)
  (newline)
  (insert (format "* Retval:	%s" retval))
  (indent-according-to-mode)
  (newline)
  (insert (format "* Remarks:	%s" remarks))
  (indent-according-to-mode)
  (newline)
  (insert (format "*********************************************************************/"))
  (indent-according-to-mode))

(defun insert-file-head (filename year)
  (interactive "sfilename:\nsyear:")
  (insert (format "/**  \\file syspanic.c\n"))
  (insert (format "\\brief This file contains the source to the syspanic kernel driver\n"))
  (insert (format "     \\if INCLUDE_LICENSE_SECTION\n"))
  (insert (format "      * Copyright (C) %s Motorola, Inc.\n" year))
  (insert (format "      * This program is free software; you can redistribute it\n"))
  (insert (format "      * and/or modify it under the terms of the GNU General\n"))
  (insert (format "      * Public License as published by the Free Software\n"))
  (insert (format "      * Foundation; either version 2 of the License, or (at\n"))
  (insert (format "      * your option) any later version.  You should have\n"))
  (insert (format "      * received a copy of the GNU General Public License\n"))
  (insert (format "      * along with this program; if not, write to the Free\n"))
  (insert (format "      * Software Foundation 51 Franklin Street, Fifth Floor\n"))
  (insert (format "      * Boston, MA 02110-1301 USA\n"))
  (insert (format "      \\endif              \n"))
  (insert (format "                          \n"))
  (insert (format "                          \n"))
  (insert (format "\\if MOTOROLA_CONFIDENTIAL_PROPRIETARY\n"))
                  
  (insert (format "====================================================================================================\n"))
                  
  (insert (format "                              Motorola Confidential Proprietary\n"))
  (insert (format "                                    Template version 1.1\n"))
  (insert (format "                       Copyright 2007 Motorola, Inc.  All Rights Reserved.\n"))
                  
  (insert (format "Internal Revision History:\n"))
  (insert (format "                            Modification     Tracking\n"))
  (insert (format "Author                          Date          Number     Description of Changes\n"))
  (insert (format "-------------------------   ------------    ----------   -------------------------------------------\n"))
  (insert (format "\n"))
  (insert (format "\n                        "))
  (insert (format "\\endif\n\n                "))
  (insert (format "<tt>\n"))
  (insert (format "*/\n\n"))
  (indent-according-to-mode)
  )

(defun count-words-region (beginning end)
  "Print number of words in the region."
  (interactive "r")
  (message "Counting words in region ... ")
  
  (save-excursion
    (let ((count 0))
      (goto-char beginning)
      (while (and (< (point) end)
		  (re-search-forward "\\w+\\W*" end t))
	(setq count (1+ count)))
      (cond ((zerop count)
	     (message
	      "The region does NOT have any words."))
	    ((= 1 count)
	     (message
	      "The region has 1 word."))
	    (t
	     (message
	      "The region has %d words." count))))))


(defun geosoft-kill-buffer ()
  ;; Kill default buffer without the extra emacs questions
  (interactive)
  (kill-buffer (buffer-name))
)

(defun undo-kill-buffer (arg)
  "Re-open the last buffer killed.  With ARG, re-open the nth buffer."
  (interactive "p")
  (let ((recently-killed-list (copy-sequence recentf-list))
	 (buffer-files-list
	  (delq nil (mapcar (lambda (buf)
			      (when (buffer-file-name buf)
				(expand-file-name (buffer-file-name buf)))) (buffer-list)))))
    (mapc
     (lambda (buf-file)
       (setq recently-killed-list
	     (delq buf-file recently-killed-list)))
     buffer-files-list)
    (find-file
     (if arg (nth arg recently-killed-list)
       (car recently-killed-list)))))

(when (and (equal emacs-major-version 24)
           (equal emacs-minor-version 2))
  (eval-after-load "mumamo"
    '(setq mumamo-per-buffer-local-vars
           (delq 'buffer-file-name mumamo-per-buffer-local-vars))))
