/// @description Open Game Data

if file_exists("EnxufaoData.ini")
{
	LoadGame();
	global.EXISTE = true;
}
else
{
	global.EXISTE = false;
	LoadDefaultData();
}



