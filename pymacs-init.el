(add-to-list 'load-path "~/.emacs.d/vendor/Pymacs")
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(eval-after-load "pymacs" '(add-to-list 'pymacs-load-path "~/emacs.d/vendor/Pymacs"))
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

