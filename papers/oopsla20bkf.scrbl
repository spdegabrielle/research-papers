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
              #:title    "Macros for Domain-Specific Languages"
              #:author   "Ballantyne, King, Felleisen "
              #:date     "2020"
              #:location "OOPSLA2020-SPLASH2020"
              #:url      "http://design.cs.iastate.edu/splash20/oopsla20/oopsla20main-p625-p.pdf"))