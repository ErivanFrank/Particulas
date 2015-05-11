package  
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.filters.BlurFilter;
	import Movimento;
	/**
	 * ...
	 * @author erivan
	 */
	public class Particulas extends MovieClip
	{
		public var pTotal:int = 50;
		public var aParticulas:Array = [];
		
		var velocidadeX	:Number;
		var velocidadeY	:Number;		
		
		public function Particulas() 
		{
			
			addEventListener(Event.ENTER_FRAME, anima);
			
		}
		
		public function anima(e:Event):void 
		{
			if (aParticulas.length < pTotal)
			{
				var objeto: bola = new bola();
				addChild(objeto);
			    objeto.velocidadeX  = Math.random() * 10 - 5;
				objeto.velocidadeY  = Math.random() * 10 - 5;
				objeto.gravidade = -0.25;
				objeto.friccao = 1;
				objeto.escalaX = 1.02;
				objeto.escalaY = 1.02;
				objeto.fade = .80;
				//objeto.rotacao = true;
				objeto.x = mouseX;//stage.stageWidth / 2;// mouseX;
				objeto.y = mouseY;//stage.stageHeight / 2;//mouseY;
				aParticulas.push(objeto);	
				
				
			}
			for (var i:int = 0; i < aParticulas.length; i++) 
			{		
			
				
				var particulas:bola = aParticulas[i];
				aParticulas[i].filters = [new BlurFilter(20, 20, 1)];
				aParticulas[i].atualizador();
				if (particulas.x > stage.stageWidth || particulas.x < 0 || particulas.y > stage.stageHeight || particulas.y < 0 || particulas.alpha < .2) 
				{
				trace("Entrou");
				particulas.velocidadeX  = Math.random() * 10 - 5;
				particulas.velocidadeY  = Math.random() * 10 - 5;
				particulas.x = mouseX;// stage.stageWidth / 2; //mouseX;
				particulas.y = mouseY;// stage.stageHeight / 2; //mouseY;
				particulas.scaleX = particulas.scaleY = 1;
				particulas.alpha = 1;
				
					
				}
				
			}
			
		}
		
		
	}

}