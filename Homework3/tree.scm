; vi:ai:list:sm

; an empty node is represented as an empty list
; a nonempty node is represented as a list with three elements:
;   - the first element is the integer data
;   - the second element is the left child
;   - the third elemend is the right child

(define (length lst)
    (if (null? lst) 0
        (+ 1 (length(cdr lst)))))

(define (insert x t)
    (cond
        ((null? t) (list x `() `()))
        ((< x (car t)) (list (car t) (insert x (cadr t)) (caddr t)))
        ((> x (car t)) (list (car t) (cadr t) (insert x (caddr t))))
        (else t)))


(define (member? x t)
    (cond
        ((null? t) #f)
        ((equal? x (car t)) #t)
        ((< x (car t)) (member? x (cadr t)))
        ((> x (car t)) (member? x (caddr t)))
        (else #f)))


