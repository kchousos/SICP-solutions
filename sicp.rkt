;; [[file:sicp.org::*1.01][1.01:1]]
#lang sicp

(write (let ()

10
;; 10
(+ 5 3 4)
;; 12
(- 9 1)
;; 8
(/ 6 2)
;; 3
(+ (* 2 4) (- 4 6))
;; 6
(define a 3)
;;
(define b (+ a 1))
;;
(+ a b (* a b))
;; 19
(= a b)
;; #f
(if (and (> b a) (< b (* a b)))
    b
    a)
;; 4
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
;; 16
(+ 2 (if (> b a) b a))
;; 6
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
;; 16))
;; 1.01:1 ends here

;; [[file:sicp.org::*1.02][1.02:1]]
#lang sicp

(write (let ()

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))))
;; 1.02:1 ends here

;; [[file:sicp.org::larger-squares][larger-squares]]
#lang sicp

(write (let ()

(define (proc a b c)
  (cond ((and (> a c) (> b c))
         (+ (* a a) (* b b)))
        ((and (> a b) (> c b))
         (+ (* a a) (* c c)))
        ((and (> b a) (> c a))
         (+ (* b b) (* c c)))))))
;; larger-squares ends here

;; [[file:sicp.org::*1.03][1.03:2]]
#lang sicp

(write (let ()

<<larger-squares>>
(proc 4 2 3)))
;; 1.03:2 ends here
