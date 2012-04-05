(load "python.el")
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;; (require 'auto-complete)
(require 'lambda-mode)
(add-hook 'python-mode-hook #'lambda-mode 1)

(setq lambda-symbol (string (make-char 'greek-iso8859-7 107)))

(require 'comint)
(define-key comint-mode-map (kbd "M-") 'comint-next-input)
(define-key comint-mode-map (kbd "M-") 'comint-previous-input)
(define-key comint-mode-map [down] 'comint-next-matching-input-from-input)
(define-key comint-mode-map [up] 'comint-previous-matching-input-from-input)

(autoload 'pylookup-lookup "pylookup")
(autoload 'pylookup-update "pylookup")
(setq pylookup-program "~/.emacs.d/pylookup/pylookup.py")
(setq pylookup-db-file "~/.emacs.d/pylookup/pylookup.db")
(global-set-key "\C-ch" 'pylookup-lookup)

(autoload 'autopair-global-mode "autopair" nil t)
(autopair-global-mode)
(add-hook 'lisp-mode-hook
          #'(lambda () (setq autopair-dont-activate t)))

(add-hook 'python-mode-hook
          #'(lambda ()
              (push '(?' . ?')
                    (getf autopair-extra-pairs :code))
              (setq autopair-handle-action-fns
                    (list #'autopair-default-handle-action
                          #'autopair-python-triple-quote-action))))

(add-to-list 'load-path "~/.emacs.d/vendor")
(progn (cd "~/.emacs.d/vendor")
       (normal-top-level-add-subdirs-to-load-path))
(load "pymacs-init.el")
