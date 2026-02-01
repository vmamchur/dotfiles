;;; modules/lsp.el -*- lexical-binding: t; -*-

(setq lsp-use-plists nil)

(use-package! treesit-auto
  :custom
  (treesit-auto-install 'prompt)
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))

(add-hook! '(typescript-ts-mode-hook tsx-ts-mode-hook) #'lsp!)

(after! lsp-mode
  (add-to-list 'lsp-language-id-configuration '(tsx-ts-mode . "typescriptreact"))
  (add-to-list 'lsp-language-id-configuration '(typescript-ts-mode . "typescript"))
  (setq lsp-auto-guess-root t)
  (setq lsp-warn-no-matched-clients nil))

(setq lsp-completion-provider :none)

(defun my/lsp-mode-setup-completion ()
  (setf (alist-get 'styles (alist-get 'lsp-capf completion-category-defaults))
        '(flex)))

(add-hook 'lsp-completion-mode-hook #'my/lsp-mode-setup-completion)
