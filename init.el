;; --- Geremachek's Emacs Configuration --- ;;

(load-file "toggles.el")
(load-file "keybinds.el")

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

(straight-use-package 'acme-theme)
(load-theme 'acme t)

(setq acme-theme-black-fg t)
