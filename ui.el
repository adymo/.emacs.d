;;; ui.el --- UI settings.

;; don't show startup message
(setq inhibit-startup-message t)

;; hide toolbar
(tool-bar-mode -1)

;; set font to Courier New, 9pt
(set-face-attribute 'default nil :height 90)

;; set window size:
;; width: 100 chars
(add-to-list 'default-frame-alist (cons 'width 100))
;; height: fit to screen height
(add-to-list 'default-frame-alist
    (cons 'height
        (/ (- (x-display-pixel-height) 50) (frame-char-height))))

(provide 'ui)
