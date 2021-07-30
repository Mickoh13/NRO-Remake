var spawnX, spawnY, spawnEdges, spawnNum, spawnDir, spawnObj, th, i, xx, yy, ddx, ddy, j, dx, dy, a;
spawnX = argument0;
spawnY = argument1;
spawnEdges = argument2;
spawnNum = argument3;
spawnObj = argument5;
spawnDir = random(360);
spawnDirAdd = choose(-1,1);
spawnDirCringe = argument4*choose(-1,1);
spawnCurve = choose(-0.75,0.75);

th = degtorad(spawnDir);

for (i = 0; i < spawnEdges; i++)
{
    xx[i] = cos((th + (((2 * pi) * i) / spawnEdges)))
    yy[i] = sin((th + (((2 * pi) * i) / spawnEdges)))
}
for (i = 0; i < spawnEdges; i++)
{
    ddx = (xx[((i + 2) % spawnEdges)] - xx[i])
    ddy = (yy[((i + 2) % spawnEdges)] - yy[i])
    for (j = 0; j < spawnNum; j++)
    {
        dx = (xx[i] + ((ddx * j) / spawnNum))
        dy = (yy[i] + ((ddy * j) / spawnNum))
        a = instance_create((spawnX + dx), (spawnY + dy), spawnObj)
        a.dirFormula = point_direction(0,0,dx,dy);
        a.lengthFormula = point_distance(0,0,dx,dy);
        a.dirAdd = spawnDirAdd;
        a.dir = random(360);
        a.dirTo = spawnDirCringe + spawnDir;
        a.curve = spawnCurve;
    }
}
