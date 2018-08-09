; Problem 6.
; Find out if a list is a palindrome.
(defun palindromep (the-list)
  (equal (reverse the-list) the-list))

(defun palindromep-v2 (the-list)
  (every #'(lambda (e) (equal e t))
	 (mapcar #'equal the-list (reverse the-list))))

(defun palindromep-v3 (the-list)
  (cond ((null the-list) t)
	((not (equal (first the-list) (car (last the-list)))) nil)
	(t (palindromep-v3 (subseq the-list 2 (1- (length the-list)))))))

(defun palindromep-v4 (the-list)
  (do* ((loop-list the-list (subseq loop-list 2 (1- (length the-list))))
	(first-element (first loop-list) (first loop-list))
	(last-element (car (last loop-list)) (car (last loop-list))))
       ((null loop-list) t)
    (when (not (equal first-element last-element))
      (return nil))))
