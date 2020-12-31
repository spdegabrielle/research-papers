# Racket Research Papers

Some research papers for the [Racket](https://racket-lang.org/)
ecosystem of languages, tools and libraries.

## 1. Introduction

This is an attempt to collate research papers relating to the Racket
ecosystem of tools including the Racket language, DrRacket IDE, `raco`
command line tools, Slideshow, Scribble and other tools and languages
built with Racket.

To add a new publication create a PR to add a new file to the `papers`
folder with the following text

```racket
#lang scribble/manual                                                          
                                                                               
@(provide ref)                                                                 
                                                                               
@(define ref                                                                   
   (bib-entry #:key      "REF"                                                 
              #:title    "Dependent Type Systems as Macros"                    
              #:author   "Chang, Ballantyne, Turner, Bowman"                   
              #:date     "2020"                                                
              #:location "POPL"                                                
              #:url      "https://www2.ccs.neu.edu/racket/pubs/popl20-cbtb.pdf"
              #:note     "PLT-TR-2010-1"))                                     
```

## Bibliography

\[REF\] Caldwell, Garnock-Jones, Felleisen , “Typed Dataspace Actors,” Journal                                                                            
        of Functional Programming, 2020.                                                                                                                  
        [`https://www2.ccs.neu.edu/racket/pubs/cgjf-jfp20.pdf`](https://www2.ccs.neu.edu/racket/pubs/cgjf-jfp20.pdf)                                      
        Also see the actual JFP version:                                                                                                                  
        http://dx.doi.org/10.1017/S0956796820000246                                                                                                       
\[REF\] Andersen, Ballantyne, Felleisen, “Adding Interactive Visual Syntax to                                                                             
        Textual Code,” OOPSLA 2020, 2020.                                                                                                                 
        [`https://www2.ccs.neu.edu/racket/pubs/oopsla20-abf.pdf`](https://www2.ccs.neu.edu/racket/pubs/oopsla20-abf.pdf)                                  
\[REF\] Andersen, Ballantyne, Felleisen, “Adding Interactive Visual Syntax to                                                                             
        Textual Code(Video),” OOPSLA 2020, 2020.                                                                                                          
        [`hhttps://youtu.be/8htgAxJuK5c`](hhttps://youtu.be/8htgAxJuK5c)                                                                                  
\[REF\] Ballantyne, King, Felleisen , “Macros for Domain-Specific Languages,”                                                                             
        OOPSLA2020-SPLASH2020, 2020.                                                                                                                      
        [`http://design.cs.iastate.edu/splash20/oopsla20/oopsla20main-p625-p.pdf`](http://design.cs.iastate.edu/splash20/oopsla20/oopsla20main-p625-p.pdf)
\[REF\] Chang, Ballantyne, Turner, Bowman, “Dependent Type Systems as Macros,”                                                                            
        POPL, 2020.                                                                                                                                       
        [`https://www2.ccs.neu.edu/racket/pubs/popl20-cbtb.pdf`](https://www2.ccs.neu.edu/racket/pubs/popl20-cbtb.pdf)PLT-TR-2010-1                       
\[REF\] Matthew Flatt and PLT, “Reference: Racket,” PLT Inc., 2010.                                                                                       
        [`http://racket-lang.org/tr1/`](http://racket-lang.org/tr1/)                                                                                      
        PLT-TR-2010-1                                                                                                                                     

## 2. Acknowlegements

Thank you to Jens Axel Søgaard and Laurent Orseau.
