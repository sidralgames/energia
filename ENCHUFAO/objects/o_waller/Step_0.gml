/// @description Insert description here
// You can write your code in this editor
if (alarm[2] <= 0) && times>0 //Try spawiner 
{
	timesTotal-=1;
	alarm[2] = 2;
}

if (alarm[3] <= 0) //Time to try a new breach again
{
	alarm[3] = breachRetryTime
}
//if (times = 0) || (timesTotal = 0)
//{
//	times = 0;
//	timesTotal = 0;
//}
if (timesBreach <= 0)
{
	spawningBreach = false;
}


if (spawningBreach) && (alarm[4] <= 0)
{
	spawningBreach = false;
}

if (alarm[1] <= 0)
{
	alarm[1] = max(60, random_range(140,200) - (10*global.level));
}