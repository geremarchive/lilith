;; Key Bindings

;; Opening things

;; Start a new bash session

(defun bash-session ()
  (interactive)
  (term "/bin/bash"))

(global-set-key (kbd "C-c C-t") 'bash-session) ;; Open a new terminal session

;; Common tasks

(global-set-key (kbd "C-c C-e") 'eval-buffer) ;; Evaluate the buffer

;; The split the window and focus the right split

(defun focused-right ()
  (interactive)
  (split-window-right)
  (other-window 1))

(global-set-key (kbd "C-c C-s") 'focused-right)

;; Open a terminal in a split

(defun split-term ()
  (interactive)
  (focused-right)
  (bash-session))

(global-set-key (kbd "C-c C-y") 'split-term)

;; Kill and close

(global-set-key (kbd "C-c C-k") 'kill-buffer-and-window)

;; Input Modes

(global-set-key (kbd "C-c C-i") 'set-input-method)
