(goto 0 10)
(seth 0)
(speed 11)
(bgcolor '"#000000")
(color '"#a3e8ff")

(define (draw-rotate-tri3 len n rotate-unit)
        (cond ((< n 1) (pu))
              ((= n 1) (triangle len))
              (else (begin (triangle len)
                           (lt 150)
                           (fd (/ len 1.732))
                           (rt (- 180 rotate-unit))
                           (fd (/ (* 1.04 len) 1.732))
                           (draw-rotate-tri3 (* len 1.04)  
                                            (- n 1) 
                                            rotate-unit
                           )
                    )
              )
        )
)

(draw-rotate-tri3 17 121 6)