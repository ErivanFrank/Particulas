package 
{
	import flash.display.*;

	/**
	 * ...
	 * @author erivan
	 */
	public class Movimento extends MovieClip
	{

		public var velocidadeX:Number;
		public var velocidadeY:Number;
		public var gravidade:Number;
		public var friccao:Number;
		public var escalaX:Number;
		public var escalaY:Number;
		public var fade:Number;
		public var rotacao:Boolean;

		public function Movimento():void
		{

			gravidade = 0;
			velocidadeX = 0;
			velocidadeY = 0;
			friccao = 1;
			escalaX = 1;
			escalaY = 1;
			fade = 1;
			rotacao = false;



		}


		public function atualizador()
		{
			velocidadeX *=  friccao;
			velocidadeY *=  friccao;

			velocidadeY +=  gravidade;
			this.x +=  velocidadeX;
			this.y +=  velocidadeY;
			this.scaleX *=  escalaX;
			this.scaleY *=  escalaY;
			this.alpha *=  fade;
			if (rotacao)
			{
				this.rotation = Math.atan2(velocidadeY,velocidadeX) * 180 / Math.PI;

			}

		}

	}

}