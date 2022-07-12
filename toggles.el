;; General Settings

(global-font-lock-mode 0) ;; We don't want syntax highlighting

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
