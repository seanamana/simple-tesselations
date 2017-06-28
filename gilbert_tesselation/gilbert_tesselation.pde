 ArrayList<Particle> particles;
int[] finished1, finished2;
int totalFinished = 0;
int len = 0;
void setup()
{
 size(400,400);
 ellipseMode(RADIUS);
 background(180);
 fill(255);
 particles = new ArrayList<Particle>();
 for (int i = 0; i < 80; i++)
 {
  particles.add(new Particle(random(400),random(400),random(360)*PI/180.0));
//  ellipse(particles.get(i).x, particles.get(i).y, 2, 2);
 // text(i, particles.get(i).x, particles.get(i).y);
 }
 
 
}

void draw()
{
   for (int i = 0; i < particles.size(); i++)
   {
     if (!particles.get(i).finished1)
     {
       float x1 = particles.get(i).x;
       float y1 = particles.get(i).y;
       float x2 = particles.get(i).x + (particles.get(i).len1 + 1) * cos(particles.get(i).angle);
       float y2 = particles.get(i).y + (particles.get(i).len1 + 1) * sin(particles.get(i).angle);
       
       if (x2 > width || x2 < 0 || y2 > height || y2 < 0)
       {
        particles.get(i).finished1 = true; 
       }
              
       for (int j = 0; j < particles.size(); j++)
       {
         if (i != j)
         {
           float x3 = particles.get(j).x;
           float y3 = particles.get(j).y;
           float x4 = particles.get(j).x + particles.get(j).len1 * cos(particles.get(j).angle);
           float y4 = particles.get(j).y + particles.get(j).len1 * sin(particles.get(j).angle);
           
           float denominator = ((x2 - x1) * (y4 - y3)) - ((y2 - y1) * (x4 - x3));
           float numerator1 = ((y1 - y3) * (x4 - x3)) - ((x1 - x3) * (y4 - y3));
           float numerator2 = ((y1 - y3) * (x2 - x1)) - ((x1 - x3) * (y2 - y1));
           
           if (denominator == 0)
           {
            if (numerator1 == 0 && numerator2 == 0)
            {
             particles.get(i).finished1 = true; 
            }
           }
           
           float r = numerator1 / denominator;
           float s = numerator2 / denominator;
           
           if (r >= 0 && r <= 1 && s >= 0 && s <= 1)
           {
             particles.get(i).finished1 = true;  
           }
           
           x4 = particles.get(j).x + particles.get(j).len2 * cos(particles.get(j).angle + PI);
           y4 = particles.get(j).y + particles.get(j).len2 * sin(particles.get(j).angle + PI);
           
           denominator = ((x2 - x1) * (y4 - y3)) - ((y2 - y1) * (x4 - x3));
           numerator1 = ((y1 - y3) * (x4 - x3)) - ((x1 - x3) * (y4 - y3));
           numerator2 = ((y1 - y3) * (x2 - x1)) - ((x1 - x3) * (y2 - y1));
           
           if (denominator == 0)
           {
            if (numerator1 == 0 && numerator2 == 0)
            {
             particles.get(i).finished1 = true; 
            }
           }
           
           r = numerator1 / denominator;
           s = numerator2 / denominator;
           
           if (r >= 0 && r <= 1 && s >= 0 && s <= 1)
           {
             particles.get(i).finished1 = true;  
           }
           
           
         }
       }
       
       if (!particles.get(i).finished1)
       {
         particles.get(i).len1 += 1; 
       }
     }
     if (!particles.get(i).finished2)
     {
       float x1 = particles.get(i).x;
       float y1 = particles.get(i).y;
       float x2 = particles.get(i).x + (particles.get(i).len2 + 1) * cos(particles.get(i).angle + PI);
       float y2 = particles.get(i).y + (particles.get(i).len2 + 1) * sin(particles.get(i).angle + PI);
              
              
       if (x2 > width || x2 < 0 || y2 > height || y2 < 0)
       {
        particles.get(i).finished2 = true; 
       }
              
       for (int j = 0; j < particles.size(); j++)
       {
         if (i != j)
         {
           float x3 = particles.get(j).x;
           float y3 = particles.get(j).y;
           float x4 = particles.get(j).x + particles.get(j).len1 * cos(particles.get(j).angle);
           float y4 = particles.get(j).y + particles.get(j).len1 * sin(particles.get(j).angle);
           
           float denominator = ((x2 - x1) * (y4 - y3)) - ((y2 - y1) * (x4 - x3));
           float numerator1 = ((y1 - y3) * (x4 - x3)) - ((x1 - x3) * (y4 - y3));
           float numerator2 = ((y1 - y3) * (x2 - x1)) - ((x1 - x3) * (y2 - y1));
           
           if (denominator == 0)
           {
            if (numerator1 == 0 && numerator2 == 0)
            {
             particles.get(i).finished2 = true; 
            }
           }
           
           float r = numerator1 / denominator;
           float s = numerator2 / denominator;
           
           if (r >= 0 && r <= 1 && s >= 0 && s <= 1)
           {
             particles.get(i).finished2 = true;  
           }
           
           x4 = particles.get(j).x + particles.get(j).len2 * cos(particles.get(j).angle + PI);
           y4 = particles.get(j).y + particles.get(j).len2 * sin(particles.get(j).angle + PI);
           
           denominator = ((x2 - x1) * (y4 - y3)) - ((y2 - y1) * (x4 - x3));
           numerator1 = ((y1 - y3) * (x4 - x3)) - ((x1 - x3) * (y4 - y3));
           numerator2 = ((y1 - y3) * (x2 - x1)) - ((x1 - x3) * (y2 - y1));
           
           if (denominator == 0)
           {
            if (numerator1 == 0 && numerator2 == 0)
            {
             particles.get(i).finished2 = true; 
            }
           }
           
           r = numerator1 / denominator;
           s = numerator2 / denominator;
           
           if (r >= 0 && r <= 1 && s >= 0 && s <= 1)
           {
             particles.get(i).finished2 = true;  
           }
           
           
         }
       }
       
       if (!particles.get(i).finished2)
       {
         particles.get(i).len2 += 1; 
       }
       
     }
     
     point(particles.get(i).x + particles.get(i).len1 * cos(particles.get(i).angle), particles.get(i).y + particles.get(i).len1 * sin(particles.get(i).angle));
     point(particles.get(i).x + particles.get(i).len2 * cos(particles.get(i).angle + PI), particles.get(i).y + particles.get(i).len2 * sin(particles.get(i).angle + PI));
     //line(particles.get(i).x,particles.get(i).y,particles.get(i).x + particles.get(i).len1 * cos(particles.get(i).angle), particles.get(i).y + particles.get(i).len1 * sin(particles.get(i).angle));
     //line(particles.get(i).x,particles.get(i).y,particles.get(i).x + particles.get(i).len2 * cos(particles.get(i).angle + PI), particles.get(i).y + particles.get(i).len2 * sin(particles.get(i).angle + PI));
     
   }
}



class Particle
{
 float x, y, len1, len2, angle;
 boolean finished1, finished2;
 public Particle(float inx, float iny, float inangle)
 {
   x = inx;
   y = iny;
   len1 = 0;
   len2 = 0;
   finished1 = false;
   finished2 = false;
   angle = inangle;
 }
}