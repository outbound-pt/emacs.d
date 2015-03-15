;;; Compiled snippets and support files for `prog-mode'
;;; .yas-setup.el support file if any:
;;;
(defun yas-with-comment (str)
  (format "%s%s%s" comment-start str comment-end))
;;; Snippet definitions:
;;;
(yas-define-snippets 'prog-mode
                     '(("fi" "`(yas-with-comment \"FIXME: \")`" "fixme" nil nil nil nil nil nil)
                       ("t" "`(yas-with-comment \"TODO: \")`" "todo" nil nil nil nil nil nil)
                       ("x" "`(yas-with-comment \"XXX: \")`" "xxx" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Wed Mar 11 22:07:06 2015
