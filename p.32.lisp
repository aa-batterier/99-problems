; Problem 32.
; Euclid's algorithm.
(defun my-gcd (n1 n2)
  (do* ((n-max (max n1 n2) n-min)
        (n-min (min n1 n2) r)
	(r (mod n-max n-min) (mod n-max n-min)))
       ((zerop r) n-min)))
