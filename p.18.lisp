; Problem 18.
; Extract a slice from a list.
(defun slice (l start end)
  (subseq l (1- start) end))

(defun slice-v2 (l start end)
  (labels ((help-slice (the-list iterate)
	     (cond ((null the-list) nil)
		   ((zerop iterate) (list (first the-list)))
		   (t (cons (first the-list) (help-slice (rest the-list) (1- iterate)))))))
    (help-slice (nthcdr (1- start) l) (- end start))))
