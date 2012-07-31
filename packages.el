;;; packages.el --- package repos and autoinstalled packages.

(require 'cl)
(require 'package)
(package-initialize)

;; automatically install these packages:
(defvar my-packages
    '(
        adaptive-wrap ;; kate-like line wrapping with indentation
    ))

;; install new packages and refresh package list only if
;; there are new packages to install
(defun my-packages-installed-p ()
    (loop for p in my-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (my-packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (dolist (p my-packages)
        (when (not (package-installed-p p))
            (package-install p))))

(provide 'packages)
