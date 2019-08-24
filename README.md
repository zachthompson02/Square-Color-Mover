Creates "paintings" on the screen by placing a square at each pixel and making the RGB values of each square some function of its X and Y coordianates. 

How it works:
The function createSquare() contains all the (algebraic) functions of the coordinates that the RGB values are set to, where the coordinates are theX and theY, and the algebraic functions are contained inside of colors[], with the exception of colors[0]. The array sets[] contains the "settings" for each color, or which function in colors[] is chosen for each color. If an item in sets[] is 0, the RGB value will be set to a constant inside of the array constants[]. The first 3 items of sets[] are the settings for red, green, and blue. sets[4] is the 'toggle' variable, and it determines which item in toggles[] is used. toggles[] contains all the possible combinations of 3 booleans, also corresponding to the 3 RGB values. These booleans determine if the RGB values are "'toggled," meaning subtracted from 255. Although sets[3] is used very differently from the other items in sets[], it is treated mostly the same, especially from the user's standpoint. This works especially well because both colors[] and booleans[] have 8 items, meaning all 4 items in sets[] range from 0 to 7. Each "painting" is an individual combination of the sets[] variables, plus the constants if at least one item in sets[] is 0.

Controls:
-Press and release the mouse once before doing anything.
-Whenever any value of sets[] or constants[] is changed, it will be printed below the code.
-To generate a random "painting," aka combination, press W. 
-To choose a combination yourself, first press and hold the right mouse button. Then press the number keys in the order red, green, blue, toggle. You can release right click between settings, but it must be down when all 4 number keys are pressed.
-If you make a mistake, release the mouse button and press 0. This will reset all settings back to 0 and you can start over.
-Pressing the keys r, g, or b will toggle the changing of the constants[] for each RGB value. You can then press and hold arrow keys to change them. They change the values by 5 each time, and the values are also printed.
-Press u to randomize the constants, and c to reset them to 0.
-Press x to print all the settings and constants at once.
-Press s while holding down left click to save the current screen as an image. The values of the items in sets[] will be in the image name. but not the values of constants[].
