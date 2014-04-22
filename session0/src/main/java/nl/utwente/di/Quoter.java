package nl.utwente.di;

public class Quoter {

	public double getBookPrice(String string) {
		double price = 0;
		if (string.equals("1")){
			price = 10.0;
		} else if (string.equals("2")){
			price =  45.0;
		}else if (string.equals("3")){
			price =  20.0;
		} else if (string.equals("4")){
			price =  35.0;
		} else if (string.equals("5")){
			price =  50.0;
		} else {
			price =  0.0;
		}
		return price;
	}

}
