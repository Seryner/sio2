
public class EquationSecondDegre {

	public static void main(String[] args) {
		double a, b, c, discriminant, racine_unique;
		
		a = Saisie.lire_double("Saisir A : ");
		b = Saisie.lire_double("Saisir B : ");
		c = Saisie.lire_double("Saisir C : ");
		
		discriminant = (b*b) - 4 * a * c;
		System.out.println("Discriminant = " + discriminant);
		if(discriminant == 0)
		{
			racine_unique = RacineUnique(a, b);
			System.out.println("La fonction admet une racine unique x égal à " + racine_unique);
		}
		
		else if(discriminant < 0 )
		{
			
			System.out.println("La fonction n'a pas de solution");
			
		}
		
		else {
			Racines(a, b, discriminant);
		}
	}
	
	public static double RacineUnique(double aBIS, double bBIS)
	{
		return -bBIS / aBIS;
		
	}
	
	public static void Racines(double aBIS, double bBIS, double discBIS)
	{
		double 
		x1 = (-bBIS + Math.sqrt(discBIS)) / (2 * aBIS), 
		x2 = (-bBIS - Math.sqrt(discBIS)) / (2 * aBIS);
		System.out.println("La fonction admet 2 solutions avec x1 = " + x1 + " et x2 = " + x2);
		
	}
}