; Problem 12.
; Decode a run-length encoded list.
(defun decode (encode-list)
  (reduce #'append
	  (mapcar #'(lambda (element)
		      (if (atom element)
			(list element)
			(make-list (first element) :initial-element (second element))))
		  encode-list)))
