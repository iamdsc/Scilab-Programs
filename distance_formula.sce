/* Function to calculate the distance
   between two points given their coordinates 
   (x1,y1) and (x2,y2) */
 
function [D] = dist(x1,y1,x2,y2)
    dx=x2-x1;
    dy=y2-y1;
    D=sqrt(dx^2+dy^2);
endfunction
     
/* Example :
 --> dist(1,4,10,6)
 ans  =

   9.2195445 
*/

