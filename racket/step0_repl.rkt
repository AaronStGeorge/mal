#!/usr/bin/env racket
#lang racket

(define (READ str)
  str)

(define (EVAL str)
  str)

(define (PRINT str)
  str)

(define (rep str)
  (PRINT (EVAL (READ str))))

(let loop ()
  (display "user> ")
  (define input (read-line))
  (displayln (rep input))
  (loop))