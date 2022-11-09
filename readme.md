# Using Docker as Dev Kits

## Motivation & Background

I usually deal with a lot of different applications which includes legacy systems at the same time. This means having to maintain multiple different versions of its dependencies and development environments/kits (this is especially true for many of my legacy NodeJS based projects that can't be upgraded to newer node versions). I also bricked a lot of ubuntu machines trying to upgrade python versions before (pre venv era, never again).

So it has been a habit of mine to make use of docker it almost all of my applications. However, I still normally need the executables to be present usually to start new projects, to tinker, or to setup with VSCode for linters and similar stuff.

The dev-kits project allows me to do just that without requiring myself to actually install anything in my host machine.

## Setup scripts

I've set up `.setup.sh` shell scripts in each dev-kit with the goal of creating a `d<service>` alias.
Example: djavac = javac but using docker, dphp = same but with php.

## Caveats

The current iteration of this project requires the user to `docker system prune` often as everytime you run a `dservice` it'll create a container. I'm still trying to figure this one out.