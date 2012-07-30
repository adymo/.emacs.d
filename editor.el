;;; editor.el --- editor settings.

;; scrolling:
;; -step and -conservatively: when you scroll too fast, emacs will not try to center cursor
;; -margin: autoscroll when pointer is too close to the top/bottom
(setq scroll-step 1
    scroll-conservatively 10000
    scroll-margin 5)

(provide 'editor)
