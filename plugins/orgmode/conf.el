(defmacro by-backend (&rest body)
  `(cl-case org-export-current-backend ,@body))

;; Configure babel to export results
(setq org-babel-default-header-args
      (cons '(:exports . "both")
            (assq-delete-all :exports org-babel-default-header-args)))
