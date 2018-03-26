;;; -*- lexical-binding: t -*-

;;; aesthetics.el - A E S T H E T I C

;; Reclaim precious screen space.
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(when (boundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Waste precious screen space.
(add-to-list 'default-frame-alist '(internal-border-width . 12))

;; Modeline.
(setq line-number-mode t)
(setq column-number-mode t)

;; Custom themes are safe.
(setq custom-safe-themes t)
