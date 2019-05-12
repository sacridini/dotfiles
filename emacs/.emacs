;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)

;; tira o som irritante
(setq visible-bell 1)

;; Esconde o splash screen
(setq inhibit-startup-screen t)

;; C-d duplica a linha
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
(global-set-key (kbd "C-d") 'duplicate-line)

;; Esconde toolbar, menu e scroll
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Highlight current line
(global-hl-line-mode 1)

;; Display time in modeline
(setq format-time-format "%d %b %Y %H:%M")
(display-time-mode 1)

;; Save all backup files in one folder.
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; ido-mode
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq ido-file-extensions-order '(".org" ".fountain" ".R" ".el"))

;; Atualiza o arquivo aberto no emacs quando for modificado por outro programa
(global-auto-revert-mode 1)

(setq make-backup-files nil) ; stop creating ~ files


;; 4 tab space for Python code
(setq-default tab-width 4)
(setq-default tab-stop-list (list 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
(add-hook 'python-mode-hook
      (lambda ()
        (setq indent-tabs-mode t)
        (setq tab-width 4)
        (setq python-indent-offset 4)))

;; cua-mode
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; fazer o emacs para de gerar arquivos '#'
(setq create-lockfiles nil)
