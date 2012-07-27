;;; ui.el --- UI settings.

;; don't show startup message
(setq inhibit-startup-message t)

;; hide toolbar
(tool-bar-mode -1)

;; set font to Courier New, 9pt
(set-face-attribute 'default nil :height 90)

(provide 'ui)
