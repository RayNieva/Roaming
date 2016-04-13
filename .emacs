(add-to-list 'load-path "C:/Users/Ray/Downloads/Emacs/ntemacs24/lisp/icicles")
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-20160214.1141")
(require 'icicles)
(require 'yasnippet)
(require 'evil) 
(yas-global-mode 1)
(evil-mode 1)


(require 'outlookedit)
(require 'org-outlook)
(require 'w32-browser)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(appmenu-mode t)
 '(auto-image-file-mode t)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(emacsw32-max-frames t)
 '(emacsw32-style-frame-title t)
 '(hfyview-quick-print-in-files-menu t)
 '(key-choices-keybinding 1)
 '(menuacc-mode t)
 '(noprint-hide-print-in-menus t)
 '(noprint-hide-ps-print-in-menus t)
 '(nxhtml-load t)
 '(org-agenda-files (quote ("~/org/opportunities.org" "c:/Users/Ray/Desktop/scratch23.org" "c:/Users/Ray/Desktop/practice.org" "c:/Users/Ray/Documents/practice.org")))
 '(org-babel-load-languages (quote ((ruby . t) (emacs-lisp . t))))
 '(org-capture-templates (quote (("t" "Todo" entry (file+headline "~/org/gtdActionables.org" "Tasks") "* TODO %?
  %i
  %a") ("j" "Journal" entry (file+datetree "~/org/jtdJournal.org") "* %?
Entered on %U
  %i
  %a") ("a" "Notes to go somewhere" plain (file "~/org/notes.org") ";  %T Note:" :empty-lines 1) ("o" "Opportunities" plain (file "~/org/opportunities.org") ";  %T Opportunities:" :empty-lines 1))))
 '(org-emphasis-alist (quote (("*" bold "<b>" "</b>" verbatim) ("/" italic "<i>" "</i>") ("_" underline "<span style=\"text-decoration:underline;\">" "</span>") ("=" org-code "<code>" "</code>" verbatim) ("~" org-verbatim "<code>" "</code>" verbatim) ("+" (:strike-through t) "<del>" "</del>"))))
 '(ourcomments-ido-ctrl-tab t)
 '(rebind-keys-mode t)
 '(recentf-mode t)
 '(sex-mode t)
 '(show-paren-mode t)
 '(tabkey2-mode t)
 '(w32-meta-style (quote w32-lr))
 '(w32shell-shell (quote cmd)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video t :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "Consolas"))))
 '(org-document-title ((t (:foreground "midnight blue" :weight bold :height 1.44))))
 '(org-level-1 ((t (:inherit outline-1 :weight bold :height 1.5 :width expanded)))))

(setq org-default-notes-file (concat org-directory "/notes.org"))
     (define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtdActionables.org" "Tasks")
             "* TODO %T %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/org/jtdJournal.org")
             "* %?\nEntered on %U\n  %i\n  %a")
        ("a" "Notes to go somewhere" plain (file "~/org/notes.org") ";  %T Note:" :empty-lines 1)
	
        ("o" "Opportunities" plain (file "~/org/opportunities.org")  "** %T OPPORTUNITY:%? \nDate: %T \nPosition:\nPayrate:\nEmployer name/address/phone/URL:\nPerson Contacted:\nHOW CONTACTED - Web, phone, mail, job fair, networking, etc.:\nResults:\n   " :empty-lines 1)))

(put 'dired-find-alternate-file 'disabled nil)
(server-start)
