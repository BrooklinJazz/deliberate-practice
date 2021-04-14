(defvar *name* (read))

(print "What's your name?")

(defun hello-you (*name*)
                (format t "Hello ~a! ~%" *name*))

(setq *print-case* :capitalize)

(hello-you *name*)