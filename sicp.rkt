;; [[file:sicp.org::*1.1][1.1:1]]
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
;; 1.1:1 ends here

;; [[file:sicp.org::*1.2][1.2:1]]
#lang sicp

(write (let ()

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))))
;; 1.2:1 ends here

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

;; [[file:sicp.org::*1.3][1.3:2]]
#lang sicp

(write (let ()

<<larger-squares>>
(proc 4 2 3)))
;; 1.3:2 ends here

;; [[file:sicp.org::*1.6][1.6:1]]
#lang sicp

(write (let ()

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))))
;; 1.6:1 ends here

;; [[file:sicp.org::*1.6][1.6:2]]
#lang sicp

(write (let ()

(new-if (= 2 3) 0 5)
5
(new-if (= 1 1) 0 5)
0))
;; 1.6:2 ends here

;; [[file:sicp.org::*1.6][1.6:3]]
#lang sicp

(write (let ()

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))))
;; 1.6:3 ends here

;; [[file:sicp.org::cube-root][cube-root]]
#lang sicp

(write (let ()

(define (cube x) (* x x x))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.0000001))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))))
;; cube-root ends here

;; [[file:sicp.org::*1.8][1.8:2]]
#lang sicp

(write (let ()

<<cube-root>>
(cube-root 27)))
;; 1.8:2 ends here
