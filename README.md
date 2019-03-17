# Square-Color-Mover
the Square Color Mover code creates squares wherever the mouse. The RGB values can be set to either one of 3 constants, or a value that changes depending on the mouse's X and Y coordinates.
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
