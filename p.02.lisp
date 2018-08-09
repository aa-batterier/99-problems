; Problem 2.
; Find the last but one box of a list.
(defun my-but-last (the-list)
  (let ((length-list (length the-list)))
    (subseq the-list (- length-list 2) length-list)))

(defun my-but-last-v2 (the-list)
  (let ((rv-list (reverse the-list)))
    (list (second rv-list) (first rv-list))))
