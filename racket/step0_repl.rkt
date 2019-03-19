#!/usr/bin/env racket
#lang racket

(module m racket/base
  (provide (all-defined-out))
  (define-namespace-anchor a)
  (define x 11))

(require 'm)

(define ns (namespace-anchor->namespace a))

(current-prompt-read
 (lambda ()
   (display "user> ")
   (let ([in ((current-get-interaction-input-port))])
     ((current-read-interaction) (object-name in) in))))

(current-namespace ns)

(read-eval-print-loop)