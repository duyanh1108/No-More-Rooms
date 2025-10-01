[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/J3bOIL8Y)
# Interactive Fiction Game

Interactive fiction or choose-your-own adventure games were an early form of computer game. These are often text-based games, presenting pieces of a story based on player choices. To see an example, try playing [The Lonely Troll](https://d3525rdp.play.borogove.io/) by Amanda Walker. Many pieces of interactive fiction recognize simple commands like TAKE or TALK (like in “The Lonely Troll”). 

Interactive fiction games (like many games) can be represented with state diagrams indicating how each possible end state of a game can be reached. For example, a simple IF game could look like this:

![state diagram](/ExampleIFGame.png?raw=true "Example IF Game")

[Inform 7](https://github.com/ganelson/inform/releases) supports creating interactive fiction games that recognize many common commands and defaults to handling them with boilerplate messages. Game designers can overwrite or extend this default behavior and define new commands that should be recognized in their Inform 7 games. Because there are no graphics in these games (unless you want to include ASCII art), you can sketch out a relatively complex game more quickly than it could be built in Unity.

You will create your own interactive fiction game with Inform 7. Your game should have at minimum:
1. Three distinct possible endings, each of which require at least 5 state transitions to reach.
2. At least one ending that requires at least 8 state transitions to reach.

## By class time on 2/14:
1. Plan out your game. Draw a state diagram of it like the example above and add it to the repo. You may want to use a program like freeform or lucidchart to create your diagram.
2. List out the mechanics you'll need in this game: what spaces, objects, actions, and rules will you need? Do you need to track the passage of time? Is there an element of chance or skill? Record these requirements in `mechanics.md`. (For an example of how time can be used in an interactive fiction game, check out the Disenchantment Bay sample in your Inform 7 installation)
3. Download [Inform 7](https://github.com/ganelson/inform/releases) and get a playable draft of your game together. You may find this [quickstart](https://en.wikibooks.org/wiki/Beginner%27s_Guide_to_Interactive_Fiction_with_Inform_7/Getting_Started_with_Inform_7) and [handbook](https://cs.wellesley.edu/~games349/InformHandbook.pdf) helpful in addition to the built-in documentation. Add the complete contents of your `.inform` and `.materials` directories to this repository. Commit and push your draft.

## By class time on 2/21:
1. Revise your game, diagram, and `mechanics.md` file based on your playtesting experience. These changes should substantially change the player's experience in at least three ways (e.g., making the endings more balanced, allowing for & appropriately handling more diverse actions, and adjusting descriptive text to make the possible choices clearer). Commit these changes.
2. Edit `reflection.md` to explain:
  - What changes you made
  - Why you made those changes
  - If there is anything else you would like to change but are unsure how to 
