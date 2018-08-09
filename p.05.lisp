; Problem 5.
; Reverse a list.
(defun my-reverse (the-list)
  (cond ((null the-list) nil)
	((null (cdr the-list)) (list (first the-list)))
	(t (append (my-reverse (rest the-list)) (list (first the-list))))))

(defun my-reverse-v2 (the-list)
  (let ((result nil))
    (dolist (element the-list result)
      (setf result (cons element result)))))
