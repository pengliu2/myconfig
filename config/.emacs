;;This configuration needs following elisps:
;;org	org-mobile-sync
;;goto-last-change.el
;;browse-kill-ring.el  igrep.el             
;;color-moccur.el
;;maxframe.el
;;magit		    git-blame.el
;;projectile
;; DropBox
;; xcscope
;; smex - M-x interface with Ido-style fuzzy matching.
;; zenburn-theme

;;ChangeLogs
;;04-09-2015	Peng Liu	Stop updating change logs because git does it all
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
 '(mouse-avoidance-mode (quote jump) nil (avoid))
;; '(shell-file-name "bash")
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify))
)
(transient-mark-mode 1)
(setq auto-save-default nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Automatical settings end
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; package.el starts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
(package-initialize)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; package.el ends
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Editing Settings Start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-scroll-bar-mode 'right)
(setq inhibit-startup-message 0)
(setq initial-scratch-message nil)
(setq tool-bar-mode nil)
(setq frame-title-format "Emacs - %S: %b %f")
(setq blink-cursor nil)
(put 'upcase-region 'disabled nil)
(setq read-quoted-char-radix 16)
(setq tramp-default-method "ssh")
(setq select-active-regions nil)

(ido-mode 1)
(global-font-lock-mode t)
(column-number-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Editing Settings End
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ido starts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'ido)
;; (ido-mode t)
; Use the current window when visiting files and buffers with ido
;;(setq ido-default-file-method 'selected-window)
;;(setq ido-default-buffer-method 'selected-window)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ido ends
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; projectile starts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(projectile-global-mode)
(setq projectile-indexing-method 'native)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; projectile ends
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; outline starts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Use meta O as outline mode prefix
(global-unset-key (kbd "M-o"))
(add-hook 'outline-minor-mode-hook
	  (lambda () (local-set-key (kbd "M-o")
				    outline-mode-prefix-map)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; outline ends
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-mode starts
;; http://doc.norang.ca/org-mode.html
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cl" 'org-store-link)

;;warn me of any deadlines in next 7 days
(setq org-deadline-warning-days 7)
;;don't give awarning colour to tasks with impending deadlines
;;if they are scheduled to be done
(setq org-agenda-skip-deadline-prewarning-if-scheduled (quote pre-scheduled))
;;don't show tasks that are scheduled
(setq org-agenda-todo-ignore-scheduled nil)

(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-deadline-if-done t)

;;sort tasks in order of when they are due and then by priority
(setq org-agenda-sorting-strategy
  (quote
   ((agenda deadline-up priority-down)
    (todo priority-down category-keep)
    (tags priority-down category-keep)
    (search category-keep))))
(setq org-catch-invisible-edits 1)
(setq org-agenda-window-setup 'current-window) 
(setq org-agenda-files (quote ("~/notes/gtd.org"
			       "~/notes/review.org"
			       "~/notes/life.org"
			       "~/notes/frommobile.org"
                   "~/notes/desktop.org"
			       "~/notes/projects"
			       ;;"~/notes/jobs"
                   "~/notes/work"
                   "~/notes/journal"
                   "~/notes/home"
			       )))

;; for org-journal
(setq org-agenda-file-regexp  "\\`[^.].*\\.org\\'\\|\\`[0-9]+\\'")
(setq org-journal-carryover-items "TODO=\"NEXT\"\|TODO=\"TODO\"")


(setq org-agenda-start-with-log-mode nil)
(setq org-log-done 'time)

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "sky blue" :weight bold)
              ("NEXT" :foreground "violet" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold)
              ("MEETING" :foreground "forest green" :weight bold)
              ("PHONE" :foreground "forest green" :weight bold))))

(setq org-use-fast-todo-selection t)
(setq org-treat-S-cursor-todo-selection-as-state-change nil)

(setq org-todo-state-tags-triggers
      (quote (("CANCELLED" ("CANCELLED" . t))
              ("WAITING" ("WAITING" . t))
              ("HOLD" ("WAITING") ("HOLD" . t))
              (done ("WAITING") ("HOLD"))
              ("TODO" ("WAITING") ("CANCELLED") ("HOLD"))
              ("NEXT" ("WAITING") ("CANCELLED") ("HOLD"))
              ("DONE" ("WAITING") ("CANCELLED") ("HOLD")))))

(setq org-directory "~/notes/")
(setq org-default-notes-file "~/notes/journal/note.org")

(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/notes/gtd.org")
               "* TODO %?\n%U\n")
              ("n" "note" entry (file "~/notes/journal/note.org")
               "* %? :NOTE:\n%U\n")
              )))

;; Customized Weekly Agenda
(setq org-agenda-custom-commands
      '(("W" "Weekly Review"
         ((agenda ""
                  ((org-agenda-start-on-weekday nil)
                   (org-agenda-start-day "-7d")
                   (org-agenda-span 14)
                   (org-agenda-skip-deadline-if-done nil)
                   (org-agenda-skip-scheduled-if-done nil)
                   )) ;; review upcoming deadlines and appointments
          ;; type "l" in the agenda to review logged items 
          ;;          (stuck "") ;; review stuck projects as designated by org-stuck-projects
          ;;          (todo "PROJECT") ;; review all projects (assuming you use todo keywords to designate projects)
          ;;          (todo "MAYBE") ;; review someday/maybe items
          (todo "NEXT" ((org-agenda-todo-ignore-scheduled (quote all))
                        (org-agenda-prefix-format '((agenda . " %i %-12:c%?-12t% s")
                                                     (timeline . "  % s")
                                                     (todo . " %i%l%l %-12:c")
                                                     (tags . " %i %-12:c")
                                                     (search . " %i %-12:c")))
                        )
                )
          (todo "WAITING" ((org-agenda-todo-ignore-scheduled (quote all)))
                )
          (todo "HOLD" ((org-agenda-todo-ignore-scheduled (quote all)))
                )
          ))
        ;; ...other commands here
        ("P" "Backlog View"
         ((alltodo "" ((org-agenda-todo-ignore-scheduled (quote all)))))
         )
        )
      )

;;;; Refile settings
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))
; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps nil)

; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))

(setq org-completion-use-ido t)
;(setq org-completion-use-iswitchb t)
; Use the current window for indirect buffer display
(setq org-indirect-buffer-display 'current-window)

; Exclude DONE state tasks from refile targets
(defun bh/verify-refile-target ()
  "Exclude todo keywords with a done state from refile targets"
  (not (member (nth 2 (org-heading-components)) org-done-keywords)))
(setq org-refile-target-verify-function 'bh/verify-refile-target)

(add-hook 'org-mode-hook
	  (lambda()
	    (local-set-key [(ctrl tab)] 'other-window)
	    )
      )

;; clocking
(setq org-clock-in-switch-to-state 'bh/clock-in-to-next)

(defun bh/is-project-p ()
  "Any task with a todo keyword subtask"
  (save-restriction
    (widen)
    (let ((has-subtask)
          (subtree-end (save-excursion (org-end-of-subtree t)))
          (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
      (save-excursion
        (forward-line 1)
        (while (and (not has-subtask)
                    (< (point) subtree-end)
                    (re-search-forward "^\*+ " subtree-end t))
          (when (member (org-get-todo-state) org-todo-keywords-1)
            (setq has-subtask t))))
      (and is-a-task has-subtask))))

(defun bh/is-task-p ()
  "Any task with a todo keyword and no subtask"
  (save-restriction
    (widen)
    (let ((has-subtask)
          (subtree-end (save-excursion (org-end-of-subtree t)))
          (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
      (save-excursion
        (forward-line 1)
        (while (and (not has-subtask)
                    (< (point) subtree-end)
                    (re-search-forward "^\*+ " subtree-end t))
          (when (member (org-get-todo-state) org-todo-keywords-1)
            (setq has-subtask t))))
      (and is-a-task (not has-subtask)))))

(defun bh/clock-in-to-next (kw)
  "Switch a task from TODO to NEXT when clocking in.
Skips capture tasks, projects, and subprojects.
Switch projects and subprojects from NEXT back to TODO"
  (when (not (and (boundp 'org-capture-mode) org-capture-mode))
    (cond
     ((and (member (org-get-todo-state) (list "TODO"))
           (bh/is-task-p))
      "NEXT")
     ((and (member (org-get-todo-state) (list "NEXT"))
           (bh/is-project-p))
      "TODO"))))

;;MobileOrg
(require 'org-mobile)
(setq org-mobile-inbox-for-pull "~/notes/frommobile.org")
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(define-key org-mode-map "\C-cp" 'org-mobile-pull)
(define-key org-agenda-mode-map "\C-cp" 'org-mobile-pull)

(require 'filenotify)
(require 'org-mobile-sync)
(org-mobile-sync-mode 1)

;;org-depend.el
;;(require 'org-depend)

;;showing time in org-src-mode
(defvar org-src-mode-entry-time)
(defun org-src-mode-print-elapse-time()
  ;;(message "path 2")
  (if (org-bound-and-true-p org-src-mode-entry-time)
      (progn
	(let ((res (format-seconds "H %M %z%S" (float-time (time-subtract (current-time) org-src-mode-entry-time)))))
	  (message "time: %s" res)
	  )
	)
    (progn
      ;;(message "variable not found")
      )
    )
  )

(defun my-org-edit-src-exit ()
  (interactive)
  (if (org-bound-and-true-p org-src-mode-entry-time)
      (progn
	(let ((res (format-seconds "H %M %z%S" (float-time (time-subtract (current-time) org-src-mode-entry-time)))))
	  (add-file-local-variable-prop-line 'edittime res nil)
	  )
	)
    (progn
      ;;(message "variable not found")
      )
    )
  (org-edit-src-exit)
  )

(defun org-src-mode-elapse-time ()
  ;;(message "called")
  (when (org-bound-and-true-p org-src--from-org-mode)
    ;;(message "path 1")
    (delete-file-local-variable-prop-line 'edittime nil)
    (setq org-src-mode-entry-time (current-time))
    (org-add-hook 'kill-buffer-hook 'org-src-mode-print-elapse-time nil 'local)
    (define-key org-src-mode-map "\C-c'" 'my-org-edit-src-exit)
    )
  )

(add-hook 'org-src-mode-hook 'org-src-mode-elapse-time)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-mode ends
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-journal starts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq org-journal-dir "~/notes/journal/")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-journal ends
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Cscope Starts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(cscope-setup)
(setq cscope-option-do-not-update-database 1)
;;(setq cscope-program "gtags-cscope")
(setq cscope-program "cscope")

(defun xcscope-select-entry-other-window-kill-buf()
  (interactive)
  (cscope-select-entry-other-window)
  (setq buf (get-buffer "*cscope*"))
  (if buf
      (kill-buffer buf))
  )

(define-key cscope-list-entry-keymap [return] 'xcscope-select-entry-other-window-kill-buf)
(define-key cscope-list-entry-keymap (kbd "RET") 'xcscope-select-entry-other-window-kill-buf)

(defun xcscope-select-entry-other-window-no-kill()
  (interactive)
  (cscope-select-entry-other-window)
)

(define-key cscope-list-entry-keymap (kbd "o") 'xcscope-select-entry-other-window-no-kill)
(define-key cscope-list-entry-keymap (kbd "M-p") (lambda() (interactive)(scroll-down 1)))
(define-key cscope-list-entry-keymap (kbd "M-n") (lambda() (interactive)(scroll-up 1)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Cscope Ends
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autocompletion and History starts
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

(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autocompletion and History end
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
(global-set-key [(ctrl tab)] 'other-window)

;;(global-set-key [(control f4)] 'bookmark-set)
;;(global-set-key [f4] 'bookmark-jump)

(global-set-key "\M-n" (lambda() (interactive)(scroll-up 1)))
(global-set-key "\M-p" (lambda() (interactive)(scroll-down 1)))

(setq scroll-step 1
      scroll-margin 3
      scroll-conservatively 10000000)

(defun switch-to-other-buffer () (interactive) (switch-to-buffer (other-buffer)))
(global-set-key "\C-\M-l" 'switch-to-other-buffer)
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
(eval-after-load "which-func"
  '(add-to-list 'which-func-modes 'c-mode))

(defun linux-c-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."
  (interactive)
  (c-mode)
  (setq c-indent-level 8)
  (setq c-brace-imaginary-offset 0)
  (setq c-brace-offset -8)
  (setq c-argdecl-indent 8)
  (setq c-label-offset -8)
  (setq c-continued-statement-offset 8)
  (setq indent-tabs-mode t)
  (setq tab-width 8))

(setq auto-mode-alist (cons '("/home/a22543/localrepo/[^/]+/kernel/.*\\.[ch]$" . linux-c-mode)
			    auto-mode-alist))

(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-style "stroustrup")
             (outline-minor-mode)
	     (define-key c++-mode-map "\C-ck" 'compile)
             ))

(add-hook 'c-mode-common-hook
          (lambda ()
	    (local-set-key  (kbd "C-c o") 'ff-find-other-file)))
(add-hook 'c-mode-hook
	  '(lambda ()
	     (define-key c-mode-map "\C-ck" 'compile)
	     (setq show-trailing-whitespace t)
         (column-number-mode 1)
         ))

(add-hook 'text-mode-hook
	  '(lambda ()
	     (outline-minor-mode)
	     (line-number-mode 1)
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

(add-hook 'python-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil tab-width 4)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Programming Goodies and Mode Hooks End
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; hacks on 24.2 start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (and (equal emacs-major-version 24)
           (equal emacs-minor-version 2))
  (eval-after-load "mumamo"
    '(setq mumamo-per-buffer-local-vars
           (delq 'buffer-file-name mumamo-per-buffer-local-vars))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; hacks on 24.2 ends
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; color theme settings start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-theme 'zenburn)
;;(setq sml/theme 'dark)
;;(setq sml/no-confirm-load-theme t)
;;(sml/setup)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; color theme settings end
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
;;(global-set-key [(meta ?[)] 'paren-dwim)

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

;; Reopen the last killed buffer
;; Source: http://stackoverflow.com/questions/10394213/emacs-reopen-previous-killed-buffer
(require 'cl)
(require 'recentf)
(recentf-mode 1)
(defun undo-kill-buffer ()
  (interactive)
  (let ((active-files (loop for buf in (buffer-list)
                            when (buffer-file-name buf) collect it)))
    (loop for file in recentf-list
          unless (member file active-files) return (find-file file))))

;;(defun undo-kill-buffer (arg)
;;  "Re-open the last buffer killed.  With ARG, re-open the nth buffer."
;;  (interactive "p")
;;  (let ((recently-killed-list (copy-sequence recentf-list))
;;	 (buffer-files-list
;;	  (delq nil (mapcar (lambda (buf)
;;			      (when (buffer-file-name buf)
;;				(expand-file-name (buffer-file-name buf)))) (buffer-list)))))
;;    (mapc
;;     (lambda (buf-file)
;;       (setq recently-killed-list
;;	     (delq buf-file recently-killed-list)))
;;     buffer-files-list)
;;    (find-file
;;     (if arg (nth arg recently-killed-list)
;;       (car recently-killed-list)))))
;;

