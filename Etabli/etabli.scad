// Outil pour les éléments de l'établi (ex: trou, vis, ...)
module trou(h=3, d=1)
{
    $fn = 50;
    cylinder(h, d, center=true);
}


// Eléments de l'établi
module planche_verticale_gauche(x=0, y=0, z=0)
{
    $planche_L = 202;
    $planche_l = 20.5;
    $planche_h = 2.3;
    translate([x,y,z]){
        difference(){
            cube([$planche_L, $planche_l, $planche_h], center = true);
            
            // première planche à 130 cm
            $hauteur_trou = ($planche_L/2);
            
            translate([$hauteur_trou - 130,0,0]){
                trou();
            }  
           
            // deuxième planche à 165 cm
           translate([$hauteur_trou - 165,0,0]){
                trou();
           }
            
            // troisième planche à 200 cm
           translate([$hauteur_trou - 200,0,0]){
                trou();
           }   
        }
    }
}

module planche_verticale_droite(x=0, y=200, z=0)
{
    $planche_L = 202;
    $planche_l = 20.5;
    $planche_h = 2.3;
    translate([x,y,z]){
        difference(){
            cube([$planche_L, $planche_l, $planche_h], center = true);
            
            // première planche à 130 cm
            $hauteur_trou = ($planche_L/2);
            
            translate([$hauteur_trou - 130,0,0]){
                trou();
            }  
           
            // deuxième planche à 165 cm
           translate([$hauteur_trou - 165,0,0]){
                trou();
           }
            
            // troisième planche à 200 cm
           translate([$hauteur_trou - 200,0,0]){
                trou();
           }   
        }
    }
}

module equerre(){
    
}



//Affichage éléments
planche_verticale_gauche();
planche_verticale_droite();