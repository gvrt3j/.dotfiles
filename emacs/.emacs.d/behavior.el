;;; -*- lexical-binding: t -*-

;;; behavior.el - Settings regarding behavior not tied to packages.

;; Set utf-8 encoding.
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Don't clutter the project dir with backups or lockfiles.
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))
(setq auto-save-file-name-transforms
      `((".*" ,(concat user-emacs-directory "backups") t)))
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
