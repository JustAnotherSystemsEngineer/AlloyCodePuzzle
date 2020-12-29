# AlloyCodePuzzle
My solution for the lock/code puzzle floating around social media which was discussed on StackOverflow here: https://stackoverflow.com/questions/60951163/lock-challenge-in-alloy/65318261#65318261

# Installation
This solution was created in Alloy Analyzer v5.1.0. If the code does not run in the latest version of Alloy, download v5.1.0 from the Alloy Releases page on GitHub:
https://github.com/AlloyTools/org.alloytools.alloy/releases

## Additional Alloy Resources
The main Alloy Analyzer site contains links to the download, documentation, the book by its creator, and example models.

http://alloytools.org/

I highly recommend the readthedocs site by Hillel Wayne about Alloy. It is well-written and is useful as a learning resource and as a reference later.

https://alloy.readthedocs.io/en/latest/index.html

# Manifest
* Hints for updated puzzle.txt  - The set of hints for the updated puzzle
* lockPuzzle.als                - The Alloy model that solves the puzzles
* OriginalPuzzle.png            - The picture of the original puzzle
* OriginalSolution.png          - The solution image for the original puzzle, generated in the Alloy Visualizer
* README.md                     - This document
* UpdatedSolution.png           - The solution image for the new puzzle, generated in the Alloy Visualizer

# Usage
The model solves two different versions of the puzzle: the original and a modified version proposed by Takashi Nomura on StackOverflow. To see the solution to the original puzzle, open the model in Alloy Analyzer, select the Execute menu, and choose "Run originalLock". Depending on your settings, you may automatically see the visualized solution. If you do not have automatic visualization turned on, then select the "Instance" hyperlink in the right pane. 

Similarly, to see the solution to the modified puzzle, select the Execute menu, run "Run newLock".

# Support
If you have questions or comments, please feel free to reach out at doerr.consulting@gmail.com

# Authors and Acknowledgement
Code written by Jeremy Doerr based upon a StackOverflow thread here:
https://stackoverflow.com/questions/60951163/lock-challenge-in-alloy

# License
See License.MD in the main branch.
