; Test if a number is a prime number.
(defun primep (n)
  (cond ((< n 2) nil)
	((or (= n 2) (= n 3)) t)
	(t (do ((i 2 (1+ i)))
	       ((> i (sqrt n)) t)
	     (and (zerop (mod n i)) (return nil))))))

; Returns the next larger prime number.
(defun next-prime (p)
  (do ((next (1+ p) (1+ next)))
      ((primep next) next)))

; Constructs a list containing the prime factors of a given positive integer.
(defun prime-factors (n)
  (if (= n 1) nil
    (do ((prime 2 (next-prime prime)))
        ((zerop (mod n prime)) (cons prime (prime-factors (/ n prime)))))))

; Problem 36.
; The same as problem 35 but grouping together the same numbers.
(defun prime-factors-mult (n)
  (labels ((group-by (l)
	     (cond ((null l) nil)
		   (t (cons (list (first l) (length (remove-if-not #'(lambda (e) (equal e (first l))) l)))
			    (group-by (remove-if #'(lambda (e) (equal e (first l))) l)))))))
    (group-by (prime-factors n))))
