; Problem 54.
; Function ISTREE checks whether a given term represents a binary tree.
(defun istree (tree)
  (cond ((atom tree) t)
	((= (length tree) 3) (and (istree (second tree))
				  (istree (third tree))))))
