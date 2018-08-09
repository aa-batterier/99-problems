; Problem 9.
; Pack consecutive duplicates of list elements into sublists.
(defun pack (the-list)
  (when the-list
    (labels ((help-pack (the-the-list sub-list)
	       (cond ((null the-the-list) (list sub-list))
		     ((member (first the-the-list) sub-list)
		      (help-pack (rest the-the-list) (cons (first the-the-list) sub-list)))
		     (t (cons sub-list (help-pack (rest the-the-list) (list (first the-the-list))))))))
      (help-pack (rest the-list) (list (first the-list))))))
