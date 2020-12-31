#lang scribble/manual

@(require racket/runtime-path
          racket/dict
          racket/path
          racket/match
          "../main.rkt")

@(define-runtime-path papers-path "../papers")
@;(displayln papers-path)
@;(displayln (directory-list papers-path #:build? #f))
@;; If calling this function is slow, compile the scripts first.
@(define (get-paper-details paper-path)
   (filter
    values
    (for/list ([filename (in-list (directory-list paper-path #:build? #f))])
      (define filepath (build-path paper-path filename))
      (and (paper-file? filepath)
           (cons (path->string (path-replace-extension filename #""))
                 (get-ref filepath))))))

@(define help-strings (get-paper-details papers-path))

@(displayln help-strings)
@title{Racket Research Papers}

Some research papers for the @(hyperlink "https://racket-lang.org/" "Racket") ecosystem of languages, tools and libraries.

@section{Introduction}

This is an attempt to collate research papers relating to the Racket ecosystem of tools including the Racket language, DrRacket IDE, @tt{raco} command line tools, Slideshow, Scribble and other tools and languages built with Racket.

To add a new publication create a PR to add a new file to the @tt{papers} folder with the following text

@codeblock|{
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
}|



@(apply bibliography
        (for/list ([(name str) (in-dict help-strings)])
          str ))
  

@section{Acknowlegements}

Thank you to Jens Axel Søgaard and Laurent Orseau.
@; This scribble file is derived from the work of Laurent Orseau for the quickscript-extra package.