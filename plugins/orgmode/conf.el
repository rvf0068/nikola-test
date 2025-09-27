(defmacro by-backend (&rest body)
  `(cl-case org-export-current-backend ,@body))
