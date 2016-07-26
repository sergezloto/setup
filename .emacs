;; No tabs
(setq-default indent-tabs-mode nil)

;; programming modes defaults
(add-hook 'prog-mode 'electric-pair-mode)
(add-hook 'prog-mode 'linum-mode)
(add-hook 'prog-mode 'whitespace-clean-mode)
(add-hook 'prog-mode 'hs-minor-mode)

(setq js-indent-level 2)

(show-trailing-whitespace t)

;; Listen to emacsclient
(server-start)

;; Folding facility
(require 'loccur)
;; defines shortcut for loccur of the current word
(define-key global-map [(control o)] 'loccur-current)
;; defines shortcut for the interactive loccur command
(define-key global-map [(control meta o)] 'loccur)
;; defines shortcut for the loccur of the previously found word
(define-key global-map [(control shift o)] 'loccur-previous-match)

