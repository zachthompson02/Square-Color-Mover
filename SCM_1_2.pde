void setup() {
  size(510, 510);
}
int order = 0, theX = 0, theY = 0;
int[] sets = new int[3];
String[] cwords = {"r = ", "g = ", "b = "};
int[] colors = {0, 128, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0};
String name = "";
boolean squareCreated = false;
void keyReleased() {
  int u = int(key) - 48;
  if(key == 'a')
  {
    u = 10;
  }
  if(key == 'b')
  {
    u = 11;
  }
  /*if(key == 'k' && mousePressed && mouseButton == RIGHT)
  {
    squareCreated = true;
    for(int d = 0; d < 12; d++)
    {
      for(int j = 0; j < 12; j++)
      {
        for(int x = 0; x < 12; x++)
        {
          sets[0] = d;
          sets[1] = j;
          sets[2] = x;
          name = sets[0] + ", " + sets[1] + ", " + sets[2] + " ";
          for(int a = -300; a < 300; a++)
          {
            for(int b = -300; b < 300; b++)
            {
              theX = 255 + a;
              theY = 255 + b;
              colors[3] = theX/2;
              colors[4] = theY/2;
              colors[5] = theX - theY;
              colors[6] = theY - theX;
              colors[7] = int(sqrt(theX * theY)/2);
              colors[8] = 255-colors[3];
              colors[9] = 255-colors[4];
              colors[10] = abs(theY - theX);
              colors[11] = 255 - colors[10];
              stroke(colors[sets[0]], colors[sets[1]], colors[sets[2]]);
              fill(colors[sets[0]], colors[sets[1]], colors[sets[2]]);
              rect(theX, theY, 1, 1);
            }
          }
          saveFrame(name + "####");
          background(255);
        }
      }
    }
  }*/
  if(key == 's' && mousePressed && mouseButton == LEFT)
  {
    name = sets[0] + ", " + sets[1] + ", " + sets[2] + " ";
    saveFrame(name + "####");
  }
  if(mousePressed && mouseButton == RIGHT && 0 <= u && u <= 11 && order < 3)
  {
     sets[order] = u;
     println(cwords[order] + u);
     order++;
     if(order == 3)
     {
       order = 0;
       println(" ");
     }
  }
  if(key == 'x')
  {
    printLines();
  }
  if(key == '0' && !mousePressed)
  {
    sets[0] = 0;
    sets[1] = 0;
    sets[2] = 0;
    printLines();
    order = 0;
  }
  if(key == '1' && !mousePressed)
  {
    sets[0] = 2;
    sets[1] = 2;
    sets[2] = 2;
    printLines();
    order = 0;
  }
  if(key == 'r')
  {
    sets[0] = int(random(12));
    sets[1] = int(random(12));
    sets[2] = int(random(12));
    printLines();
  }
  squareCreated = false;
}
void printLines()
{
   println(" ");
   println("r = " + sets[0]);
   println("g = " + sets[1]);
   println("b = " + sets[2]);  
}
void mouseReleased()
{
  if(mouseButton == LEFT)
  {
    background(255);
  }
  squareCreated = false;
}
void draw() {
  if(!squareCreated)
  {
    squareCreated = true;
    for(int a = -300; a < 300; a++)
    {
      for(int b = -300; b < 300; b++)
      {
        theX = 255 + a;
        theY = 255 + b;
        colors[3] = theX/2;
        colors[4] = theY/2;
        colors[5] = theX - theY;
        colors[6] = theY - theX;
        colors[7] = int(sqrt(theX * theY)/2);
        colors[8] = 255-colors[3];
        colors[9] = 255-colors[4];
        colors[10] = abs(theY - theX);
        colors[11] = 255 - colors[10];
        stroke(colors[sets[0]], colors[sets[1]], colors[sets[2]]);
        fill(colors[sets[0]], colors[sets[1]], colors[sets[2]]);
        rect(theX, theY, 1, 1);
      }
    }
  }
}