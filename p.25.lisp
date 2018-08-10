; Function REMOVE-AT from problem 20 as help function to problem 25.
(defun remove-at (l p)
  (if (> p (length l)) l
    (append (subseq l 0 p) (nthcdr (1+ p) l))))

; Problem 25.
; Generate a random permutation of the elements of a list.
(defun rnd-permu (l)
  (let ((l-length (length l)))
    (labels ((help-permu (loop-l n)
	       (let* ((rand-pos (random (if (zerop n) 1 n)))
		      (rand-ele (nth rand-pos loop-l)))
		 (if (zerop n) nil
		   (cons rand-ele (help-permu (remove-at loop-l rand-pos) (1- n)))))))
      (help-permu l l-length))))

(defun rnd-permu-v2 (l)
  (do* ((iterate (length l) (1- iterate))
	(loop-list l (remove-at loop-list rand-pos))
	(rand-pos (random iterate) (random iterate))
	(rand-ele (nth rand-pos l) (nth rand-pos loop-list))
	(result (list rand-ele) (cons rand-ele result)))
       ((zerop (1- iterate)) result)))
