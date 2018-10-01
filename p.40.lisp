; Function PRIMEP checks if a number is a prime number.
(defun primep (n)
  (cond ((< n 2) nil)
	((or (= n 2) (= n 3)) t)
	(t (do ((i 2 (1+ i)))
	       ((> i (sqrt n)) t)
	     (when (zerop (mod n i))
	       (return nil))))))

; Function NEXT-PRIME returns the next larger prime number.
(defun next-prime (p)
  (let ((np (1+ p)))
    (if (primep np) np
      (next-prime np))))


; Problem 40.
; Goldbach's conjecture.
(defun goldbach (n)
  (do* ((p1 2 (next-prime p1))
	(p2 (- n p1) (- n p1)))
       ((primep p2) (list p1 p2))))
