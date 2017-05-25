TITLE
Mastermind

DESCRIPTION
Mastermind is a difficult puzzle game, in which one player tries to guess the code the computer comes up with. It uses an algorithm that recognizes the placement of the colors in the game and the colors themselves and communicates that to the user through a fun interface.


GETTING STARTED
Prerequisites - You will need to have Xcode 8.3.1 or higher and an updated iPhone simulator/iOS device with iOS 10 or higher to run this application
Instructions - Download the repository from Github and save it to your computer.  Using Xcode, open "Mastermind.xcodeproj".  If you have an iPhone connect it to your computer and select it from the device selection dropdown menu in the upper left corner of the Xcode window. Or select an iPhone 6 or higher to use the simulator.  Build and run the app by pressing "Command+R" or clicking the triangle "Play" button in the upper left corner of the Xcode window. 


TESTING
I focused my testing on the methods created to generate game outcomes - Including successfully placing a color in a slot, placing a color in each slot, whether the colors match the the computer's colors and the color placements match the placement of the computer's colors, determining a winning code.

BUILT WITH
Language(s): Swift 3
Framework(s): Foundation, UIKit
Design: PaintCode

CHALLENGES AND LESSONS
It was quite difficult creating functions/methods that acurately returned the each decision made by the player of the game.  Where did the player place a color? Is that one of the colors in the computer's code? Is that color in the right place in correspondence to the placment of the color in the computer's code?  Did the user get all the guesses correct?  If not, how many guesses are right? 
I learned the importance of testing while making this application.  Because of the complexity of the game, it was important to account for every outcome through testing.

AUTHOR(S)
Adrian McDaniel



ACKNOWLEDGEMENTS
Thank you to my iOS Mobile Development instructor, TJ Usiyan of the Iron Yard
Thank you to paintcodeapp.com for providing the resources to create an awesome UI
