; Problem 13.
; The same as problem 11.
(defun encode-direct (the-list)
  (when the-list
    (labels ((help-encode (the-the-list sub-list)
	       (cond ((null the-the-list)
		      (list (if (equal 1 (first sub-list)) (second sub-list) sub-list)))
		     ((member (first the-the-list) sub-list)
		      (help-encode (rest the-the-list) (list (1+ (first sub-list)) (second sub-list))))
		     (t (cons (if (equal 1 (first sub-list)) (second sub-list) sub-list)
			      (help-encode (rest the-the-list) (list 1 (first the-the-list))))))))
	    (help-encode (rest the-list) (list 1 (first the-list))))))
