; Problem 20.
; Remove the K'th element from a list.
(defun remove-at (l r)
  (append (subseq l 0 (1- r)) (nthcdr r l)))

(defun remove-at-v2 (l r)
  (cond ((zerop (1- r)) (rest l))
	(t (cons (first l) (remove-at-v2 (rest l) (1- r))))))
