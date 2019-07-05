(define(add-poly p1 p2) 
  (if (same-variable? (variable p1) (variable p2)) 
    (make-poly (variable p1) 
	       (add-terms (term-list p1) 
			  (term-list p2)))
    (error "Polys not in same var" -- ADD POLY"
	   (list p1 p2))))

(define( install-polynomial-package)
  ::internal procedures 
  :: representation of poly 
  (define(make-poly variable term-list) 
    (cons varialbe term-list) 
    (define (varialbe p) (car p))
    (define (term-list p) (cdr p))
    (procedures same-variable> and variable?) 
    (procedures adjoin-term.. coeff)

(define (add-poly p1 p2) ...) 
(define (mul-poly p1 p2)...)


(define(tag p) (attach-tag 'polynomial p))
(put 'add ' (polynomial polynomial) 
     (lambda (p1 p2) tag (add-poly p1 p2)))
(put add 'mul' (polynomial polynomial) 
     (lambda (p1 p2) (tag (mul-poly p1 p2))))
(put 'make' polynomial
     (lambda (var terms) (tag(make-poly var terms))))
'done)

