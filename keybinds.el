;; Key Bindings

;; Opening things

;; Start a new bash session

(defun bash-session ()
  (interactive)
  (term "/bin/bash"))

(global-set-key (kbd "C-c C-t") 'bash-session) ;; Open a new terminal session

;; Common tasks

(global-set-key (kbd "C-c C-e") 'eval-buffer) ;; Evaluate the buffer

;; Window splitting

(global-set-key (kbd "C-c C-s") 'split-window-right)
(global-set-key (kbd "C-c C-b") 'split-window-below)

;; Open a terminal in a split

(defun split-term ()
  (interactive)
  (split-window-right)
  (bash-session))

(global-set-key (kbd "C-c C-y") 'split-term)

;; Shutting things down

(global-set-key (kbd "C-c C-k") 'kill-buffer-and-window)
(global-set-key (kbd "C-c C-c") 'delete-window)
(global-set-key (kbd "C-c C-o") (lambda () (interactive) (other-window 1)))

;; Input Modes

(global-set-key (kbd "C-c C-i") 'set-input-method)
