; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; scroll line by line
;;(setq scroll-conservatively 1)

;; scroll compilation output
(setq compilation-scroll-output `first-error)

;; No tabs
(setq-default indent-tabs-mode nil)

;; Default js-indent is 4
(setq js-indent-level 2)
(setq typescript-indent-level 2)

;; programming modes defaults
(setq show-paren-delay 0)
(setq show-paren-style 'mixed) ; 'parenthesis / 'expression
(setq blink-matching-paren t)
(setq blink-matching-delay 1)
(show-paren-mode nil)

(setq whitespace-line-column 160)
(setq whitespace-style `(tabs spaces trailing lines space-before-tab indentation empty space-after-tab))
;; orig is face tabs spaces trailing lines space-before-tab newline indentation empty space-after-tab space-mark tab-mark newline-mark

;; Prettify symbols                                                                                                                           
(defun add-pretty-symbols ()
  (setq prettify-symbols-alist
        '(
          ("lambda" . 955) ; λ
          ("->" . 8594)    ; →
          ("=>" . 8658)    ; ⇒
          ("map" . 8614)   ; ↦
          ("==" . 10869)   ; ⩵
          ("!=" . 8800)    ; ≠
          ("<=" . 8804)    ; ≤
          (">=" . 8805)    ; ≥
          ("<<" . 8810)    ; ≪
          (">>" . 8811)    ; ≫
          (":=" . #x2254)  ; ≔
          ("sqrt" . 8730)  ; √
          ("for" . 8704)   ; ∀
          ("in" . 8712)    ; ∈
          )))
(global-prettify-symbols-mode 1)

;; I like these when programming
(defun add-def-hooks (hook)
  (add-hook hook 'electric-pair-mode)
  ;;(add-hook hook 'whitespace-clean-mode)
  (add-hook hook 'whitespace-mode)
  ;;(add-hook hook 'hs-minor-mode)
  (add-hook hook 'linum-mode)
  (add-hook hook 'add-pretty-symbols)

  )
(add-def-hooks 'prog-mode-hook)

(add-hook 'before-save-hook 'whitespace-cleanup)

(add-hook 'yaml-mode-hook 'highlight-indent-guides-mode)


;; Listen to emacsclient
(server-start)

;; Folding facility
;; (require 'loccur)
;; ;; defines shortcut for loccur of the current word
;; (define-key global-map [(control o)] 'loccur-current)
;; ;; defines shortcut for the interactive loccur command
;; (define-key global-map [(control meta o)] 'loccur)
;; ;; defines shortcut for the loccur of the previously found word
;; (define-key global-map [(control shift o)] 'loccur-previous-match)

;; Python mode for scons files
(setq auto-mode-alist
      (cons '("SConstruct" . python-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("SConscript" . python-mode) auto-mode-alist))
