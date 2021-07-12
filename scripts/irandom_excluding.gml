/****************************************************************************************
Example usage:
irandom_excluding(5,2);
will randomly select 0, 1, 3, 4, or 5

a=irandom(5);
b=irandom_excluding(5,a);
a and b will both be a random value between 0 and 5, and will not be equal to each other.
***************************************************************************************/

var retVal;
retVal=irandom(argument0); //shrink range by one
if (retVal==argument1) { //if we picked the number to exclude
    if (retVal != argument0)
    retVal = argument0; //then return the top of the range instead
    else
    retVal = irandom(argument0-1);
}
return retVal;
