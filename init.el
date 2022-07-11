;; --- Geremachek's Emacs Configuration --- ;;

;; GUI's suck, dude!

(menu-bar-mode -1) 
(toggle-scroll-bar -1) 
(tool-bar-mode -1)

;; Fonts

(set-frame-font "Scientifica 10" nil t)

;; Splash Screen

(setq inhibit-startup-screen 1)

(setq initial-scratch-message "\
;; Welcome to Emacs
;; ኤክስ ቴኔብሪስ

")
