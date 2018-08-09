; Problem 3.
; Find the K'th element of a list. The first element is number 1.
(defun element-at (the-list n-th)
  (if (zerop n-th) nil
    (nth (1- n-th) the-list)))

(defun element-at-v2 (the-list n-th)
  (cond ((null the-list) nil)
	((equal 1 n-th) (first the-list))
	(t (element-at-v2 (rest the-list) (1- n-th)))))
