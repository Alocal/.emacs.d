(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
  '(custom-safe-themes
     '("f302eb9c73ead648aecdc1236952b1ceb02a3e7fcd064073fb391c840ef84bca" "cf922a7a5c514fad79c483048257c5d8f242b21987af0db813d3f0b138dfaf53" "6b81f83bb11b9403bb8de5e904a7b810e03889baa4aa0e40dad9d8c3372ee531" "34e89196734641234800804ecdb2c20505e81586b816cc906eb319c377225ff5" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "e68bd30d8796a211ff2dbe1dc155f7303853547d9c7fd36b019f6bd732890854" "c4ec44cce043a30c57dd3a1342a890991976a872cd71f4c0650c9387a66eb3f4" "9fffe42e06303dfc0b259dbbc4d1f7e8c2e38c3f03a3e8a6e946ee55ee6376e3" "37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" "c3e6b52caa77cb09c049d3c973798bc64b5c43cc437d449eacf35b3e776bf85c" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "8f5a7a9a3c510ef9cbb88e600c0b4c53cdcdb502cfe3eb50040b7e13c6f4e78e" "f4876796ef5ee9c82b125a096a590c9891cec31320569fc6ff602ff99ed73dca" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" default))
  '(package-selected-packages
     '(neotree treemacs doom-modeline all-the-icons zzz-to-char centaur-tabs typo change-inner solarized-theme fold-this nord-theme apropospriate-theme helm hydra company-dict tabbar swiper undo-tree writeroom-mode ivy-posframe olivetti use-package auto-complete doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Default settings
(setq visible-bell t)
(setq ring-bell-function 'ignore)
(show-paren-mode 1)
(setq-default cursor-type 'bar)
(blink-cursor-mode 0)
(save-place-mode 1)
(setq lisp-indent-offset 2)
(setq mac-pass-command-to-system nil)
(electric-pair-mode)
(toggle-scroll-bar 0)
(tool-bar-mode 0)
(load-theme 'adwaita)
(set-frame-font "Agave 16")
(setq inhibit-startup-message t)
(delete-selection-mode 1)

(setq
  backup-by-copying t      ; don't clobber symlinks
  backup-directory-alist
  '(("." . "~/.emacs.d/.saves/"))    ; don't litter my fs tree
  delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)       ; use versioned backups

;; Python
(setq python-shell-interpreter "ipython")
(setq python-shell-interpreter-args "--simple-prompt -i")

;; Window position
(setq default-frame-alist '((center . 0) (height . 120)))

;; Packages
(use-package auto-complete
  :ensure t
  :init
  (global-auto-complete-mode))

(use-package undo-tree
  :ensure t
  :bind ("C-M-/" . undo-tree-redo)
  :init
  (global-undo-tree-mode))

(use-package change-inner
  :ensure t
  :bind ("<C-i>" . change-inner))

(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
	  ("C-x b" . helm-buffers-list)
	  ("C-x C-f" . helm-find-files)
	  (:map helm-map
	    ("<tab>" . helm-execute-persistent-action)
	    ("C-z" . helm-select-action)))
  :init
  (helm-mode))
