;;; -*- lexical-binding: t -*-

;;; init.el - initialization file.

(package-initialize)

;; Compile elisp files in ~/.emacs.d directory.
(byte-recompile-directory user-emacs-directory 0)

;; Redirect 'Customize' options to a separate file.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; Include configuration files.
(load "~/.emacs.d/packages")
(load "~/.emacs.d/behavior")
(load "~/.emacs.d/aesthetics")
