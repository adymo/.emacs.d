;;; editor.el --- editor settings.

;; scrolling:
;; -step and -conservatively: when you scroll too fast, emacs will not try to center cursor
;; -margin: autoscroll when pointer is too close to the top/bottom
(setq scroll-step 1
    scroll-conservatively 10000
    scroll-margin 5)
;; Page down/up move the point to the beginning or end of the buffer
(defun my-scroll-up ()
    (interactive)
    (condition-case nil (scroll-up)
      (end-of-buffer (goto-char (point-max)))))
(defun my-scroll-down ()
    (interactive)
    (condition-case nil (scroll-down)
      (beginning-of-buffer (goto-char (point-min)))))
(global-set-key [next] 'my-scroll-up)
(global-set-key (kbd "C-v") 'my-scroll-up)
(global-set-key [prior] 'my-scroll-down)
(global-set-key (kbd "M-v") 'my-scroll-down)

(provide 'editor)
