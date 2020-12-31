#!/bin/bash
scribble --markdown --dest-name README.md scribblings/research-papers.scrbl
scribble --html --dest html --dest-name index.html scribblings/research-papers.scrbl
