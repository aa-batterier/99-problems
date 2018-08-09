; Problem 7.
; Flatten a nested list structure.
(defun flat (tree)
  (cond ((null tree) nil)
	((atom tree) (list tree))
	(t (append (flat (car tree))
		   (flat (cdr tree))))))
