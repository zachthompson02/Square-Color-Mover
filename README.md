# Square-Color-Mover

DESCRIPTION FOR ORIGINAL CODE (SquareColorMoverCode.pde)
the Square Color Mover code creates squares wherever the mouse goes. 
The RGB values of the squares can be set to either one of 3 constants, or a value that changes depending on the mouse's X and Y coordinates.
There are seven settings for each color (red, green, blue), and each color is represented by a variable (R, G, B).
These settings are all shown in void draw().
Almost everything is done using the keys. You can see this in void keyPressed().
Using the keys, you can switch between color settings, change the size of the squares being drawn, and see the settings for each color.
Println() is used to display settings.
To clear the screen, left or right click.
The variables r, g and b represent what setting each color is on, ranging from 0 to 7. 
The variables m, n and o represent the settings themselves, as in what value or function is used inside stroke() and fill().
All the color settings are shown in the code, except for when r, g, and b are 0, which sets m, n, and o to 0.
The color factors work because the screen is 510 pixels by 510 pixels, or 2x255 by 2x255.

DESCRIPTION FOR UPDATED CODE (SCM_1_2.pde)
Even though nobody's seen this, I'll still edit this. I made a ton of changes. The concept of the RGB values depending on the coordinates is the same, but almost everything else is different. The program now just uses a for loop to make a bunch of tiny squares that take up the entire screen, and the the location of the mouse doesn't matter anymore. There are now 15 settings for each color, and they are saved inside of arrays that update inside the foor loops in void draw(). To change the color settings, right click and press the key for the setting you want in order red, green, blue. For settings 10 and 11 use keys A and B.  Also, pressing S while holding down left click will save screen as an image, and the file name will contain each color setting. Arrays are used a lot more in this code, which makes the whole code a lot shorter. Pressing 1 now makes the screen white. Because the code now fills the entire screen at once when a color setting is changed, I added a boolean squareCreated so the code only does it one time and doesn't keep filling the screen over and over in void draw(). I also put all keyboard events inside of keyReleased instead of keyPressed so the code doesn't continually perform the events when a key is down. I also wrote and commented out a function inside of void keyReleased that will save image files of all possible color combinations at once when the K key is released, if the right mouse button is down.  It took some time to save them all on my computer, and starts saving a ton of image files at once, which is why I commented it out. Also, for some reason sometimes you have to click the mouse one time for the colors to actually change when you press R.


