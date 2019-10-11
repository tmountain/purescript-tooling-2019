# PureScript Tooling 2019

A barebones PureScript starter project supplying the minimum set of essential tools.

https://discourse.purescript.org/t/recommended-tooling-for-purescript-applications-in-2019/948

# Usage

    # Shell into nix
    $ nix-shell

    # Start tmux session
    $ tmux new -s purescript

    # Install base packages
    $ yarn

    # Install purescript deps via spago as needed
    $ yarn spago install halogen

    # Install javascript deps as needed
    $ yarn add marked

    # Start pscid dev server (Use new tmux window)
    # press "b" to build/re-build the project.
    # press "t" to test the project.
    $ pscid

    # Start http server (Use new tmux window)
    $ cd dist && http-server
    # Point browser to http://localhost:8080 (View console)

    # Pretty-print files if desired
    $ purty --write src/Main.purs

Keep the pscid window open as you dev. Any errors will be automatically displayed on save.

The contents of the dist directory are all that you need to distribute your project post-build.
