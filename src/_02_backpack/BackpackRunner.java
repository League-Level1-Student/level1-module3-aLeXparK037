package _02_backpack;

public class BackpackRunner {
	public static void main(String[] args) {
		
		
		Backpack pack = new Backpack();
		Pencil pencil = new Pencil();
		Ruler ruler = new Ruler();
		Textbook textbook = new Textbook();
		
	pack.putInBackpack(pencil);
	pack.putInBackpack(ruler);
	pack.putInBackpack(textbook);
	pack.packAndCheck();
		
	}
}
