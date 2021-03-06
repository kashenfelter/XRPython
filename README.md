# XRPython - An Interface from R to Python

This package provides an interface from R to Python, based on the XR
structure, as implemented in the XR package, in this repository.

The interface is designed as a basis for computations in R that use
functions, objects and classes in Python.
In particular, the design caters to programmers developing application
packages.
The XR structure encourages definition of proxy functions and classes
in \R{}, which users of the package can treat essentially as they
would in R, without special programming imposed by the interface.

The interface structure is described in the book
*Extending R* (John M. Chambers, 2016, Chapman & Hall).
A pdf version of the XRPython chapter from the book is included with the
documentation of this package.  To open the pdf file from R:

  `RShowDoc("Chapter_XRPython", package = "XRPython")`

As of version 0.8, the package uses package 'reticulate' for its
low-level interface to Python, replacing 'rpython'.

To test whether a working Python interface can be opened on this
machine:
  okPython(TRUE)
which will return TRUE or FALSE and report the cause of a failure.
