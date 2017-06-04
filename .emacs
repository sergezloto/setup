; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; scroll line by line
;;(setq scroll-conservatively 1)

;; No tabs
(setq-default indent-tabs-mode nil)

;; Default js-indent is 4
(setq js-indent-level 2)
(setq typescript-indent-level 2)

;; programming modes defaults
(setq whitespace-line-column 160)
(setq whitespace-style `(face tabs spaces trailing lines space-before-tab indentation empty space-after-tab))
;; orig is face tabs spaces trailing lines space-before-tab newline indentation empty space-after-tab space-mark tab-mark newline-mark

;; I like these when programming
(defun add-def-hooks (hook)
  (add-hook hook 'electric-pair-mode)
  ;;(add-hook hook 'whitespace-clean-mode)
  (add-hook hook 'whitespace-mode)
  ;;(add-hook hook 'hs-minor-mode)
  (add-hook hook 'linum-mode)
  )
(add-def-hooks 'prog-mode-hook)

(add-hook 'before-save-hook 'whitespace-cleanup)

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
