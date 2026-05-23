package;

import flixel.FlxState;
import flixel.text.FlxText;
import openfl.system.Capabilities;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		var language:String = Capabilities.language;

		var message:String = "Hello World";

		switch (language)
		{
			case "pt", "pt-BR":
				message = "Olá Mundo";

			case "es":
				message = "Hola Mundo";

			case "fr":
				message = "Bonjour le monde";

			case "de":
				message = "Hallo Welt";

			case "it":
				message = "Ciao Mondo";

			case "ja":
				message = "こんにちは世界";

			case "ru":
				message = "Привет мир";

			case "zh-CN":
				message = "你好，世界";

			default:
				message = "Hello World";
		}

		// Cria o texto na tela
		var text = new FlxText(0, 0, 0, message, 64);
		text.screenCenter();
		add(text);
	}
}
