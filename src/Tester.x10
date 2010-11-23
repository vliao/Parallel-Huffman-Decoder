public class Tester {
	
	private static val testText:String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa orci, volutpat eu euismod at, mollis ac urna. Donec posuere cursus nulla, at molestie massa iaculis nec. Suspendisse sed nisi justo. Mauris scelerisque porttitor lacus, id tempor libero luctus quis. Duis imperdiet nisi quis ante posuere hendrerit. Donec fermentum dapibus arcu, ut convallis mi adipiscing a. Phasellus sit amet nisl augue, eu condimentum lectus. Morbi velit lectus, tincidunt sed consequat et, sollicitudin in ante. Suspendisse commodo auctor magna eu vestibulum. Nulla accumsan, nisl vel placerat interdum, ligula eros tincidunt mi, nec bibendum sem risus a ligula. Curabitur sagittis iaculis nulla a elementum. Fusce tincidunt, nibh a laoreet aliquam, lectus risus vehicula leo, nec laoreet turpis purus ac massa. Nulla consequat nisl quis nisl vehicula tincidunt.";
	
    public static def main(args: Rail[String](1)): Void {
    	val he:HuffmanEncoder = new HuffmanEncoder();
		Console.OUT.println("Input Text:");
		Console.OUT.println(testText);
		he.setText(testText);
		he.countFreq();
		he.countChars();
		Console.OUT.println("Character Frequencies:");
		he.printFreq();
		he.makeHuffmanTree();
		he.generateCode();
		Console.OUT.println("Huffman Code:");
		he.printCode();
		he.encodeText();
		Console.OUT.println("Encoded Message:");
		he.printText();
		
		val hd:HuffmanDecoder = new HuffmanDecoder(he.getHash(), he.getEncodedText());
		val time = System.nanoTime();
		hd.decode();
		val runtime = (System.nanoTime() - time)/1000000;
		Console.OUT.println("Decoded Message:");
		Console.OUT.println(hd.getDecodedText());
		Console.OUT.println("Runtime: " + runtime + "ms");
    }
    
}
