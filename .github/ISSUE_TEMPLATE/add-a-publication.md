---
name: Add a publication
about: provide the format for adding a publication
title: ''
labels: documentation
assignees: spdegabrielle

---

To add a new publication add a unique `.scribble` file to the `papers` folder with the following completed: 

```
#lang scribble/manual

@(provide ref)

@(define ref
   (bib-entry #:key      "REF"
              #:title    "Reference: Racket"
              #:is-book? #f	 	
              #:author   "Matthew Flatt and PLT"
              #:date     "2010"
              #:location "PLT Inc."
              #:url      "http://racket-lang.org/tr1/"
              #:note     " PLT-TR-2010-1"))
              
```
