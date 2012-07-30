;;; init.el --- emacs settings entry point.
;;
;; Copyright (c) 2012 Alexander Dymo

;; add current dir to emacs load path
(add-to-list 'load-path (file-name-directory load-file-name) "emacs.d dir")

;; settings
(require 'ui)
(require 'editor)
