
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(global-set-key "\C-cd" 'kill-whole-line)    
(add-to-list 'load-path "~/.emacs.d")
(require 'edit-server)
(edit-server-start)
(put 'set-goal-column 'disabled nil)
