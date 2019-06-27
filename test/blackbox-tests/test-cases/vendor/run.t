Vendored directories should be traversed to find targets so that they are built when they are depend upon:

  $ dune build --root duniverse
  Entering directory 'duniverse'

Aliases should not be resolved in vendored sub directories:

  $ dune runtest --root duniverse
  Entering directory 'duniverse'
          test alias tests/runtest
  Hello from main lib!

When compiling vendored code, all warnings should be disabled:

  $ dune build --root warnings @no-warnings-please 
  Entering directory 'warnings'
  There should be no warning above!
