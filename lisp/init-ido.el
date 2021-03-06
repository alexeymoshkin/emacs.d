;; Use C-f during file selection to switch to regular find-file
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point nil)
(setq ido-auto-merge-work-directories-length -1)
(setq ido-use-virtual-buffers t)
(setq-default org-completion-use-ido t)
(setq-default magit-completing-read-function 'magit-ido-completing-read)

(when (maybe-require-package 'ido-ubiquitous)
  (ido-ubiquitous-mode t))

(require-package 'idomenu)

;; Allow the same buffer to be open in different frames
(setq ido-default-buffer-method 'selected-window)


(provide 'init-ido)
