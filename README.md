# ASCII Digital Clock
## What is this?
This is a digital clock that gets the current time and displays it
as ASCII art.

## How do I build it?
### Installing Nim
This is written in [Nim](https://nim-lang.org). Download and install it as per
the instructions on the Nim website. Alternatively, you can use
[GrabNim](https://forum.nim-lang.org/t/13132).

You can verify the installation with:

    nim -v
    nimble -v
    gcc -v

These should display the respective version numbers of the programs.

### Building the app
You can build the app using Nimble from the project root directory:

    nimble build -d:danger

Alternatively, since this project doesn't have any dependencies, you can
compile the program directly:

    cd src && nim c asciidigitalclock.nim

## Any other notes?
This uses [Unicode box-drawing characters](https://en.wikipedia.org/wiki/Box-drawing_characters)
to display the clock. I didn't spend long on picking the correct corners so it
looks a bit blotchy for some digits. You can probably pick different characters
in the box-drawing list to get a nicer display.

When I tried this on Windows in the command prompt rather than WSL2, I could
see the cursor jumping around. It looks cleaner on WSL2.