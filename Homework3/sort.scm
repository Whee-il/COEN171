; vi:ai:lisp:sm

(define (filter pred lst)
    (cond
    ((null? lst) lst)
    ((pred (car lst)) (cons (car lst) (filter pred (cdr lst))))
    (else (filter pred (cdr lst)))))

(define (quicksort lst)
    (if (null? lst) lst
        (let
            ((lowerhalf (filter (lambda (x) (< x (car lst))) (cdr lst)))
             (upperhalf (filter (lambda (x) (>= x (car lst))) (cdr lst))))
            (append (quicksort lowerhalf) (cons (car lst) (quicksort upperhalf))))))