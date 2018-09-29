; Problem 31.
; Determine if an positive integer is a prime number.
(defun primep (n)
  (let ((n-sqrt (sqrt n)))
    (labels ((help-prime (a b)
	       (cond ((> a b) t)
		     ((zerop (mod n a)) nil)
		     (t (help-prime (1+ a) b)))))
      (cond ((< n 2) nil)
	    ((= n 2) t)
	    (t (if (> n-sqrt 2)
		 (help-prime 2 n-sqrt)
		 (help-prime 2 (1- n))))))))

; Version 2.
(defun primep-v2 (n)
  (cond ((< n 2) nil)
	((or (= n 2) (= n 3)) t)
	(t (do ((i 2 (1+ i)))
	       ((> i (sqrt n)) t)
	     (and (zerop (mod n i)) (return nil))))))
