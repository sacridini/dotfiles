;; Remover boas vindas
(setq inhibt-startup-message t)

;; Esconde toobal, menu e scroll
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Numeros nas linhas
(global-linum-mode t)

;; Tamanho da fonte
(set-face-attribute 'default nil :height 120)

;; Tira som irritante (Windows)
(setq visible-bell 1)

;; Esconde splash screen
(setq inhibit-startup-screen 1)

;; Ilumina a linha atual
(global-hl-line-mode 1)

;; Sem arquivos backup 
(setq make-backup-files nil)

;; Fazer o emacs parar de gerar arquivos '#'
(setq create-lockfiles nil)

;; Atualiza o arquivo aberto no emacs quando for modificado por outro programa
(global-auto-revert-mode 1)


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



;; CUA Mode
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangles commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-after-copy t) ;; Standard Windows behaviour



;; IDO Mode
(require 'ido)
(setq ido-enable-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq ido-file-extentions-order '(".org" ".fountain" ".R" ".el"))



;; Pacotes
(require 'package)
(setq package-enable-at-startup nil)

;; MELPA -Repositório
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize) ; iniciar pacotes

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Pacote try
(use-package try
  :ensure t)

;; Pacote auto-complete
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))


;; MELPA stuff 
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
 '(package-selected-packages (quote (try use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
