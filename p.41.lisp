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

; Goldbach's conjecture.
(defun goldbach (n)
  (do* ((p1 2 (next-prime p1))
	(p2 (- n p1) (- n p1)))
       ((primep p2) (list p1 p2))))

; Problem 41.
; A list of Goldbach compositions.
(defun goldbach-list (start end &optional (jump 2))
  (cond ((> start end) nil)
	((zerop (mod start 2))
	 (let ((gold (goldbach start)))
	   (format t "~&~S = ~S + ~S~%" start (first gold) (second gold))
	   (goldbach-list (+ start jump) end jump)))
	(t (goldbach-list (1+ start) end jump))))
