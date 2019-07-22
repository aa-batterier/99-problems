; Problem 1.
; Find the last box of a list.
(defun my-last (l)
  (last l))

(defun my-last-v2 (l)
  (if l
    (list (first (reverse l)))))

(defun my-last-v3 (l)
  (cond ((null l) nil)
	((null (cdr l)) (list (first l)))
	(t (my-last-v3 (cdr l)))))

(defmacro my-last-macro (l)
  `(if ,l
     (list (first (reverse ,l)))))
