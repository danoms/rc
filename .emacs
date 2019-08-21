
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
;; (add-to-list 'load-path "~/.emacs.d/org/")

(package-initialize)

(setenv "PATH" (concat "/home/toms/.nvm/versions/node/v10.14.2/bin:" (getenv "PATH")))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'bind-key)
;; (org-refile-last-stored        "~/org/notes.org")

(setq package-enable-at-startup nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "3860a842e0bf585df9e5785e06d600a86e8b605e5cc0b74320dfe667bcbe816c" "d057f0430ba54f813a5d60c1d18f28cf97d271fd35a36be478e20924ea9451bd" "3d81351b871668b10f7380d6c37142acda3cd6c485365b7b62a60725956c6550" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "b54826e5d9978d59f9e0a169bbd4739dd927eead3ef65f56786621b53c031a7c" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "ecba61c2239fbef776a72b65295b88e5534e458dfe3e6d7d9f9cb353448a569e" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "100e7c5956d7bb3fd0eebff57fde6de8f3b9fafa056a2519f169f85199cc1c96" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "8aca557e9a17174d8f847fb02870cb2bb67f3b6e808e46c0e54a44e3e18e1020" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "59e82a683db7129c0142b4b5a35dbbeaf8e01a4b81588f8c163bd255b76f4d21" "028de01489a683696c64dcc2a01eaa663670d04202de3fce48ec3a5542bc2da5" "d986619578e8a8dabb846e91c54090b82d937672f54ffa0ef247c0428813d602" "fa2af0c40576f3bde32290d7f4e7aa865eb6bf7ebe31eb9e37c32aa6f4ae8d10" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "8885761700542f5d0ea63436874bf3f9e279211707d4b1ca9ed6f53522f21934" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "ec5f697561eaf87b1d3b087dd28e61a2fc9860e4c862ea8e6b0b77bd4967d0ba" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" default)))
 '(electric-pair-mode t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(inhibit-startup-screen t)
 '(jdee-db-active-breakpoint-face-colors (cons "#10151C" "#5EC4FF"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#10151C" "#8BD49C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#10151C" "#384551"))
 '(magit-diff-use-overlays nil)
 '(org-agenda-files
   (quote
    ("~/org/projects.org" "~/org/work.org" "~/org/books.org" "~/org/gtd.org" "~/org/journal.org" "~/org/school.org" "~/org/home.org" "~/org/reverse_engineering.org")))
 '(package-selected-packages
   (quote
    (julia-mode yaml-mode emr ensime anaconda-mode grandshell-theme dts-mode scala-mode helm-gtags org-bookmark-heading company-auctex irony-eldoc company-irony company-irony-c-headers auctex flycheck-irony helm-ag spacemacs-theme plantuml-mode function-args htmlize fold-dwim avy winner-mode w3m pdf-tools evil-org doom-themes evil-collection cyberpunk-theme vue-mode company-jedi fill-column-indicator helm-projectile jedi imenu-list json-mode subatomic-theme leuven-theme material-theme noctilux-theme monokai-theme solarized-theme zenburn-theme dracula-theme company-tern xref-js2 js2-refactor ac-js2 ob-async babel markdown-preview-eww py-autopep8 flycheck dashboard lua-mode elpy ledger-mode projectile ein evil-numbers yasnippet-snippets yasnippet c-eldoc cmake-mode helm company-c-headers company markdown-mode evil-magit magit ##)))
 '(plantuml-jar-path "/home/toms/org/scripts/plantuml.jar")
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(vc-annotate-background "#1D252C")
 '(vc-annotate-color-map
   (list
    (cons 20 "#8BD49C")
    (cons 40 "#abcd93")
    (cons 60 "#cbc68b")
    (cons 80 "#EBBF83")
    (cons 100 "#e5ae6f")
    (cons 120 "#df9e5b")
    (cons 140 "#D98E48")
    (cons 160 "#dc885f")
    (cons 180 "#df8376")
    (cons 200 "#E27E8D")
    (cons 220 "#df7080")
    (cons 240 "#dc6274")
    (cons 260 "#D95468")
    (cons 280 "#b05062")
    (cons 300 "#884c5c")
    (cons 320 "#604856")
    (cons 340 "#56697A")
    (cons 360 "#56697A")))
 '(vc-annotate-very-old-color nil)
 '(vhdl-compiler-alist
   (quote
    (("ADVance MS" "vacom" "-work \\1" "make" "-f \\1" nil "valib \\1; vamap \\2 \\1" "./" "work/" "Makefile" "adms"
      ("^\\s-+\\([0-9]+\\):\\s-+" nil 1 nil)
      ("^Compiling file \\(.+\\)" 1)
      ("ENTI/\\1.vif" "ARCH/\\1-\\2.vif" "CONF/\\1.vif" "PACK/\\1.vif" "BODY/\\1.vif" upcase))
     ("Aldec" "vcom" "-work \\1" "make" "-f \\1" nil "vlib \\1; vmap \\2 \\1" "./" "work/" "Makefile" "aldec"
      ("^.* ERROR [^:]+: \".*\" \"\\([^ 	
]+\\)\" \\([0-9]+\\) \\([0-9]+\\)" 1 2 3)
      ("" 0)
      nil)
     ("Cadence Leapfrog" "cv" "-work \\1 -file" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "leapfrog"
      ("^duluth: \\*E,[0-9]+ (\\([^ 	
]+\\),\\([0-9]+\\)):" 1 2 nil)
      ("" 0)
      ("\\1/entity" "\\2/\\1" "\\1/configuration" "\\1/package" "\\1/body" downcase))
     ("Cadence NC" "ncvhdl" "-work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "ncvhdl"
      ("^ncvhdl_p: \\*E,\\w+ (\\([^ 	
]+\\),\\([0-9]+\\)|\\([0-9]+\\)):" 1 2 3)
      ("" 0)
      ("\\1/entity/pc.db" "\\2/\\1/pc.db" "\\1/configuration/pc.db" "\\1/package/pc.db" "\\1/body/pc.db" downcase))
     ("GHDL" "ghdl" "-i --workdir=\\1 --ieee=synopsys -fexplicit --std=08" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "ghdl"
      ("^ghdl_p: \\*E,\\w+ (\\([^ 	
]+\\),\\([0-9]+\\)|\\([0-9]+\\)):" 1 2 3)
      ("" 0)
      ("\\1/entity" "\\2/\\1" "\\1/configuration" "\\1/package" "\\1/body" downcase))
     ("IBM Compiler" "g2tvc" "-src" "precomp" "\\1" nil "mkdir \\1" "./" "work/" "Makefile" "ibm"
      ("^[0-9]+ COACHDL.*: File: \\([^ 	
]+\\), *line.column: \\([0-9]+\\).\\([0-9]+\\)" 1 2 3)
      (" " 0)
      nil)
     ("Ikos" "analyze" "-l \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "ikos"
      ("^E L\\([0-9]+\\)/C\\([0-9]+\\):" nil 1 2)
      ("^analyze +\\(.+ +\\)*\\(.+\\)$" 2)
      nil)
     ("ModelSim" "vcom" "-93 -work \\1" "make" "-f \\1" nil "vlib \\1; vmap \\2 \\1" "./" "work/" "Makefile" "modelsim"
      ("\\(ERROR:\\|WARNING\\[[0-9]+\\]:\\|\\*\\* Error:\\|\\*\\* Warning: \\[[0-9]+\\]\\| +\\) \\([^ ]+\\)(\\([0-9]+\\)):" 2 3 nil)
      ("" 0)
      ("\\1/_primary.dat" "\\2/\\1.dat" "\\1/_primary.dat" "\\1/_primary.dat" "\\1/body.dat" downcase))
     ("LEDA ProVHDL" "provhdl" "-w \\1 -f" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "provhdl"
      ("^\\([^ 	
:]+\\):\\([0-9]+\\): " 1 2 nil)
      ("" 0)
      ("ENTI/\\1.vif" "ARCH/\\1-\\2.vif" "CONF/\\1.vif" "PACK/\\1.vif" "BODY/BODY-\\1.vif" upcase))
     ("Quartus" "make" "-work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "quartus"
      ("^\\(Error\\|Warning\\): .* \\([^ 	
]+\\)(\\([0-9]+\\))" 2 3 nil)
      ("" 0)
      nil)
     ("QuickHDL" "qvhcom" "-work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "quickhdl"
      ("^\\(ERROR\\|WARNING\\)[^:]*: \\([^ 	
]+\\)(\\([0-9]+\\)):" 2 3 nil)
      ("" 0)
      ("\\1/_primary.dat" "\\2/\\1.dat" "\\1/_primary.dat" "\\1/_primary.dat" "\\1/body.dat" downcase))
     ("Savant" "scram" "-publish-cc -design-library-name \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work._savant_lib/" "Makefile" "savant"
      ("^\\([^ 	
:]+\\):\\([0-9]+\\): " 1 2 nil)
      ("" 0)
      ("\\1_entity.vhdl" "\\2_secondary_units._savant_lib/\\2_\\1.vhdl" "\\1_config.vhdl" "\\1_package.vhdl" "\\1_secondary_units._savant_lib/\\1_package_body.vhdl" downcase))
     ("Simili" "vhdlp" "-work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "simili"
      ("^\\(Error\\|Warning\\): \\w+: \\([^ 	
]+\\): (line \\([0-9]+\\)): " 2 3 nil)
      ("" 0)
      ("\\1/prim.var" "\\2/_\\1.var" "\\1/prim.var" "\\1/prim.var" "\\1/_body.var" downcase))
     ("Speedwave" "analyze" "-libfile vsslib.ini -src" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "speedwave"
      ("^ *ERROR\\[[0-9]+]::File \\([^ 	
]+\\) Line \\([0-9]+\\):" 1 2 nil)
      ("" 0)
      nil)
     ("Synopsys" "vhdlan" "-nc -work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "synopsys"
      ("^\\*\\*Error: vhdlan,[0-9]+ \\([^ 	
]+\\)(\\([0-9]+\\)):" 1 2 nil)
      ("" 0)
      ("\\1.sim" "\\2__\\1.sim" "\\1.sim" "\\1.sim" "\\1__.sim" upcase))
     ("Synopsys Design Compiler" "vhdlan" "-nc -spc -work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "synopsys_dc"
      ("^\\*\\*Error: vhdlan,[0-9]+ \\([^ 	
]+\\)(\\([0-9]+\\)):" 1 2 nil)
      ("" 0)
      ("\\1.syn" "\\2__\\1.syn" "\\1.syn" "\\1.syn" "\\1__.syn" upcase))
     ("Synplify" "n/a" "n/a" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "synplify"
      ("^@[EWN]:\"\\([^ 	
]+\\)\":\\([0-9]+\\):\\([0-9]+\\):" 1 2 3)
      ("" 0)
      nil)
     ("Vantage" "analyze" "-libfile vsslib.ini -src" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "vantage"
      ("^\\*\\*Error: LINE \\([0-9]+\\) \\*\\*\\*" nil 1 nil)
      ("^ *Compiling \"\\(.+\\)\" " 1)
      nil)
     ("VeriBest" "vc" "vhdl" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "veribest"
      ("^ +\\([0-9]+\\): +[^ ]" nil 1 nil)
      ("" 0)
      nil)
     ("Viewlogic" "analyze" "-libfile vsslib.ini -src" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "viewlogic"
      ("^\\*\\*Error: LINE \\([0-9]+\\) \\*\\*\\*" nil 1 nil)
      ("^ *Compiling \"\\(.+\\)\" " 1)
      nil)
     ("Xilinx XST" "xflow" "" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "xilinx"
      ("^ERROR:HDLParsers:[0-9]+ - \"\\([^ 	
]+\\)\" Line \\([0-9]+\\)\\." 1 2 nil)
      ("" 0)
      nil))))
 '(vhdl-standard (quote (8 nil)))
 '(weechat-color-list
   (quote
    (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; PACKAGES

(use-package use-package-ensure-system-package
  :ensure t)
;; (require 'json)
(use-package json-mode
  :mode "\\.json\\'")

(require 'flycheck)
(defun my-parse-jslinter-warning (warning)
  (flycheck-error-new
   :line (1+ (cdr (assoc 'line warning)))
   :column (1+ (cdr (assoc 'column warning)))
   :message (cdr (assoc 'message warning))
   :level 'error
   :buffer (current-buffer)
   :checker 'javascript-jslinter))
(defun jslinter-error-parser (output checker buffer)
  (mapcar 'parse-jslinter-warning
	  (cdr (assoc 'warnings (aref (json-read-from-string output) 0)))))
(flycheck-define-checker javascript-jslinter
  "A JavaScript syntax and style checker based on JSLinter.

See URL `https://github.com/tensor5/JSLinter'."
  :command ("jslint" "--raw" source)
  :error-parser jslinter-error-parser
  :modes (js-mode js2-mode js3-mode))

(use-package flycheck-irony
  :after flycheck
  :init
  (add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(use-package flycheck
  :config
  ;; C
  (global-flycheck-mode))

(add-hook 'c-mode-hook
	  (lambda () (setq flycheck-gcc-include-path
			   (list ".."))))
;; (setq flycheck-gcc-include-path (list ".."))

;; EVIL MODE and evil stuff
(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (keyboard-translate ?\C-h ?\C-?)
  (global-set-key "\C-a" 'evil-numbers/inc-at-pt)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(use-package evil-org
  :ensure t
  :after org
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
	    (lambda ()
	      (evil-org-set-key-theme)))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

(cl-pushnew 'evil-markers-alist desktop-locals-to-save)
;; (add-to-list 'desktop-locals-to-save 'evil-markers-alist)

;; my evil stuff
;; (global-set-key "\C-xx" 'evil-numbers/dec-at-pt)

;; packages again
(use-package winner-mode
  :init
  (winner-mode 1)
  :bind
  ("C-c C-j" . winner-undo)
  ("C-c C-k" . winner-redo))

(use-package evil-magit
  :ensure t
  :init
  (evil-collection-init))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(use-package company-auctex
  :ensure t
  :after company
  :config
  (company-auctex-init))

(use-package company-math
  :ensure t
  :after company
  :init
  (add-to-list 'company-backends 'company-math-symbols-unicode))

(use-package company-c-headers
  :ensure t
  :config
  (add-to-list 'company-backends 'company-c-headers))

(use-package company-tern
  :after company
  :ensure t
  :defer t
  :init
  (add-to-list 'company-backends 'company-tern))

(progn
  (setq-default indent-tabs-mode nil))
;; (require 'company-tern)
;; (eval-after-load 'company
  ;; '(progn
     ;; (define-key company-active-map [tab] 'company-select-next)))

(add-hook 'c-mode-hook 'company-mode)
(add-hook 'after-init-hook 'global-company-mode)

;; (setq global-company-mode t)
(use-package company
  :ensure t
  :bind
  ("C-;" . 'company-complete-common)
  :config
  ;; (define-key company-active-map (kbd "TAB") 'company-select-next)
  (define-key company-active-map (kbd "RET") #'company-complete-selection)
  (define-key company-active-map (kbd "<return>") #'company-complete-selection)
  (setq company-selection-wrap-around t)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3)
  (setq global-company-mode t))

(use-package company-irony
  :ensure t
  :config
  (add-to-list 'company-backends 'company-irony))

(use-package company-irony-c-headers
  :ensure t
  :after company-irony
  :config
  (add-to-list 'company-backends '(company-irony-c-headers company-irony)))


(use-package irony
  :ensure t
  :config
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
)

(use-package irony-eldoc
  :ensure t
  :config
  (add-hook 'irony-mode-hook #'irony-eldoc))

(use-package company-jedi
  :ensure t
  :config
  (add-hook 'python-mode-hook 'jedi:setup)
  (add-to-list 'company-backends 'company-jedi))


(use-package magit
  :ensure t)
;; :ensure t)

(use-package markdown-mode
  :defer t)

(use-package helm
  :ensure t
  :bind
  ("M-x" . helm-M-x)
  ("C-x r b" . #'helm-filtered-bookmarks)
  ("C-x C-f" . #'helm-find-files)
  ("C-x b" . #'helm-mini)
  ("C-x C-b" . #'helm-buffers-list)
  ;; ("K" . helm-man-woman)
  :init
  (setq helm-buffers-fuzzy-matching t)
  (setq helm-etags-fuzzy-match t)

  (setq helm-mode-fuzzy-match t)
  (setq helm-completion-in-region-fuzzy-match t)

  (helm-mode 1))

;; latex
;; (use-package auctex
  ;; :ensure t)
(setq TeX-parse-self t)
(setq TeX-auto-save t)
(setq TeX-PDF-mode t)
(setq TeX-source-correlate-mode t)
(setq TeX-source-correlate-method 'synctex)
(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
      TeX-source-correlate-start-server t)

(add-hook 'TeX-after-compilation-finished-functions
	  #'TeX-revert-document-buffer)

(add-hook 'TeX-mode-hook
	  (lambda ()
	    (setq TeX-command-extra-options "-shell-escape")))

;; c stuff

  ;; (require 'org-bookmark)
;; org mode features
(use-package org
  :ensure t
  :bind
  ("C-c l" . org-store-link)
  ("C-c a" . org-agenda)
  ("C-c c" . org-capture)
  ("C-c b" . org-switchb)
  :init
  (server-start)
  (require 'org-protocol)

  (setq org-log-done 'time)
  (defun my-org-confirm-babel-evaluate (lang body)
    (not (member lang '("C" "sh" "python" "octave" "plantuml"))))

  (setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)

  (org-babel-do-load-languages
   'org-babel-load-languages
   '((C . t)
     (octave t)
     (sh . t)
     (python . t)
     (plantuml . t)
     (emacs-lisp . t)))

  ;; publishing
  ;; ("project-name" :property value :property value)
  (setq org-publish-project-alist
	'("school"
	  :base-directory "~/org/"
	  :publishing-directory "~/publish/"
	  :publishing-function "org-publish-org-to-html"))

  ;; other
  (setq org-src-fontify-natively t)
  
  (setq org-agenda-files (list "~/org/work.org"
			       "~/org/books.org"
			       "~/org/gtd.org"
			       "~/org/journal.org"
			       "~/org/school.org"
			       "~/org/home.org"
			       "~/org/reverse_engineering.org"))

  (setq org-agenda-include-diary t)
  (setq org-default-notes-file (concat org-directory "/notes.org"))
  (setq org-capture-templates
	'(
	  ("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
	   "* TODO %?\n %i\n %a")
	  ("b" "Book to read" entry (file+headline "~/org/books.org" "Book list")
	   "* %?\n %i\n %x")
	  ("j" "Journal" entry (file+datetree "~/org/journal.org")
	   "* %?\Entered on %U\n %i\n %a"))))

;; some babel org features

(setq path-to-ctags "/usr/bin/ctags")
(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command
   (format "%s -f TAGS -e -R %s" path-to-ctags (directory-file-name dir-name))))

;; org mode


;; YASnippet
(use-package yasnippet
  ;; :ensure t
  :defer t
  :init
  (yas-global-mode 1))

(desktop-save-mode 1)
(put 'narrow-to-region 'disabled nil)

(use-package ein
  :defer t)

;; (require 'ein)
;; (require 'ein-notebook)

(use-package markdown-mode
  :defer t)

(use-package projectile
  :config
  (define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

  (projectile-mode)
  (setq projectile-completion-system 'helm)
  (helm-projectile-on)

  (projectile-register-project-type 'C '(".git")
				    :compile "make -k ")

  (projectile-mode +1))

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(use-package ledger-mode
  :mode "\\.ledger\\'"
  :init
  ;; insert eiro € sign with Alt-4
  (global-set-key (kbd "M-4") (lambda () (interactive) (insert ?€))))

;; octave
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))
(add-hook 'octave-mode-hook
	  (lambda ()
	    (abbrev-mode 1)
	    (auto-fill-mode 1)
	    (if (eq window-system 'x)
		(font-lock-mode 1))))


;; (global-linum-mode nil)

(elpy-enable)

(setq markdown-command "/usr/bin/pandoc")

;; javascript
;; tern
;; (add-to-list 'load-path "/home/toms/Documents/git/tern/emacs/")
;; (autoload 'tern-mode "tern.el" nil t)
;; (add-hook 'js2-mode-hook (lambda () (tern-mode t)))

(add-hook 'js-mode-hook 'js2-minor-mode)
;; (add-hook 'js2-mode-hook 'ac-js2-mode)
;; (add-hook 'js2-mode-hook #'js2-imenu-extras-mode)
;; (require 'js2-mode)
;; (add-to-list 'auto-mode-alist '("\\.js\\'" . (js2-mode ac-js2-mode)))
(use-package js2-mode
  :mode "\\.js\\'"
  :hook (ac-js2-mode
	 js2-imenu-extras-mode
	 js2-refactor-mode))

(require 'js2-refactor)
(require 'xref-js2)

(add-hook 'js2-mode-hook (lambda ()
			   (tern-mode)
			   (company-mode)))

;; (define-key tern-mode-keymap (kbd "M-.") nil)
;; (define-key tern-mode-keymap (kbd "M-,") nil)

;; (add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-r")
;; (define-key js2-mode-map (kbd "C-k") #'js2r-kill)

(define-key js-mode-map (kbd "M-.") nil)

(add-hook 'js2-mode-hook (lambda ()
			   (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))


;; (add-hook 'js-mode-hook (lambda () (tern-mode t)))
;; (eval-after-load 'tern
;; '(progn
;; (require 'tern-auto-complete)
;; (tern-ac-setup)))

;; python stuff
(setenv "IPY_TEST_SIMPLE_PROMPT" "1")
(setq python-shell-interpreter "/home/toms/.local/bin/ipython"
      python-shell-interpreter-args "-i")
(setq elpy-rpc-python-command "python3.6")
(use-package python-mode
  :mode "\\.py\\'"
  :hook jedi:setup
  ;; :interpreter "python3")
   )
(with-eval-after-load 'python3
  (defun python-shell-completion-native-try ()
    "Return non-nil if can trigger native completion."
    (let ((python-shell-completion-native-enable t)
          (python-shell-completion-native-output-timeout
           python-shell-completion-native-try-output-timeout))
      (python-shell-completion-native-get-completions
       (get-buffer-process (current-buffer))
       nil "_"))))

(use-package ensime
  :ensure t
  :bind
  (("C-M-]" . 'ensime-edit-definition-of-thing-at-point)
   ("C-M-[" . 'ensime-edit-definition-of-type-of-thing-at-point))
  :pin melpa-stable)

(use-package jedi
  :defer t
  :after python
  :init
  (setq jedi:complete-on-dot t))
;; (setq jedi:complete-on-dot t)

;; vue mode
;; (add-to-list 'auto-mode-alist '("\\.vue\\'" . (vue-mode)))
(use-package vue-mode
  :mode "\\.vue\\'")

;; pdf
(use-package pdf-tools
  :ensure t
  :init
  (add-hook 'pdf-tools-hook (lambda () (setq linum-mode -1)))
  )
(add-to-list 'auto-mode-alist '("\\.pdf\\'" . pdf-view-mode))
(use-package avy
  :bind
  ("C-:" . 'avy-goto-char))

(use-package emr
  :ensure t
  :init
  (define-key prog-mode-map (kbd "M-RET") 'emr-show-refactor-menu))

(use-package julia-mode
  :ensure t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MY FUNCTIONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun show-file-name()
  "Show the full path file name in the minibuffer."
  (interactive)
  (kill-new (buffer-file-name))
  (message (buffer-file-name)))

(defun show-dir-name()
  "Show full path to current buffer directory"
  (interactive)
  (kill-new (file-name-directory default-directory))
  (message (file-name-directory default-directory)))

(defun sudo ()
  "Use TRAMP to `sudo' the current buffer."
  (interactive)
  (when buffer-file-name
  (find-alternate-file
   (concat "/sudo:root@localhost:"
	   buffer-file-name))))

(defun sudo-dir ()
  "Use TRAMP to `sudo' the current directory."
  (interactive)
  (when (file-name-directory default-directory)
    (find-alternate-file
     (concat "/sudo:root@localhost:"
	     (file-name-directory default-directory)))))
	     

;; disable things
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)


;; calendar stuff
(add-hook 'calendar-load-hook
	  (lambda ()
	    (calendar-set-date-style 'european)))
(setq calendar-week-start-day 1
      calendar-day-name-array ["Sv" "P " "O " "T " "C " "Pk" "S "]
      calendar-month-name-array ["Janvāris" "Februāris" "Marts" "Aprīlis"
				 "Maijs" "Jūnijs" "Jūlijs" "Augusts"
				 "Septembris" "Oktobris" "Novembris" "Decembris"])

;; fore emacsclient key-bindings
(defun reload-key-bindings ()
  "Reload key bindings, when using emacsslient."
  (load-file "~/.emacs"))
(add-hook 'server-visit-hook 'reload-key-bindings)
	  
;; faster movement
(global-set-key (kbd "M-o") 'other-window)

;; style for indenting
(setq c-default-style "linux"
      c-basic-offset 8)

;; mode line hacks
(setq my-mode-line
      (list "-"
	    'mode-line-mule-info
	    'mode-line-modified
	    'mode-line-frame-identification
	    "%b--"
	    ;; Note that this is evaluated while making the list.
	    ;; It makes a mode line construct which is just a string.
	    (getenv "HOST")
	    ":"
	    'default-directory
	    "   "
	    'global-mode-string
	    "   %[("
	    '(:eval (mode-line-mode-name))
	    'mode-line-process
	    'minor-mode-alist
	    "%n"
	    ")%]--"
	    '(which-func-mode ("" which-func-format "--"))
	    '(line-number-mode "L%l--")
	    '(column-number-mode "C%c--")
	    '(-3 "%p")))
(setq-default mode-line-format my-mode-line)

(defun toggle-mode-line ()
  "Toggle mode line visibility."
  (interactive)
  (setq mode-line-format (if (null mode-line-format) my-mode-line nil)))


(global-set-key (kbd "<f11>")
		(lambda ()
		  (interactive)
		  (toggle-mode-line)
		  (toggle-frame-fullscreen)))
;; browser

;; change default browser for links
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "qutebrowser")
;; dired stuff
(setq dired-dwim-target t) ;; try to guess target directory


;; latex export stuff
(require 'ox-latex)
(add-to-list 'org-latex-packages-alist '("" "minted"))
(setq org-latex-listings 'minted)

(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))


;; disable prompts
(fset 'yes-or-no-p 'y-or-n-p)
(setq kill-buffer-query-functions
      (remq 'process-kill-buffer-query-function
	    kill-buffer-query-functions))


;; debug stuff
;; (setq gdb-many-windows t)

;; verilog
(setq verilog-linter "verilator --lint-only")
(setq verilog-simulator "/opt/iverilog/bin/iverilog -g2012")

;; plantuml
(setq org-plantuml-jar-path
      (expand-file-name "~/org/scripts/plantuml.jar"))

;; local variables not safe
(add-to-list 'safe-local-variable-values
	     '(flycheck-gcc-args . "-fno-builtin"))

(setq compilation-ask-about-save nil)

;; themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme `cyberpunk-2019 t)
