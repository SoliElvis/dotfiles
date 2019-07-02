(use-package evil-org
  :after org
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys)
  (lambda ()
    (evil-org-set-key-theme))
  (evil-define-key 'normal evil-org-mode-map
    (kbd "M-l") 'org-metaright
    (kbd "M-h") 'org-metaleft
    (kbd "M-k") 'org-metaup
    (kbd "M-j") 'org-metadown
    (kbd "M-L") 'org-shiftmetaright
    (kbd "M-H") 'org-shiftmetaleft
    (kbd "M-K") 'org-shiftmetaup
    (kbd "M-J") 'org-shiftmetadown
    (kbd "M-RET") 'org-meta-return
    "<" 'org-metaleft
    ">" 'org-metaright
    "-" 'org-cycle-list-bullet
    (kbd "TAB") 'org-cycle))
