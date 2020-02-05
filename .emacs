(require 'package)
 ;; (add-to-list 'package-archives '("melpa" . "https://stable.melpa.org/packages/"))
    (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (package-initialize)
;;
;;(add-to-list 'load-path "C:/Users/Ray/Downloads/Emacs/ntemacs24/lisp/icicles")
(add-to-list 'load-path "~/.emacs.d/icicles")
;;(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(add-to-list 'load-path "C:/Users/Rayni/Appdata/Roaming/.emacs.d/elpa")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-20160214.1141")
(add-to-list 'load-path "C:/Users/Rayni/Appdata/Roaming/.emacs.d/markdown")
(add-to-list 'load-path "~/.emacs.d/diredplus")
(add-to-list 'load-path "~/.emacs.d/powershell")
(add-to-list 'load-path "~/.emacs.d/bookmarkplus")
(add-to-list 'load-path "C:/Users/Rayni/Appdata/Roaming/.emacs.d/VB")
;;(add-to-list 'load-path "
;;; (add-to-list 'load-path "~/bin/ruby-mode/ruby-mode"
(require 'icicles)
(require 'yasnippet)
(require 'evil) 
;;(require 'icicles)
(require 'powershell)
;;(require 'dired+)
;;
(add-to-list 'load-path "C:/Users/Ray/Downloads/Emacs/ntemacs24/lisp/icicles")
;;(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
;;(add-to-list 'load-path "C:/Users/Ray/Appdata/Roaming/.emacs.d/plugins/yasnippet")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-20160214.1141")
(add-to-list 'load-path "C:/Users/Ray/Appdata/Roaming/.emacs.d/markdown")
(add-to-list 'load-path "C:/Users/Ray/Appdata/Roaming/.emacs.d/powershell")
(add-to-list 'load-path "C:/Users/Ray/Appdata/Roaming/.emacs.d/VB")
;;(add-to-list 'load-path "
;;; (add-to-list 'load-path "~/bin/ruby-mode/ruby-mode"
;;(require 'icicles)
(require 'yasnippet)
(require 'evil) 
(require 'icicles)
(require 'powershell)
(require 'dired+)
;;
(require 'bookmark+)
(yas-global-mode 1)
(evil-mode 1)
(icy-mode 1)
;;(powershell-mode 1)
;;(require 'outlookedit)
;;(require 'org-outlook)
(require 'w32-browser)
  (autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
  (setq auto-mode-alist (append '(("\\.\\(frm\\|bas\\|cls\\)$" .
                                  visual-basic-mode)) auto-mode-alist))
;;  (visual-basic-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(appmenu-mode t)
 '(auto-image-file-mode t)
 '(bmkp-last-as-first-bookmark-file "c:/Users/rayni/AppData/Roaming/.emacs.bmk")
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
 '(org-agenda-files
   (quote
    ("~/org/jtdJournal.org" "~/org/opportunities.org" "~/org/Organization.org" "~/org/gtdActionables.org" "~/org/notes.org")))
 '(org-babel-load-languages (quote ((ruby . t) (emacs-lisp . t))))
 '(org-capture-templates
   (quote
    (("t" "Todo" entry
      (file+headline "~/org/gtdActionables.org" "Tasks")
      "* TODO %?
  %i
  %a")
     ("j" "Journal" entry
      (file+datetree "~/org/jtdJournal.org")
      "* %?
Entered on %U
  %i
  %a")
     ("a" "Notes to go somewhere" plain
      (file "~/org/notes.org")
      ";  %T Note:" :empty-lines 1)
     ("o" "Opportunities" plain
      (file "~/org/opportunities.org")
      ";  %T Opportunities:" :empty-lines 1))))
 '(org-emphasis-alist
   (quote
    (("*" bold "<b>" "</b>" verbatim)
     ("/" italic "<i>" "</i>")
     ("_" underline "<span style=\"text-decoration:underline;\">" "</span>")
     ("=" org-code "<code>" "</code>" verbatim)
     ("~" org-verbatim "<code>" "</code>" verbatim)
     ("+"
      (:strike-through t)
      "<del>" "</del>"))))
 '(org-link-search-must-match-exact-headline nil)
 '(ourcomments-ido-ctrl-tab t)
 '(package-selected-packages
   (quote
    (evil-org yasnippet w32-browser ox-pandoc json-mode icicles evil)))
 '(rebind-keys-mode t)
 '(recentf-mode t)
 '(sex-mode t)
 '(show-paren-mode t)
 '(tabkey2-mode t)
 '(w32-meta-style (quote w32-lr))
 '(w32shell-shell (quote cmd)))

;; turn on abbrev mode globally
(setq-default abbrev-mode t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video t :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "Consolas"))))
 '(org-document-title ((t (:foreground "midnight blue" :weight bold :height 1.44))))
 '(org-level-1 ((t (:inherit outline-1 :weight bold :height 1.5 :width expanded)))))

;;(setq org-default-notes-file (concat org-directory "/notes.org"))
     (define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtdActionables.org" "Tasks")
             "* TODO %T %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/org/jtdJournal.org")
             "* %?\nEntered on %U\n  %i\n  %a")
        ("a" "Notes to go somewhere" plain (file "~/org/notes.org") ";  %T Note:" :empty-lines 1)
	
        ("o" "Opportunities" plain (file "~/org/opportunities.org")  "** %T OPPORTUNITY:%? \n   Date: %T \n   Position:\n   Payrate:\n   Employer name/address/phone/URL:\n   Person Contacted:\n   HOW CONTACTED - Web, phone, mail, job fair, networking, etc.:\n   Results:\n-\n   " :empty-lines 1)))

(put 'dired-find-alternate-file 'disabled nil)
(server-start)


 (autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
;;    (add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)


   (autoload 'ruby-mode "ruby-mode"
      "Mode for editing ruby source files" t)
    (setq auto-mode-alist
          (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
    (setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
                                  interpreter-mode-alist))

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
(server-start)
