; Problem 15.
; Replicate the elements of a list a given number of times.
(defun repli (the-list n-times)
  (reduce #'append
	  (mapcar #'(lambda (element)
		      (make-list n-times :initial-element element))
		  the-list)))

(defun repli-v2 (the-list n-times)
  (if (null the-list) nil
    (append (make-list n-times :initial-element (first the-list))
	    (repli-v2 (rest the-list) n-times))))
