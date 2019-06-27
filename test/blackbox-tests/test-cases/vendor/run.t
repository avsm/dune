Vendored directories should be traversed to find targets so that they are built when they are depend upon:

  $ dune build --root duniverse
  Entering directory 'duniverse'

Aliases should not be resolved in vendored sub directories:

  $ dune runtest --root duniverse
  Entering directory 'duniverse'
          test alias tests/runtest
  Hello from main lib!
