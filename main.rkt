#lang racket/base
(require racket/path
         racket/dict)
(module+ test
  (require rackunit))

(provide paper-file? get-ref )

;; Code here
(define (path-string->string p-str)
  (if (string? p-str)
      p-str
      (path->string p-str)))


;; script-filename : path-string?
(define (make-submod-path script-filename)
  (list 'submod
        (list 'file (path-string->string script-filename))
        ;'script-info
        ))

;; script-filename : path-string?
;; Returns #f or a string.
;; Important: see note for get-property-dicts
(define (get-ref script-filename)
  (dynamic-require (make-submod-path script-filename)
                   'ref
                   (λ () #f)))

(define (property-dict? v)
  (and (dict? v)
       (dict-has-key? v 'label)))

;; Returns a list of dictionaries of the properties of the scripts in script-filename,
;; augmented with the scripts' function and the script filepath.
;; IMPORTANT: Loads the file in the current namespace, so a new namespace should probably
;; be created with (make-base-empty-namespace).
;; script-filename : path-string?
(define (get-property-dicts script-filepath)
  (define the-submod (make-submod-path script-filepath))
  (dynamic-require the-submod #f)
  (define-values (vars syntaxes) (module->exports the-submod))
  (define funs (map car (dict-ref vars 0)))
  (define property-dicts
    (filter values
            (for/list ([fun (in-list funs)])
              (define maybe-props (dynamic-require the-submod fun))
              (and (property-dict? maybe-props)
                   (list*
                    (cons 'name fun)
                    (cons 'filepath script-filepath)
                    maybe-props)))))
  property-dicts)

(define (paper-file? f)
  (equal? (path-get-extension f) #".scrbl"))





(module+ test
  ;; Any code in this `test` submodule runs when this file is run using DrRacket
  ;; or with `raco test`. The code here does not run when this file is
  ;; required by another module.

  (check-equal? (+ 2 2) 4))

(module+ main
  ;; (Optional) main submodule. Put code here if you need it to be executed when
  ;; this file is run using DrRacket or the `racket` executable.  The code here
  ;; does not run when this file is required by another module. Documentation:
  ;; http://docs.racket-lang.org/guide/Module_Syntax.html#%28part._main-and-test%29

  (require racket/cmdline)
  (define who (box "world"))
  (command-line
    #:program "my-program"
    #:once-each
    [("-n" "--name") name "Who to say hello to" (set-box! who name)]
    #:args ()
    (printf "hello ~a~n" (unbox who))))
