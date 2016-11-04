#!/bin/bash

if ! brew --version > /dev/null; then
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi

if ! brew ls --versions fswatch > /dev/null; then
brew install fswatch;
fi

fswatch -0 ./Chapters/Chapter1.php ./Chapters/Chapter2.php ./Chapters/Chapter3.php | php koans.php;

