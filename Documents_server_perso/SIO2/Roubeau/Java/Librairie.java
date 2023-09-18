public class Librairie {

	public static void main(String[] args) {
		int nbex, nbetoile, plivre=0;
		double machat, mreduc, port=0, pap;
		String type;
		
		nbex = Saisie.lire_int("Saisir le nombre d'exemplaires");
		nbetoile = Saisie.lire_int("Saisir le nombre d'étoiles, compris entre 1 et 3");
		while ((nbetoile<1)||(nbetoile>3)) {
			nbetoile = Saisie.lire_int("Recommencez.Saisir 1, 2 ou 3");
		}
		type = Saisie.lire_String("Quel est le type de vente ? M pour magasin, C pour en correspondance");
		while ((type.equals("C")==false)&&(type.equals("M")==false)) {
			type = Saisie.lire_String("Recommencez. C'est bien M ou C qu'il faut saisir");
		}
		switch(nbetoile) {
		case 1 : plivre = 18;break;
		case 2 : plivre = 24;break;
		case 3 : plivre = 29;break;
		}
		machat = nbex*plivre;
		if (nbex>=20) mreduc = machat*0.1; else mreduc = 0;
		if (type.equals("C")&&(machat<200)) port = machat*0.02; else mreduc = 0;
		System.out.println("Le montant de l'achat: "+machat+" euros");
		System.out.println("Le montant de la réduction : "+mreduc+" euros");
		System.out.println("Le montant des frais de port : "+port+" euros");
		pap = machat - mreduc + port;
		System.out.println("Le prix à payer :"+pap+" euros");	
	}

}