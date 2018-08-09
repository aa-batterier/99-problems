; Problem 9 as help function to problem 10.
(defun pack (the-list)
  (when the-list
    (labels ((help-pack (the-the-list sub-list)
	       (cond ((null the-the-list) (list sub-list))
		     ((member (first the-the-list) sub-list)
		      (help-pack (rest the-the-list) (cons (first the-the-list) sub-list)))
		     (t (cons sub-list (help-pack (rest the-the-list) (list (first the-the-list))))))))
      (help-pack (rest the-list) (list (first the-list))))))

; Problem 10.
; Run-length encoding of a list.
(defun encode (the-list)
  (mapcar #'(lambda (sub-list)
	      (list (length sub-list) (first sub-list)))
	  (pack the-list)))
