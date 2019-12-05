public class CastingDemo2 {
  public static void main(String[] args) {
    display(new Circle(3.5));
    display(new Rectangle(4,5));
    display(new Trapezoid(4,5,6));
    display(new Diamond(4,5));
    display(new Ellipse(4,5));
  }

  public static void display(Object obj) {
    /* FILL - Write your own display method
     * that displays areas of the shapes */
    double area;
    if ( obj instanceof Circle ) 
      area = ((Circle)obj).getArea();
    else if ( obj instanceof Rectangle ) 
      area = ((Rectangle)obj).getArea();
    else if ( obj instanceof Trapezoid ) 
      area = ((Trapezoid)obj).getArea();
    else if ( obj instanceof Diamond ) 
      area = ((Diamond)obj).getArea();
    else if ( obj instanceof Ellipse ) 
      area = ((Ellipse)obj).getArea();
    else {
      System.out.println("unknown shape: " + obj.getClass().getName());
      return;
    }
    System.out.println("Area of a(n) " + obj.getClass().getName() +
	" is " + area);
  }
}

class Circle {
  private double radius;
  public Circle( double radius ) { this.radius = radius; }
  public double getArea() { return 2*Math.PI*radius*radius; }
}

class Rectangle {
  private double width, height;
  public Rectangle( double width, double height ) {
    this.width = width; this.height = height;
  }
  public double getArea() { return width*height; }
}

class Trapezoid {
  private double top, bottom, height;
  public Trapezoid( double top, double bottom, double height ) {
    this.top = top; this.bottom = bottom; this.height = height;
  }
  public double getArea() { return top*bottom*height/2.0; }
}

class Diamond {
  private double hlength, vlength;
  public Diamond( double hlength, double vlength ) {
    this.hlength = hlength; this.vlength = vlength;
  }
  public double getArea() { return hlength*vlength/2; }
}

class Ellipse {
  private double a, b;
  public Ellipse( double a, double b ) {
    this.a = a; this.b = b;
  }
  public double getArea() { return Math.PI*a*b; }
}
