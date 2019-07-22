; Problem 1.
; Find the last box of a list.

; Simple solution.
(defun my-last (l)
  (last l))

; Little bit more advance solution.
(defun my-last-v2 (l)
  (if l
    (list (first (reverse l)))))

; Recursive solution.
(defun my-last-v3 (l)
  (cond ((null (cdr l)) l)
	(t (my-last-v3 (cdr l)))))

; Macro solution.
(defmacro my-last-macro (l)
  `(if ,l
     (list (first (reverse ,l)))))
