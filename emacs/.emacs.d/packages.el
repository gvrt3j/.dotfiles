;;; -*- lexical-binding: t -*-

;;; packages.el - Extra functionality not bundled with emacs (maybe).

(require 'package)

(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; Install use-package if not installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Load it
(require 'use-package)

;;; LOAD AND CONFIGURE PACKAGES ;;;

(when window-system
  (use-package xresources-theme
    :ensure t))
