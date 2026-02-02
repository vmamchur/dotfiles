;;; modules/editor.el -*- lexical-binding: t; -*-

(use-package! better-jumper
  :config
  (better-jumper-mode +1)
  (setq better-jumper-context 'window)
  (setq better-jumper-add-jump-behavior 'append)
  (map! :n "C-o" #'better-jumper-jump-backward
        :n "C-i" #'better-jumper-jump-forward))

(defun +evil-center-after-scroll (&rest _)
  "Center the cursor vertically after a scroll."
  (evil-scroll-line-to-center nil))

(advice-add 'evil-scroll-down :after #'+evil-center-after-scroll)
(advice-add 'evil-scroll-up :after #'+evil-center-after-scroll)

(global-set-key (kbd "<mouse-4>") 'scroll-down-line)
(global-set-key (kbd "<mouse-5>") 'scroll-up-line)
