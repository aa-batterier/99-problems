; Problem 55.

; Function ISTREE checks whether a given term represents a binary tree.
(defun istree (tree)
  (cond ((atom tree) t)
	((= (length tree) 3) (and (istree (second tree))
				  (istree (third tree))))))

; Generate binary trees version 1.
(defun generate-binary-tree-v1 (nodes)
  (cond ((zerop nodes) nil)
        ((= nodes 1) (list 'x nil nil))
        (t (let ((next-way (generate-binary-tree-v1 (1- nodes))))
             (list 'x
                   (if (istree next-way) next-way)
                   (if (istree next-way) next-way))))))

; Generate binary trees version 2.
(defun generate-binary-tree-v2 (nodes)
  (if (>= 0 nodes) nil
    (let ((sub-tree (generate-binary-tree-v2 (- nodes 2))))
      (cons 'x (list (if (istree sub-tree) sub-tree)
                     (if (istree sub-tree) sub-tree))))))
