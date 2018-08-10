; Problem 22.
; Create a range.
(defun range (start end)
  (when (<= start end)
    (cond ((equal start end) (list end))
	  (t (cons start (range (1+ start) end))))))

(defun range-v2 (start end)
  (when (<= start end)
    (do* ((iterate end (1- iterate))
	  (result (list iterate) (cons iterate result)))
         ((equal iterate start) result))))
