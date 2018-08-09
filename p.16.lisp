; Problem 16.
; Drop every N'th element from a list.
(defun drop (the-list n-th)
  (let ((length-list (length the-list)))
    (if (null the-list) nil
      (append (subseq the-list 0 (if (> (1- n-th) length-list) length-list (1- n-th)))
	  (drop (nthcdr n-th the-list) n-th)))))
