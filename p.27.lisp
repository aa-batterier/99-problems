; Problem 27.
; Group the elements of a set into disjoint subset.

; Help function who moves every elemnet to the right in the list.
(defun move-to-right (l)
  (mapcar #'(lambda (e)
	      (nth (mod (1- (position e l)) (length l)) l)) l))

; A)
(defun group3 (l)
  (when (equal (length l) 9)
    (labels ((help-group (n inner-list)
	       (cond ((zerop n) nil)
		     (t (cons (list (subseq inner-list 0 2)
				    (subseq inner-list 2 5)
				    (subseq inner-list 5 9))
			      (help-group (1- n) (move-to-right inner-list)))))))
      (help-group (length l) l))))

; B)
(defun group (l group)
  (when (equal (length l) 9)
    (let* ((start (first group))
	   (middle (+ start (second group)))
	   (end (+ middle (third group))))
      (labels ((help-group (n inner-list)
	         (cond ((zerop n) nil)
		       (t (cons (list (subseq inner-list 0 start)
				      (subseq inner-list start middle)
				      (subseq inner-list middle end))
			        (help-group (1- n) (move-to-right inner-list)))))))
        (help-group (length l) l)))))
