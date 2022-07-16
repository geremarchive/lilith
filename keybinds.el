;; Key Bindings

;; Opening things

;; Start a new bash session

(defun bash-session ()
  (interactive)
  (term "/bin/bash"))

(global-set-key (kbd "C-c t") 'bash-session) ;; Open a new terminal session

;; Common tasks

(global-set-key (kbd "C-c e") 'eval-buffer) ;; Evaluate the buffer

;; Window splitting

(global-set-key (kbd "C-c s") 'split-window-right)
(global-set-key (kbd "C-c b") 'split-window-below)

;; Open a terminal in a split

(defun split-term ()
  (interactive)
  (split-window-right)
  (bash-session))

(global-set-key (kbd "C-c y") 'split-term)

;; Shutting things down

(global-set-key (kbd "C-c k") 'kill-buffer-and-window)
(global-set-key (kbd "C-c c") 'delete-window)

;; Input Modes

(global-set-key (kbd "C-c i") 'set-input-method)

