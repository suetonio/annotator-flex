package XML
{
	import flash.xml.XMLDocument;
	import flash.xml.XMLNode;	
	import mx.rpc.xml.SimpleXMLDecoder;
	import mx.rpc.xml.SimpleXMLEncoder;
	import mx.utils.ObjectUtil;
	
	public class ObjectConverter
	{
		public function ObjectConverter(){
		}
		
		public function objectToXML(destaque:Destaque):XML{
			var qName:QName = new QName("form");
			var xmlDocument:XMLDocument = new XMLDocument();
			var simpleXMLEncoder:SimpleXMLEncoder = new SimpleXMLEncoder(xmlDocument);	
			var xmlNode:XMLNode = simpleXMLEncoder.encodeValue(destaque, qName, xmlDocument);
			var xml:XML = new XML(xmlDocument.toString());			
			return xml;
		}
	}
}