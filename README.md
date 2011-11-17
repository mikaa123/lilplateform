~~~~
 _  _ _        _                       ___
| |(_) |      | |         _           / __)
| | _| | ____ | | _____ _| |_ _____ _| |__ ___   ____ ____
| || | ||  _ \| |(____ (_   _) ___ (_   __) _ \ / ___)    \
| || | || |_| | |/ ___ | | |_| ____| | | | |_| | |   | | | |
 \_)_|\_)  __/ \_)_____|  \__)_____) |_|  \___/|_|   |_|_|_|
        |_|
~~~~

# Lilplateform
Lilplateform is a literate programming plateformer using the `lilp` gem and the `ray` library. Since it's more of an experiment, and because README files
rock, let's make its development README-driven.

## Features (open for ideas)
* A sprite that moves around
* ???

## Participate
Anybody can participate. Just fork, clone, then run
~~~~
bundle install
~~~~

Then you can modify the sources in `literate_src/`. By running the `watchr spec.watchr`, the project will be automatically compiled under the `src/` directory each time you save a file under `literate_src/`.

To run the game, simply do
~~~~
ruby literate_src/lilplateform.rb.md
~~~~
