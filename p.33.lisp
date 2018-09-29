; Problem 33.
; Determine whether two positive integer numbers are coprime.
(defun coprime (n1 n2)
  (when (= (gcd n1 n2) 1) t))
