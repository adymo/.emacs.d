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


;; kate-like line wrapping:
;; done by enabling adaptive-wrap minor mode in all buffers
;; globalized minor mode is required for this (hooks don't work)
(defun turn-on-adaptive-wrap-prefix-mode (&optional arg)
    (interactive)
    (adaptive-wrap-prefix-mode (or arg 1)))
(defun turn-off-adaptive-wrap-prefix-mode (&optional arg)
    (interactive)
    (adaptive-wrap-prefix-mode (or arg -1)))
(defun adaptive-wrap-initialize ()
    (unless (minibufferp)
        (progn
            (adaptive-wrap-prefix-mode 1)
            (setq word-wrap t))))
(define-globalized-minor-mode adaptive-wrap-mode
    adaptive-wrap-prefix-mode adaptive-wrap-initialize)
(adaptive-wrap-mode)


(provide 'editor)
