; Function RANGE from problem 22 as help function to problem 24.
(defun range (start end)
  (when (<= start end)
    (cond ((equal start end) (list end))
	  (t (cons start (range (1+ start) end))))))

; Problem 20 here as help function for problem 24.
(defun remove-at (l r)
  (if (> r (length l)) l
    (append (subseq l 0 r) (nthcdr (1+ r) l))))

; Problem 24.
; Draw N different random numbers from the set 1 to M.
(defun lotto-select (n m)
  (let ((lotto-set (range 1 m)))
    (labels ((help-lotto (l i)
	       (let* ((lotto-length (length l))
		      (rand-pos (random lotto-length))
		      (rand-number (nth rand-pos l)))
		 (cond ((zerop i) nil)
		       (t (cons rand-number (help-lotto (remove-at l rand-pos) (1- i))))))))
      (help-lotto lotto-set n))))

(defun lotto-select-v2 (n m)
  (do* ((lotto-set (range n m))
	(lotto-length (length lotto-set) (length lotto-set))
	(rand-pos (random lotto-length) (random lotto-length))
	(rand-number (nth rand-pos lotto-set) (nth rand-pos lotto-set))
	(iterate n (1- iterate))
	(result (list rand-number) (cons rand-number result)))
       ((zerop (1- iterate)) result)
    (setf lotto-set (remove-at lotto-set rand-pos))))
