package FileManipulation
{
	public class ConversionUtil
	{
		public function ConversionUtil()
		{
		}
		
		public function formatTimeValue(value:Number):String
		{
			// default format: hours:minutes:seconds
			value = Math.round(value);
			
			var hours:uint = Math.floor(value/3600) % 24;
			var minutes:uint = Math.floor(value/60) % 60;
			var seconds:uint = value % 60;
			
			var result:String = "";
			if (hours != 0)
				result = hours + ":";
			
			if (result && minutes < 10)
				result += "0" + minutes + ":";
			else
				result += minutes + ":";
			
			if (seconds < 10)
				result += "0" + seconds;
			else
				result += seconds;
			
			return result;
		}
	}
}