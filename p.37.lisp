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

; The same as problem 35 but grouping together the same numbers.
(defun prime-factors-mult (n)
  (labels ((group-by (l)
	     (cond ((null l) nil)
		   (t (cons (list (first l) (length (remove-if-not #'(lambda (e) (equal e (first l))) l)))
			    (group-by (remove-if #'(lambda (e) (equal e (first l))) l)))))))
    (group-by (prime-factors n))))

; Problem 37.
; Calculate Euler's totient function phi(m) (improved version of problem 34).
; I don't get the right outcome, I don't know what's the problem is, the code seems right,
; so it could be the algorithm.
(defun totient-phi-improved (n)
;  (labels ((help-phi (l)
;	     (cond ((null l) 0)
;		   ;(t (+ (expt (* (1- (caar l)) (caar l)) (1- (cadar l))) (help-phi (cdr l)))))))
;		   (t (+ (* (1- (caar l)) (expt (caar l) (1- (cadar l)))) (help-phi (cdr l)))))))
    (help-phi (prime-factors-mult n)));)

(defun help-phi (l)
  (cond ((null l) 0)
	(t (+ (* (1- (caar l)) (expt (caar l) (1- (cadar l)))) (help-phi (cdr l))))))
