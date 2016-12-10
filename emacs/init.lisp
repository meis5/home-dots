(defun dotspacemacs/layers ()
  (setq-default
    dotspacemacs-distribution 'spacemacs
    dotspacemacs-enable-lazy-installation 'unused
    dotspacemacs-ask-for-lazy-installation t
    dotspacemacs-configuration-layer-path '()
    dotspacemacs-configuration-layers
   '(
    osx
    better-defaults

    git
    org
    helm
    spell-checking
    syntax-checking
    auto-completion

    emacs-lisp

    markdown

    html
    javascript
    typescript
    react

    go
    (shell :variables
           shell-default-height 30
           shell-default-position 'bottom)
    )
    dotspacemacs-additional-packages '(editorconfig)
    dotspacemacs-frozen-packages '()
    dotspacemacs-excluded-packages '()
    dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  (setq-default
    dotspacemacs-elpa-https t
    dotspacemacs-elpa-timeout 5
    dotspacemacs-check-for-update nil
    dotspacemacs-elpa-subdirectory nil
    dotspacemacs-editing-style 'vim
    dotspacemacs-verbose-loading nil
    dotspacemacs-startup-banner 'official
    dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
    dotspacemacs-startup-buffer-responsive t
    dotspacemacs-scratch-mode 'text-mode
    dotspacemacs-themes '(spacemacs-light
                          spacemacs-light)
    dotspacemacs-colorize-cursor-according-to-state t
    dotspacemacs-default-font '("consolas"
                                :size 15
                                :weight normal
                                :width normal
                                :powerline-scale 1.1)
    dotspacemacs-leader-key "SPC"
    dotspacemacs-emacs-command-key "SPC"
    dotspacemacs-ex-command-key ":"
    dotspacemacs-emacs-leader-key "M-m"
    dotspacemacs-major-mode-leader-key ","
    dotspacemacs-major-mode-emacs-leader-key "C-M-m"
    dotspacemacs-distinguish-gui-tab nil
    dotspacemacs-remap-Y-to-y$ nil
    dotspacemacs-retain-visual-state-on-shift t
    dotspacemacs-visual-line-move-text nil
    dotspacemacs-ex-substitute-global nil
    dotspacemacs-default-layout-name "Default"
    dotspacemacs-display-default-layout nil
    dotspacemacs-auto-resume-layouts nil
    dotspacemacs-large-file-size 1
    dotspacemacs-auto-save-file-location 'cache
    dotspacemacs-max-rollback-slots 5
    dotspacemacs-helm-resize nil
    dotspacemacs-helm-no-header nil
    dotspacemacs-helm-position 'bottom
    dotspacemacs-helm-use-fuzzy 'always
    dotspacemacs-enable-paste-transient-state nil
    dotspacemacs-which-key-delay 0.4
    dotspacemacs-which-key-position 'bottom
    dotspacemacs-loading-progress-bar t
    dotspacemacs-fullscreen-at-startup nil
    dotspacemacs-fullscreen-use-non-native nil
    dotspacemacs-maximized-at-startup nil
    dotspacemacs-active-transparency 90
    dotspacemacs-inactive-transparency 90
    dotspacemacs-show-transient-state-title t
    dotspacemacs-show-transient-state-color-guide t
    dotspacemacs-mode-line-unicode-symbols t
    dotspacemacs-smooth-scrolling t
    dotspacemacs-line-numbers nil
    dotspacemacs-folding-method 'evil
    dotspacemacs-smartparens-strict-mode nil
    dotspacemacs-smart-closing-parenthesis nil
    dotspacemacs-highlight-delimiters 'all
    dotspacemacs-persistent-server nil
    dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
    dotspacemacs-default-package-repository nil
    dotspacemacs-whitespace-cleanup `trailing
  )
)

(defun dotspacemacs/user-init ()
  (setq-default dotspacemacs-line-numbers t)
  (setq-default dotspacemacs-line-numbers 'relative)
)

(defun dotspacemacs/user-config ()
  (editorconfig-mode 1)
  (highlight-indentation-mode 1)
)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-strict-inconsistent-return-warning nil)
 '(js2-strict-missing-semi-warning nil)
 '(js2-strict-trailing-comma-warning nil)
 '(package-selected-packages
   (quote
    (indent-guide helm-ag google-translate aggressive-indent ace-link smartparens bind-map helm helm-core hydra spinner tide typescript-mode web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc editorconfig company-tern dash-functional tern coffee-mode xterm-color smeargle shell-pop reveal-in-osx-finder pbcopy osx-trash osx-dictionary orgit org-projectile pcache org-present org org-pomodoro alert log4e gntp org-download mwim multi-term mmm-mode markdown-toc markdown-mode magit-gitflow launchctl htmlize helm-gitignore helm-company helm-c-yasnippet gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck evil-magit magit magit-popup git-commit with-editor eshell-z eshell-prompt-extras esh-help diff-hl company-web web-completion-data company-statistics company-go company auto-yasnippet yasnippet auto-dictionary ac-ispell auto-complete go-guru go-eldoc go-mode web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox package-build spacemacs-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
