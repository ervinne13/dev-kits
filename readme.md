# Using Docker as Dev Kits

## Motivation & Background

I usually deal with a lot of different applications which includes legacy systems. This means having to maintain multiple different versions of its dependencies and development kits (this is especially true for many of my legacy NodeJS based projects that can't be upgraded to newer node versions). I also bricked a lot of ubuntu machines trying to upgrade python versions before (pre venv era, never again).

So it has been a habit of mine to make use of docker it almost all of my applications. However, I still normally need the executables to be present usually to start new projects, to tinker, or to setup with VSCode for linters and similar stuff.

The dev-kits project allows me to do just that without requiring myself to actually install anything in my host machine.