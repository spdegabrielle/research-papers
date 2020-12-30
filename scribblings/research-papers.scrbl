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

@(apply bibliography
        (for/list ([(name str) (in-dict help-strings)])
          str ))
  

@section{Colophon}

This scribble file is derived from the work of Laurent Orseau for the @tt{quickscript-extra} package.
