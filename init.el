;; --- Geremachek's Emacs Configuration --- ;;

;; straight.el & package managment

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Theme

(global-font-lock-mode 0) ;; We don't want syntax highlighting

(straight-use-package 'acme-theme)
(load-theme 'acme t)

(setq acme-theme-black-fg t)

;; GUI's suck, dude!

(menu-bar-mode -1) 
(toggle-scroll-bar -1) 
(tool-bar-mode -1)

;; Disable that annoying bell (yuck!)

(setq visible-bell 1)

;; Fonts

(set-frame-font "Scientifica 10" nil t)

;; Splash Screen

(setq inhibit-startup-screen 1)
(setq initial-scratch-message "\
;; Welcome to Lilith

")

;; Key Bindings

;; Opening things

;; Start a new bash session

(defun bash-session ()
  (interactive)
  (term "/bin/bash"))

(global-set-key (kbd "C-c t") 'bash-session) ;; Open a new terminal session

;; Common tasks

(global-set-key (kbd "C-c e") 'eval-buffer) ;; Evaluate the buffer

;; The split the window and focus the right split

(defun focused-right ()
  (interactive)
  (split-window-right)
  (other-window 1))

(global-set-key (kbd "C-c s") 'focused-right)

;; Open a terminal in a split

(defun split-term ()
  (interactive)
  (focused-right)
  (bash-session))

(global-set-key (kbd "C-c y") 'split-term)

;; Kill and close

(global-set-key (kbd "C-c k") 'kill-buffer-and-window)
