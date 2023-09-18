public class CarreDeNombres {

	public static void main(String[] args) {
		
		int tab[], N, I, nombre;
		
		N = Saisie.lire_int("Veuillez saisir le nombre de chiffres impairs, ce nombre doit être strictement supérieur à 0");
		
		while(N < 0)
		{
			N = Saisie.lire_int("Erreur de saisie, veuillez recommencer");
		}
		
		tab = new int[N];
		
		
		nombre = 1;
		
		for(I = 0; I < N; I++)
		{
			tab[I] = nombre;
			nombre += 2;
		}

	}

}