void setup() {
  size(510, 510);
}
int order = 0, theX = 0, theY = 0, changeConstant = 3;
int[] sets = new int[4];
int[] theColors = new int[3];
String[] cwords = {"r = ", "g = ", "b = ", "t = "};
int[] colors = {0, 0, 0, 0, 0, 0, 0, 0};
int[] constants = {0, 0, 0, 0};
String name = "";
String[] names = {"red", "green", "blue"};
boolean[][] toggles = {
{false, false, false},
{false, false, true},
{false, true, false},
{false, true, true},
{true, false, false},
{true, false, true},
{true, true, false},
{true, true, true}};
void keyPressed()
{
  if(key == CODED && changeConstant < 3)
  {
    if(keyCode == UP)
    {
      constants[changeConstant]+= 5;
      if(constants[changeConstant] > 255)
      {
        constants[changeConstant] = 255;
      }
    }
     if(keyCode == DOWN)
    {
      constants[changeConstant] += -5;
      if(constants[changeConstant] < -255)
      {
        constants[changeConstant] = -255;
      }
    }
    println(names[changeConstant] + " constant = " + constants[changeConstant]);
  }
}
void keyReleased() {
  int u = int(key) - 48;
  if(key == 's' && mousePressed && mouseButton == LEFT)
  {
    name = sets[0] + ", " + sets[1] + ", " + sets[2] + ", " + sets[3] + " ";
    saveFrame(name + "####");
    println("screenshot taken");
  }
  if(key == 'c')
  {
    constants[0] = 0;
    constants[1] = 0;
    constants[2] = 0;
    println("constants reset to 0");
  }
  if(key == 'u')
  {
    constants[0] = int(random(510)) - 255;
    constants[1] = int(random(510)) - 255;
    constants[2] = int(random(510)) - 255;
    printLines();
  }
  if(key == 'r')
  {
    if(changeConstant == 0)
    {
      changeConstant = 3;
      println("don't change red constant");
    }
    else
    {
      changeConstant = 0;
      println("change red constant");
    }
  }
   if(key == 'g')
  {
    if(changeConstant == 1)
    {
      changeConstant = 3;
      println("don't change green constant");
    }
    else
    {
      changeConstant = 1;
      println("change green constant");
    }
  }
   if(key == 'b')
  {
    if(changeConstant == 2)
    {
      changeConstant = 3;
      println("don't change blue constant");
    }
    else
    {
      changeConstant = 2;
      println("change blue constant");
    }
  }
  if(mousePressed && mouseButton == RIGHT && 0 <= u && u <= 7 && order < 4)
  {
     sets[order] = u;
     println(cwords[order] + u);
     order++;
     if(order == 4)
     {
       order = 0;
     }
  }
  if(key == 'x')
  {
    printLines();
  }
  if(key == '0' && !mousePressed)
  {
    for(int k = 0; k < 4; k++)
    {
      sets[k] = 0;
      constants[k] = 0;
    }
    printLines();
    order = 0;
    changeConstant = 3;
  }
  if(key == 'w')
  {
    sets[0] = int(random(8));
    sets[1] = int(random(8));
    sets[2] = int(random(8));
    sets[3] = int(random(8));
    printLines();
  }
  createSquare();
}
void printLines()
{
   println(" ");
   println("r = " + sets[0]);
   println("g = " + sets[1]);
   println("b = " + sets[2]);
   println("t = " + sets[3]);
   println("red constant = " + constants[0]);
   println("green constant = " + constants[1]);
   println("blue constant = " + constants[2]);
}
void mouseReleased()
{
  if(mouseButton == LEFT)
  {
    background(255);
  }
  createSquare();
}
void draw() {
 
}
void createSquare()
{
    for(theX = 0; theX < 510; theX+= 2999/1000)
    {
      for(int theY =0; theY < 510; theY+= 2999/1000)
      {
        colors[0] = 0; 
        colors[1] = theX/2;
        colors[2] = theY/2;
        colors[3] = theX - theY;
        colors[4] = theY - theX;
        colors[5] = int(sqrt(theX * theY)/2);
        colors[6] = abs(theY - theX);
        colors[7] = (theX + theY)/3;
        for(int y = 0; y < 3; y++)
        {
          theColors[y] = colors[sets[y]];
          if(theColors[y] < 0)
          {
            theColors[y] = 0;
          }
          if(theColors[y] > 255)
          {
            theColors[y] = 255;
          }
          if(toggles[sets[3]][y])
          {
            theColors[y] = 255-theColors[y];
          }  
          theColors[y] = theColors[y] + constants[y];
        }
        stroke(theColors[0], theColors[1], theColors[2]);
        fill(theColors[0], theColors[1], theColors[2]);
        rect(theX, theY, 1, 1);
      }
    }
}