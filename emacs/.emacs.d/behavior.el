;;; -*- lexical-binding: t -*-

;;; behavior.el - Settings regarding behavior not tied to packages.

;; Set utf-8 encoding.
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Don't clutter the project dir with backups or lockfiles.
(defconst gurtej/backup-dir "~/.emacs.d/backups")
(setq backup-directory-alist
      `((".*" . ,gurtej/backup-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,gurtej/backup-dir t)))
(setq create-lockfiles nil)

;; Save undo history.
(eval-when-compile
  (defvar undo-tree-auto-save-history)
  (defvar undo-tree-history-directory-alist))
(setq undo-tree-auto-save-history t)
(setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))

;; Shut up.
(setq large-file-warning-threshold nil)

;; Tab settings.
(setq standard-indent 4)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)

;; Tabs instead of spaces..
(setq-default indent-tabs-mode t)

;; Follow symlinks when using version control.
(setq vc-follow-symlinks t)

(setq sentence-end-double-space nil)

(eval-when-compile
  (defvar c-default-style))
(setq c-default-style
      '((java-mode . "java")
        (awk-mode . "awk")
        (other . "k&r")))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            ;; Use spaces, not tabs.
            (setq indent-tabs-mode nil)
            (setq tab-stop-list (number-sequence 4 120 4))))

(add-hook 'c-mode-common-hook
          (lambda ()
            (c-set-offset 'inextern-lang 0)))

;; Turn switch-to-buffer into ibuffer
(global-set-key (kbd "C-x b") 'ibuffer)
(setq ibuffer-expert t)

;; Turn list-buffers into ido-switch-buffer
(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

;; ido-mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
