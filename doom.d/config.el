;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Omar Baranek"
      user-mail-address "obaranek.dev@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Cascadia Code" :size 18 )
      doom-variable-pitch-font (font-spec :family "Fira Sans") ; inherits `doom-font''s :size
      doom-unicode-font (font-spec :family "Input Mono Narrow" :size 12)
      doom-big-font (font-spec :family "Cascadia Code" :size 19))

(setq doom-themes-enable-bold t)
(setq doom-themes-enable-italic t)
 (custom-set-faces!
   '(font-lock-comment-face :slant italic)
   '(font-lock-keyword-face :slant italic))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-gruvbox-dark-variant "soft")
(setq doom-theme 'doom-gruvbox)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;
(after! flycheck(setq flycheck-check-syntax-automatically '( idle-change new-line save)))

;; (global-tree-sitter-mode)
;; (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

;; (require 'tree-sitter)
;; 'tree-sitter-langs)

(setq company-minimum-prefix-length 1
      company-idle-delay 0.0)

(use-package! lsp-ui)

(use-package web-mode
  :defer t
  :mode ("\\.html\\'" "\\.php\\'"
         "\\.jsx\\'" "\\.tsx\\'"
         "\\.vue\\'" "\\.eex\\'")
  :config
  (setq web-mode-enable-auto-closing t
        web-mode-enable-auto-opening t
        web-mode-enable-auto-indentation t
        web-mode-enable-auto-quoting nil
        web-mode-script-padding 0
        web-mode-style-padding 0))


(add-hook 'after-init-hook 'global-company-mode)
