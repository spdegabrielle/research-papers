#lang scribble/manual
@;;require[@for-label[research-papers racket/base]]


@;;defmodule[research-papers]


@(require racket/runtime-path
          racket/dict
          racket/path
          racket/match
          "main.rkt")

@(define-runtime-path scripts-path "../papers")

@;; If calling this function is slow, compile the scripts first.
@(define (get-paper-details paper-path)
  (filter
   values
   (for/list ([filename (in-list (directory-list paper-path #:build? #f))])
     (define filepath (build-path paper-path filename))
     (and (paper-file? filepath)
          (cons (path->string (path-replace-extension filename #""))
                (get-script-help-string filepath))))))
@(define help-strings (get-script-help-strings scripts-path))


@title{Racket Research Papers}

@author{spdegabrielle}


Some research papers for @(hyperlink "https://racket-lang.org/" "Racket").

@section{Introduction}

This is an attempt to collate research papers relating to the Racket ecosystem of tools including the Racket language, DrRacket IDE, @tt{raco} command line tools, Slideshow, Scribble and other tools and languages built with Racket.

@section{Papers}


@(itemlist
  (for/list ([(name str) (in-dict help-strings)])
     (item (index name @(bold name)) ": "
           (let loop ([str str])
             (match str
               ;; link
               [(regexp #px"^(.*)\\[([^]]+)\\]\\(([^)]+)\\)(.*)$" (list _ pre txt link post))
                (list (loop pre)
                      (hyperlink link txt)
                      (loop post))]
               [else str])))))

@section{Colophon}

This scribble file is based on the work of Laurent Orseau for the @tt{quickscript-extra} package.