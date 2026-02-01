;;; modules/ui.el -*- lexical-binding: t; -*-

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
(setq doom-font (font-spec :family "GohuFont 14 Nerd Font" :size 14))

(setq doom-theme 'doom-dark+)
(setq display-line-numbers-type 'relative)

;; Disable double-buffering to fix display artifacts
(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))
(modify-all-frames-parameters '((inhibit-double-buffering . t)))
