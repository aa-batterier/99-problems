; Problem 19.
; Rotate a list N places to the left.
(defun rotate (l n)
  (let* ((length-list (length l))
	 (start (mod n length-list)))
    (append (subseq l start length-list) (subseq l 0 start))))
