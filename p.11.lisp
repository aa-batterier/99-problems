; Problem 9 as help function to problem 11.
(defun pack (the-list)
  (when the-list
    (labels ((help-pack (the-the-list sub-list)
	       (cond ((null the-the-list) (list sub-list))
		     ((member (first the-the-list) sub-list)
		      (help-pack (rest the-the-list) (cons (first the-the-list) sub-list)))
		     (t (cons sub-list (help-pack (rest the-the-list) (list (first the-the-list))))))))
      (help-pack (rest the-list) (list (first the-list))))))

; Problem 11.
; A modification of problem 10 in file p.10.lisp.
(defun encode (the-list)
  (mapcar #'(lambda (sub-list)
	      (if (equal 1 (length sub-list))
		(first sub-list)
		(list (length sub-list) (first sub-list))))
	  (pack the-list)))
