///scrEaseInOutCubic(current time,duration,start value,change in value, [absolute = false])
if (argument_count>4) {
if (argument[4]) {
argument[3] = argument[3] - argument[2];
}
}

argument[0] /= argument[1] * 0.5;

if (argument[0] < 1)
{
   return argument[3] * 0.5 * power(argument[0], 3) + argument[2];
}

return argument[3] * 0.5 * (power(argument[0] - 2, 3) + 2) + argument[2];

