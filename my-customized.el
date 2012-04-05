(global-set-key "\C-l" 'goto-line)

(load "my-init.el")
(load "my-python-init.el")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "monotype" :family "monaco")))))

(global-set-key [f12] 'toggle-truncate-lines)

(require 'color-theme)
(color-theme-initialize)
(color-theme-clarity)

;;(set-default-font "-bitstream-bitstream vera sans mono-regular-r-normal--12-0-0-0-m-0-iso8859-1")

;; dejavu-dejavu sans mono-medium-r-normal--0-0-0-0-c-0-iso8859-1")

(modify-frame-parameters nil '((wait-for-wm . nil)))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(defun start-another-shell ()
"start a new instance of shell;
if buffer \"*shell*\" already exists, rename it and start a new instance.
The older shell will be marked \"\", counter-intuitively...."
(interactive)
(setq shell-name "*shell*")
(if (get-buffer shell-name)
(progn
(switch-to-buffer shell-name)
(rename-buffer (generate-new-buffer-name shell-name))))
(shell))

;(load-file "~/.emacs.d/graphviz-dot-mode.el")

(autoload 'twitter-get-friends-timeline "twitter" nil t)
(autoload 'twitter-status-edit "twitter" nil t)
(global-set-key "\C-xt" 'twitter-get-friends-timeline)
(add-hook 'twitter-status-edit-mode-hook 'longlines-mode)


(setq display-time-day-and-date t
                display-time-24hr-format t)
(display-time)

(defun set-frame-width-interactive (arg)
   (interactive "p")
   (set-frame-width (selected-frame) arg))

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<down>") 'shrink-window)
(global-set-key (kbd "M-<up>") 'enlarge-window)

(setq jabber-username "msteinba" ;; notice: leave off the @gmail.com
      jabber-server "gmail.com"     ;; this is a part of your user ID, not a part of the server you will connect to.
      jabber-network-server "talk.google.com"  ;; this is the actual server to connect to
      jabber-port 5223
      jabber-connection-type 'ssl)


(global-set-key (kbd "<s-return>") 'ns-toggle-fullscreen) 


;; (global-set-key (kbd "s-x") 'suspend-frame)
