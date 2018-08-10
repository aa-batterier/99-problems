; Problem 21.
; Insert an element at a given position into a list.
(defun insert-at (e l p)
  (append (subseq l 0 (1- p)) (list e) (nthcdr (1- p) l)))

(defun insert-at-v2 (e l p)
  (cond ((zerop (1- p)) (cons e l))
	(t (cons (first l) (insert-at-v2 e (rest l) (1- p))))))
