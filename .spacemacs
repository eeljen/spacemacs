;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     markdown
     yaml
     html
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     ;; git
     ;; markdown
     org
     osx
     pandoc
     bibtex
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     (spell-checking :variables spell-checking-enable-by-default nil)
     ;; syntax-checking
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(olivetti)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(adaptive-wrap)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 8)
                                (agenda . 5)
                                (todos . 5)
                                (projects . 7)
                               )
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light
                         soft-morning)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.3)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;;
  ;; USER CONFIG
  ;; Choose evil escape key & timing (use .2 with "ii")
     (setq-default evil-escape-key-sequence "ii")
     (setq-default evil-escape-delay 0.2)
  ;; Disable right alt key as alt key
     (setq mac-right-option-modifier nil)
  ;; Turn on line-wrap everywhere
     (global-visual-line-mode 1)
  ;; Disable cursor movement after insert mode
     (setq evil-move-cursor-back nil)
  ;; Don't assume a sentence has two spaces at the end.
  ;; This aint no typewriter.
     (setq sentence-end-double-space nil)
  ;; Choose spell check
     (setq ispell-program-name "aspell")
     (setq ispell-dictionary "dutch")
  ;;
  ;; PACKAGES
     (require 'helm-bookmark)
  ;;
  ;; KEYBINDINGS
  ;; spacemacs prefix
     (spacemacs/declare-prefix "o" "own-menu")
     (spacemacs/set-leader-keys "oi" 'clone-indirect-buffer-other-window)
     (spacemacs/set-leader-keys "oo" 'olivetti-mode)
     (spacemacs/set-leader-keys "o <tab>" 'org-sparse-finish)
     (spacemacs/set-leader-keys "ow" 'setup-write)
  ;; avy bindings
     (define-key evil-normal-state-map (kbd "ù") 'avy-goto-word-1)
     (define-key evil-normal-state-map (kbd "C-ù") 'avy-goto-char)
  ;;
  ;; bibtex config (for helm-bibtex)
     (setq bibtex-completion-bibliography '("~/Dropbox/schrift/lib/bib.bib"))
     (setq bibtex-completion-library-path '("~/Drobpox/Zotero"))
     (setq bibtex-completion-pdf-field "File")
     (setq bibtex-completion-format-citation-functions
           '((org-mode      . bibtex-completion-format-citation-pandoc-citeproc)
             (markdown-mode . bibtex-completion-format-citation-pandoc-citeproc)
             (default       . bibtex-completion-format-citation-default)))
  ;; ORG MODE
  ;; Org directory
     (setq org-directory "~/Dropbox/org")
     (setq org-agenda-files (list org-directory))
     (add-to-list 'org-agenda-files "~/Dropbox/org/doct")
     (add-to-list 'org-agenda-files "~/Dropbox/org/doct/schrijven")
     (add-to-list 'org-agenda-files "~/Dropbox/org/doct/sferen")
  ;; Mobile configuration
     (setq org-mobile-inbox-for-pull "~/Dropbox/org/mobile-inbox.org")
     (setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
  ;; Set refile targets
     (setq org-refile-targets '((org-agenda-files :maxlevel . 2)))
  ;; Custom AGENDA commands
     (setq org-agenda-window-setup 'current-window)
     (setq org-agenda-custom-commands
           '(
             ("c" "Agenda & categories" (                                   ;;; CATEGORIES
             (agenda "" (                                                    ;; agenda
                         (org-agenda-start-on-weekday 1)                     ;; start monday
                         (org-agenda-overriding-header "Complete Agenda"))
                         )
               (todo "" (
                         (org-agenda-files '("~/Dropbox/org/doct"             ;; todo doct
                                             "~/Dropbox/org/doct/schrijven"
                                             "~/Dropbox/org/doct/sferen"))
                         (org-agenda-todo-ignore-scheduled (quote all))       ;; ignore scheduled
                         (org-agenda-overriding-header "Doctoraat Extra")
                        ))
               (todo "" (
                         (org-agenda-files '("~/Dropbox/org/onderwijs.org"))  ;; todo onderwijs
                         (org-agenda-todo-ignore-scheduled (quote all))       ;; ignore scheduled
                         (org-agenda-overriding-header "Onderwijs Extra")
                         ))
               (todo "" (
                         (org-agenda-files '("~/Dropbox/org/taken.org"))      ;; todo taken
                         (org-agenda-todo-ignore-scheduled (quote all))       ;; ignore scheduled
                         (org-agenda-overriding-header "Taken     Extra")
                        ))
               ))
             ("d" "Doctoraat agenda & todos" (                               ;;; DOCTORAAT
               (agenda "" ((org-agenda-overriding-header "Agenda")))          ;; agenda
               (todo "" (
                         (org-agenda-files '("~/Dropbox/org/doct"))           ;; todo doct
                         (org-agenda-todo-ignore-scheduled (quote all))       ;; ignore scheduled
                         (org-agenda-overriding-header "Doctoraat")
                        ))
               (todo "" (
                         (org-agenda-files '("~/Dropbox/org/doct/sferen"))    ;; todo doct/sferen
                         (org-agenda-todo-ignore-scheduled (quote all))       ;; ignore scheduled
                         (org-agenda-overriding-header "Sferen")
                         ))
               (todo "" (
                         (org-agenda-files '("~/Dropbox/org/doct/schrijven")) ;; todo doct/schrijven
                         (org-agenda-todo-ignore-scheduled (quote all))       ;; ignore scheduled
                         (org-agenda-overriding-header "Schrijven")
                        ))
              ))
             ("o" "Onderwijs agenda & todos" (                               ;;; ONDERWIJS
               (agenda "" ((org-agenda-overriding-header "Agenda")))          ;; agenda
               (todo "" (
                         (org-agenda-files '("~/Dropbox/org/onderwijs.org"))  ;; todo onderwijs
                         (org-agenda-todo-ignore-scheduled (quote all))       ;; ignore scheduled
                         (org-agenda-overriding-header "Onderwijs")
                        ))
              ))
             )
        )
  ;;
  ;; Org CAPTURE
     (setq org-default-notes-file (concat org-directory "notes.org"))
     (setq org-capture-templates
           '(("t" "Taak" entry (file+headline "~/Dropbox/org/taken.org" "Inbox")
              "* TODO %^{Taak}\n%^{Toelichting} \n%?\n"
              :prepend t :kill-buffer t)
             ("s" "Scheduled task" entry (file+headline "~/Dropbox/org/taken.org" "Inbox")
              "* TODO %^{Taak}\nSCHEDULED: %^t \n%^{Toelichting} \n%?\n"
              :prepend t :kill-buffer t)
      ))
  ;; COMMANDS
  ;; Collapse all but current tree
     (defun org-sparse-finish ()
       (interactive)
       (org-remove-occur-highlights)
       (org-overview)
       (org-reveal))
  ;; Custom writing environment
     (defun setup-write ()
       (interactive)
       (spacemacs/reset-font-size)
       (spacemacs/scale-up-font)
       (spacemacs/scale-up-font)
       (olivetti-mode)
       (org-indent-mode)
       (spacemacs/toggle-fringe-off)
       (hidden-mode-line-mode)
      )
  ;;
  ;; END OF USER CONFIG
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(calendar-week-start-day 1)
 '(column-number-mode nil)
 '(line-number-mode t)
 '(olivetti-body-width 90)
 '(org-agenda-block-separator "===================")
 '(org-agenda-current-time-string "now  - - - - - -")
 '(org-agenda-deadline-leaders (quote ("Deadline:  " "In %3d d.: " "%2d d. ago: ")))
 '(org-agenda-files (quote ("~/Dropbox/org")))
 '(org-agenda-include-deadlines t)
 '(org-agenda-menu-two-columns nil)
 '(org-agenda-prefix-format
   (quote
    ((agenda . " %i %-13c%?-12t% s")
     (todo . " %i %-13c")
     (tags . " %i %-13c")
     (search . " %i %-13c"))))
 '(org-agenda-remove-times-when-in-prefix t)
 '(org-agenda-restore-windows-after-quit t)
 '(org-agenda-search-headline-for-time nil)
 '(org-agenda-skip-deadline-if-done nil)
 '(org-agenda-skip-deadline-prewarning-if-scheduled t)
 '(org-agenda-skip-scheduled-if-deadline-is-shown nil)
 '(org-agenda-skip-scheduled-if-done nil)
 '(org-agenda-start-on-weekday nil)
 '(org-agenda-tags-column -80)
 '(org-agenda-time-grid
   (quote
    ((daily today require-timed remove-match)
     (900 1100 1300 1500 1700)
     "....." "----------------")))
 '(org-agenda-todo-ignore-deadlines nil)
 '(org-agenda-window-frame-fractions (quote (0.4 . 0.75)))
 '(org-archive-location "./archive/%s_archive")
 '(org-archive-reversed-order t)
 '(org-archive-save-context-info (quote (time file itags olpath)))
 '(org-archive-subtree-add-inherited-tags t)
 '(org-auto-align-tags t)
 '(org-blank-before-new-entry (quote ((heading . t) (plain-list-item . auto))))
 '(org-complete-tags-always-offer-all-agenda-tags t)
 '(org-deadline-warning-days 7)
 '(org-hide-emphasis-markers t)
 '(org-hierarchical-todo-statistics nil)
 '(org-indent-mode-turns-off-org-adapt-indentation t)
 '(org-mobile-force-id-on-agenda-items nil)
 '(org-startup-align-all-tables t)
 '(org-startup-folded t)
 '(org-startup-indented t)
 '(org-tags-column -65)
 '(org-todo-keyword-faces
   (quote
    (("DONE" . "dark olive green")
     ("WAIT" . "dark grey"))))
 '(org-todo-keywords (quote ((sequence "TODO" "WAIT" "DONE"))))
 '(package-selected-packages
   (quote
    (org-ref pdf-tools key-chord ivy tablist helm-bibtex parsebib biblio biblio-core smeargle orgit magit-gitflow helm-gitignore gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit magit-popup git-commit with-editor multiple-cursors markdown-mode flyspell-popup flyspell-correct-helm flyspell-correct auto-dictionary xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help yaml-mode pandoc-mode ox-pandoc ht web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode olivetti org-category-capture alert log4e gntp define-word ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline reveal-in-osx-finder restart-emacs request rainbow-delimiters popwin persp-mode pcre2el pbcopy paradox osx-trash osx-dictionary org-projectile org-present org-pomodoro org-download org-bullets open-junk-file neotree move-text mmm-mode markdown-toc macrostep lorem-ipsum linum-relative link-hint launchctl info+ indent-guide hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio gnuplot gh-md flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "nil" :slant normal :weight normal :height 130 :width normal))))
 '(org-agenda-date ((t (:foreground "#7590db" :height 1.2))))
 '(org-agenda-date-today ((t (:inherit bold :height 1.2))))
 '(org-agenda-date-weekend ((t (:inherit (bold height) :foreground "#7590db" :height 1.2))))
 '(org-agenda-dimmed-todo-face ((t (:foreground "grey50" :height 1.1))))
 '(org-agenda-done ((t (:foreground "dark olive green" :height 1.1))))
 '(org-agenda-structure ((t (:inherit bold :foreground "dark salmon" :height 1.2))))
 '(org-document-title ((t (:inherit bold :foreground "#bc6ec5" :height 1.4))))
 '(org-scheduled ((t (:foreground "light gray"))))
 '(org-scheduled-today ((t (:foreground "white smoke" :height 1.1))))
 '(org-todo ((t (:inherit bold :foreground "#dc752f"))))
 '(org-warning ((t (:foreground "orange red")))))
