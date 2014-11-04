;; Welcome to Alt-Tab
;; Created by: Luke Shimkus

;; Sessions
;; Sessions
;; Sessions

;; Use only one desktop for now

(setq desktop-path '("~/.emacs.d/"))
(setq desktop-dirname "~/.emacs.d/")
(setq desktop-base-file-name "workflow-desktop")

(add-hook 'desktop-after-read-hook
	  '(lambda ()
	     (setq desktop-dirname-tmp desktop-dirname)
	     (setq desktop-dirname desktop-dirname-tmp)))

(defun saved-session ()
  (file-exists-p (concat desktop-dirname "/" desktop-base-file-name)))

;; Use session-restore to restore the desktop manually

(defun session-restore ()
  "Restore a saved emacs session."
  (interactive)
  (if (saved-session)
      (desktop-read)
    (message "No desktop found.")))

;; Use session-save to save the desktop manually

(defun session-save ()
  "Save an emacs session."
  (interactive)
  (if (saved-session)
      (if (y-or-n-p "Overwrite existing desktop? ")
	  (desktop-save-in-desktop-dir)
	(message "Session not saved."))
    (desktop-save-in-desktop-dir)))

;; Buffers
;; Buffers
;; Buffers

;; Transposing Buffers

(defun transpose-buffers (arg)
  "Transpose the buffers shown in two windows."
  (interactive "p")
  (let ((selector (if (>= arg 0) 'next-window 'previous-window)))
    (while (/= arg 0)
      (let ((this-win (window-buffer))
            (next-win (window-buffer (funcall selector))))
        (set-window-buffer (selected-window) next-win)
        (set-window-buffer (funcall selector) this-win)
        (select-window (funcall selector)))
      (setq arg (if (plusp arg) (1- arg) (1+ arg))))))

;; Open buffer in new frame

(defun open-buffer-frame ()
  "Opens a buffer in a new frame"
  (interactive)
  (make-frame-command)
  )

;; Close all buffers except the current one

(defun kill-other-buffers ()
      "Kill all other buffers."
      (interactive)
      (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))


;; Getting around
;; Getting around
;; Getting around

(defun alt-tab-mode ()
  (interactive)
  (switch-to-buffer "*Buffer List*")
  )

(global-set-key (kbd "C-x C-b") 'alt-tab-mode)



;; Provide!

(provide 'alt-tab)

