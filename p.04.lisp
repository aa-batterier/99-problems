; Problem 4.
; Find the number of elements of a list.
(defun elements-in-list (the-list)
  (if (null the-list) 0
    (1+ (elements-in-list (rest the-list)))))

(defun elements-in-list-v2 (the-list)
  (do ((iterate 0 (1+ iterate))
       (elements the-list (rest elements)))
      ((null elements) iterate)))
