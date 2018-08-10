; Problem 20 here as help function for problem 23.
(defun remove-at (l r)
  (append (subseq l 0 r) (nthcdr r l)))

; Problem 23.
; Extract a given number of random selected elements from a list.
(defun rnd-select (l n)
  (let* ((rand-pos (random (length l)))
	 (rand-ele (nth rand-pos l)))
    (cond ((zerop n) nil)
	  (t (cons rand-ele (rnd-select (remove-at l rand-pos) (1- n)))))))
