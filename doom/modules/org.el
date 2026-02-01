;;; org.el -*- lexical-binding: t; -*-

(after! org
  (map! :map org-mode-map
        :n "C-j" #'org-metadown
        :n "C-k" #'org-metaup
        :n "C-h" #'org-metaleft
        :n "C-l" #'org-metaright)
  (setq org-agenda-files (directory-files-recursively "~/Personal/org/" "\\.org$"))
  (setq org-directory "~/Personal/org/"))

(defun my/daily-note ()
  (interactive)
  (let* ((base-dir "~/Personal/org/daily/")
         (today (format-time-string "%Y-%m-%d"))
         (filename (concat base-dir today ".org")))

    (unless (file-exists-p base-dir)
      (make-directory base-dir t))

    (find-file filename)

    (when (= (buffer-size) 0)
      (insert "#+title: " today "\n\n* todo list [/]  \n\n* journal \n"))))

(map! :leader
      :desc "Open daily note"
      "n d" #'my/daily-note)
