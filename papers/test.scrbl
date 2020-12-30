#lang scribble/manual

@(provide ref)



@;(bib-entry #:key key	 	 	 	 
#:title title	 	 	 	 
#:is-book? is-book?	 	 	 	 
#:author author	 	 	 	 
#:location location	 	 	 	 
#:date date	 	 	 	 
#:url url	 	 	 	 
#:note note)

@(define ref
   (bib-entry #:key      "REF"
              #:title    "Reference: Racket"
              #:author   "Matthew Flatt and PLT"
              #:date     "2010"
              #:location "PLT Inc."
              #:note     "PLT-TR-2010-1"
              #:url      "http://racket-lang.org/tr1/"))

