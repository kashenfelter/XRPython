%% NOT THE roxygen version because of bug in its hanling of reference
%% classes with inheritance
\docType{class}
\name{PythonInterface-class}
\alias{PythonInterface}
\alias{PythonInterface-class}
\title{An Interface to Python}
\description{
The \code{"PythonInterface"} class provides an evaluator for computations in Python, following the structure
in the XR  package.  Proxy functions and classes allow use of the interface with no explicit
reference to the evaluator.  The function \code{RPython()} returns an evaluator object.
}
\details{
The class extends the \code{"Interface"} class in the XR package and has the same fields.
Python-specific methods use the rPython low-level interface.  See the Chapter from the
 \dQuote{Extending R} book in the documents for this package for details.
}
\section{Methods}{

\describe{
\item{\code{Define(text, file)}}{Define a Python function from a character vector, `text` or by reading the text
from a file via readLines().  Character vectors are taken to represent lines of Python code
in a function definiition.  The method returns a proxy function with a name inferred from
the first line of the text.}

\item{\code{Import(module, ...)}}{The Python version of this method replaces the general version in XR with the "import" or
"from ... import" directives in Python as appropriate.  Returns the `reticulate` version of the module object, which can be used directly.}

\item{\code{initialize(...)}}{The Python version, with special defaults for prototypeObject and modules}

\item{\code{PythonCommand(strings)}}{A low-level command execution, needed for initializing.  Normally should not be used by applications
since it does no error checking; use $Command() instead.}

\item{\code{ServerAddToPath(serverDirectory, serverPos)}}{The Python version using sys.path.append()}

\item{\code{ServerClassDef(Class, module = "", example = TRUE)}}{The Python version using PythonClassDef()}

\item{\code{ServerEval(strings, key = "", get = NA)}}{The Python version using value_for_R()}

\item{\code{ServerFunctionDef(name, module = "")}}{The Python version using PythonFunction()}

\item{\code{ServerRemove(key)}}{The Python version using del_for_R())}

\item{\code{ServerSerialize(key, file)}}{Serializing and unserializing in the Python interface use the pickle structure in Python.
Serialization does not rely on the R equivalent object.}

\item{\code{ServerUnserialize(file, all = FALSE)}}{The Python unserialize using unpickle}

\item{\code{Shell(endCode = "exit", prompt = "Py>: ", cont = "Py+: ")}}{Starts an interactive Python shell.  Each line of input must be a complete Python expression
or command, which will be evaluated in the same context as $Eval() expressions.
To continue over multiple lines, end all but the last with an unescaped backslash.
The argument `endCode` is the string to type to leave the shell, by default "exit".}

\item{\code{Source(filename)}}{The $Source() method uses the Python function execfile() and therefore is quite efficient.}
}}

