; Problem 39.
; Given a range of integers the function PRIME-RANGE constructs a list with
; all the prime numbers in the specified range.
(defun prime-range (n1 n2)
  (let ((start (min n1 n2))
	(end (max n1 n2)))
    (cond ((>= start end) nil)
	  ((< start 2) (prime-range (1+ start) end))
	  (t (do ((i 2 (1+ i)))
	         ((or (> i (sqrt start)) (= start 2) (= start 3)) (cons start (prime-range (1+ start) end)))
	       (when (zerop (mod start i))
		 (return (prime-range (1+ start) end))))))))
