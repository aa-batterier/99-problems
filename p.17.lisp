; Problem 17.
; Split a list into two parts.
(defun split (l n)
  (list (subseq l 0 n) (subseq l n (length l))))

(defun split-v2 (l n)
  (labels ((help-split (the-list iterate sub-list)
	     (cond ((zerop iterate) (cons (reverse sub-list) (list the-list)))
		   (t (help-split (rest the-list) (1- iterate) (cons (first the-list) sub-list))))))
    (help-split l n nil)))
