; Problem 28.
; Sorting a list of lists according to length of sublists.

; A)
(defun lsort (l)
  (if (<= (length l) 1) l
    (append (lsort (remove-if-not #'(lambda (e) (< (length e) (length (first l)))) (rest l)))
	    (list (first l))
	    (lsort (remove-if-not #'(lambda (e) (>= (length e) (length (first l)))) (rest l))))))

; B)
(defun lfsort (l)
  (labels ((collect (the-list)
	     (if (null the-list) the-list
	       (cons (remove-if-not #'(lambda (e) (equal (length e) (length (first the-list)))) the-list)
		     (collect (remove-if #'(lambda (e) (equal (length e) (length (first the-list)))) the-list))))))
    (apply #'append (lsort (collect l)))))
