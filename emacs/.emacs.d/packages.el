;;; -*- lexical-binding: t -*-

;;; packages.el - extra functionality not bundled with emacs (maybe).

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

(use-package ivy
  :ensure t)

(use-package swiper
  :ensure t
  :bind ("C-s" . 'swiper))

(use-package smex
  :ensure t
  :init
  (smex-initialize)
  :bind
  ("M-x" . smex)
  ("M-X" . smex-major-mode-commands))

(use-package avy
  :ensure t
  :bind
  ("M-s" . avy-goto-char))
