// Outil pour les éléments de l'établi (ex: trou, vis, ...)
module trou(h=3, d=1)
{
    $fn = 50;
    cylinder(h, d, center=true);
}


// Eléments de l'établi
module equerre(x=0,y=0,z=0){
    
    translate([x,y,z]){
        color("red",0.9){
            // plaque verticale
            translate([-20, 0, 1.5]){
                $planche_L = 19.5;
                $planche_l = 4.3;
                $planche_h = 1;
                cube([$planche_L, $planche_l, $planche_h], center = true);
            }
            
            // plaque profondeur
            translate([-29, 0, 8]){
                $planche_L = 14.5;
                $planche_l = 4.3;
                $planche_h = 1;
                cube([$planche_h, $planche_l, $planche_L], center = true);
            }
        }
    }
}

module planche_verticale_gauche(x=0, y=0, z=0)
{
    color("black",0.6){
        $planche_L = 202;
        $planche_l = 20.5;
        $planche_h = 2.3;
        translate([x,y,z]){
            // trou
            difference(){
                cube([$planche_L, $planche_l, $planche_h], center = true);
                
                // première planche à 130 cm
                $hauteur_trou_1 = ($planche_L/2) - 130;
                translate([$hauteur_trou_1,0,0]){
                    trou();
                }
               
                // deuxième planche à 165 cm
               $hauteur_trou_2 = ($planche_L/2) - 165;
               translate([$hauteur_trou_2,0,0]){
                    trou();
               }
                
                // troisième planche à 200 cm
               $hauteur_trou_3 = ($planche_L/2) - 200;
               translate([$hauteur_trou_3,0,0]){
                    trou();
               }   
            }
        }
    }
    
    // equerres
    equerre(0,0,0);
    equerre(-35,0,0);
    equerre(-70,0,0);
}

module planche_verticale_droite(x=0, y=180, z=0)
{
    color("black",0.6){
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
    // equerres
    equerre(0,180,0);
    equerre(-35,180,0);
    equerre(-70,180,0);
}

module planche_horizontale_premiere(x=-30, y=90, z=11)
{
    color("brown",0.5){
        $planche_L = 202;
        $planche_l = 20.5;
        $planche_h = 2.3;
        translate([x,y,z]){
            difference(){
                cube([$planche_h, $planche_L, $planche_l], center = true);
                
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
}

module planche_horizontale_deuxieme(x=-65, y=90, z=11)
{
    color("brown",0.5){
        $planche_L = 202;
        $planche_l = 20.5;
        $planche_h = 2.3;
        translate([x,y,z]){
            difference(){
                cube([$planche_h, $planche_L, $planche_l], center = true);
                
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
}

module planche_horizontale_troisieme(x=-100, y=90, z=11)
{
    color("brown",0.5){
        $planche_L = 202;
        $planche_l = 20.5;
        $planche_h = 2.3;
        translate([x,y,z]){
            difference(){
                cube([$planche_h, $planche_L, $planche_l], center = true);
                
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
}






//Affichage éléments
planche_verticale_gauche();
planche_verticale_droite();
planche_horizontale_premiere();
planche_horizontale_deuxieme();
planche_horizontale_troisieme();
