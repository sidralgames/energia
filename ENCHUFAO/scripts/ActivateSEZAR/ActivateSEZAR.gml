// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ActivateSEZAR()
{
	conversation = irandom(7); 
	switch (conversation)
	{
		case 0: NewTextBoxAlone(" Venga chaval! Aquí el Comandante Shezar \nA darle duro. ",1,instance_nearest(x,y,o_sezar)); break;
		case 1: NewTextBoxAlone(" Ya me puedo ir despidiendo \nde la nave buena... ",1,instance_nearest(x,y,o_sezar)); break;
		case 2: NewTextBoxAlone(" Sin brazos, sin piernas... \nMe da igual como vuelvas! \nPero que no quede ni uno!",1,instance_nearest(x,y,o_sezar)); break;
		case 3: NewTextBoxAlone(" ¡Llegas tarde y oliendo raro \nmás vale que lo hagas bien!",1,instance_nearest(x,y,o_sezar)); break;
		case 4: NewTextBoxAlone(" Venga! A ver si al menos esta vez \nsabes dónde meterla",1,instance_nearest(x,y,o_sezar)); break;
		case 5: NewTextBoxAlone(" ¿Acaso sabes lo que estas haciendo? \nMe da igual, sal echando hostias ahí fuera!",1,instance_nearest(x,y,o_sezar)); break;
		case 6: NewTextBoxAlone(" ¿Ves a todos esos enemigos, de ahí? \n¡Pues no son mi problema, son tu problema! \n¡Sal ahí fuera y reviéntalos!",1,instance_nearest(x,y,o_sezar)); break;
		case 7: NewTextBoxAlone(" Otra vez vuelta a empezar? \n¡Esto me recuerda a la relación con mi padre...",1,instance_nearest(x,y,o_sezar));
		NewTextBoxAlone("...solo que aquí yo soy mi padre!",1,instance_nearest(x,y,o_sezar)); break;
	
	}
}