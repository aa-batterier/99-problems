; Problem 8.
; Remove consecutive duplicates from a list.
(defun compress (the-list)
  (cond ((null the-list) nil)
	((not (equal (first the-list) (second the-list))) (cons (first the-list) (compress (rest the-list))))
	(t (compress (rest the-list)))))
