
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.



;;set defoult theme
(load-theme 'wombat t)

;;set defoult name to emacs
(setq frame-title-format "emacs")

;;remove menu bar 
(menu-bar-mode -1)
;; Removing the tool bar
(tool-bar-mode -1)
;; Removing scroll bar
(scroll-bar-mode -1)

;;change cursore style
;;(set-defoult 'cursor-type 'hbar)

;; Column number
(setq column-number-mode t)
;; Hide startup screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;;evaluate ido mode
(ido-mode)
;;evaluate colume number mode
(column-number-mode)
;;line number mode
(line-number-mode)




;; add melpa and marmalade repo 
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(package-initialize)

;;set line numbers
(global-set-key (kbd "C-c n") 'nlinum-mode)

;;set neoTree
(global-set-key (kbd "C-c t") 'neotree)

;;auto complete
;;(auto-complete-mode)
;;(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(define-key ac-mode-map (kbd "M-TAB") 'company-mode)






;;beacon mode to don't lose my cursor
(beacon-mode 1)
(setq beacon-color "#666600")


;;make multiple cursore
(global-set-key (kbd "C-c c") 'multiple-cursors-mode)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "M->") 'mc/unmark-next-like-this)
(global-set-key (kbd "M-<") 'mc/unmark-previous-like-this)


;;set undo-tree shurt-cuts
(global-undo-tree-mode)
(global-set-key (kbd "M-/") 'undo-tree-visualize)

;;set switch-windo cuts
(global-set-key (kbd "C-.") 'switch-window)
;;(global-set-key (Kbd "C->") 'ace-jump-mode)


;;set auto complete for (),"",''
(autopair-global-mode)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(beacon-mode t)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "938d8c186c4cb9ec4a8d8bc159285e0d0f07bad46edf20aa469a89d0d2a586ea" default)))
 '(global-hl-line-mode t)
 '(line-number-mode t)
 '(package-selected-packages
   (quote
    (pdf-tools company multiple-cursors beacon focus neotree ample-zen-theme ample-theme smartparens autopair nlinum auto-complete smex switch-window undo-tree helm ##)))
 '(show-paren-mode nil)
 '(winner-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
