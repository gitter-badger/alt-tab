;; Usuful buffer elisp functions

;; return the name of current buffer
;;(buffer-name)

;; return the full path of the file
;;(buffer-file-name)

;; switch to a given buffer
;;(set-buffer myBuffer)

;; close a given buffer
;;(kill-buffer myBuffer)

;; use a temp buffer to manipulate string
;;(with-temp-buffer
;;  (insert myStr)
;;   manipulate the string here
;;  (buffer-string) ; get result
;;)

;; Defining the variables

(defvar default-buffer-amount 4 "Default buffer amount wehn loading your Emacs file.")
