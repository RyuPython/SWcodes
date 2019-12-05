public class TestCircleWithRadiusException{
    public static void main(String[] args){
        try{
            CircleWithRadiusException c1 = new CircleWithRadiusException(-5);
            CircleWithRadiusException c2 = new CircleWithRadiusException(0);
            CircleWithRadiusException c3 = new CircleWithRadiusException(200);
        }catch(IllegalArgumentException ex){
            System.out.println("sdfghjj");
        }
        
        System.out.println("Number of objects created: " + CircleWithRadiusException.getNumberOfObjects());
    }
}

class CircleWithRadiusException{
	private static double radius;
	private static int NumberOfObjects = 0;
	
	public CircleWithRadiusException(double newRadius){
		setRadius(newRadius);
		NumberOfObjects++;
	}
			
	public static void setRadius(double newRadius)throws IllegalArgumentException{
		if(newRadius>0&&newRadius<100) radius = newRadius;
		else throw new IllegalArgumentException("Radius should be 0<radius<100.");
	}
	public static int getNumberOfObjects(){
		return NumberOfObjects;
	}
}