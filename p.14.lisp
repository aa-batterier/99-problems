; Problem 14.
; Duplicate the elements of a list.
(defun dupli (the-list)
  (reduce #'append
	  (mapcar #'(lambda (element)
		      (list element element))
		  the-list)))

(defun dupli-v2 (the-list)
  (if (null the-list) nil
    (cons (first the-list) (cons (first the-list) (dupli-v2 (rest the-list))))))

(defun dupli-v3 (the-list)
  (let ((result nil))
    (dolist (element the-list result)
      (setf result (append result (list element element))))))
