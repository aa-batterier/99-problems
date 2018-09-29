; Problem 34.
; Calculate Euler's totient function phi(m).
(defun totient-phi (n)
  (labels ((help-phi (i)
	     (cond ((= n 1) 1)
		   ((> i n) 0)
		   ((= (gcd n i) 1) (1+ (help-phi (1+ i))))
		   (t (help-phi (1+ i))))))
    (help-phi 1)))

; Version 2.
(defun totient-phi-v2 (n)
  (do ((i 1 (1+ i))
       (rv 0))
      ((> i n) rv)
    (cond ((= n 1) (return 1))
	  ((= (gcd n i) 1) (setf rv (1+ rv))))))
