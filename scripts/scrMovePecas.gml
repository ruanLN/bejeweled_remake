match=0;
//horizontal
if(x<623) and (y>=Yini){
    //se houver mais duas pecas ao lado da atual
    if( (!position_empty(x+65,y)) and (!position_empty(x+130,y))){
        var g1,g2;
        g1 = instance_position(x+65,y, objGems);
        g2 = instance_position(x+130,y, objGems);
        //se as pecas estiverem paradas
        if(g1.parado == true && g2.parado == true){
            //se as imagens foram iguais, combinado == 1
            if(g1.image_index == image_index) and (g2.image_index == image_index){
                match = 1;
            }
        }
    }
}
// vertical
if(y<421) and (y>=Yini){
    if( (!position_empty(x,y+65)) and (!position_empty(x,y+130))){
        var g3,g4;
        g3 = instance_position(x,y+65, objGems);
        g4 = instance_position(x,y+130, objGems);
        if(g3.parado == true && g4.parado == true){
            //se as imagens forem iguais, combinado == 1
            if(g3.image_index == image_index) and (g4.image_index == image_index){
                match = 2;
            }
        }
    }
}

switch(match){
    case 1:
        with(g1)
        alarm[1]=1; // destrói peca g1
        with(g2)
        alarm[1]=1;
        alarm[1]=1;
            
        with(peca1){ //troca pecas 1 e 2 de lugar
            x=peca2x;
            y=peca2y;
        }
        with(peca2){
            x=peca1x;
            y=peca1y;
        }
         peca1=0;
         peca2=0;   
        
        with(all){
            off=false;
            espera=false;
            noMatch=false; 
        }
        match=0; 
         
    break;
    case 2:
        with(g3)
        alarm[1]=1;        
        with(g4)
        alarm[1]=1;
        alarm[1]=1;
        
        with(peca1){
            x=peca2x;
            y=peca2y;
        }
        with(peca2){
            x=peca1x;
            y=peca1y;
        }
         peca1=0;
         peca2=0;   
        
        with(all){
            off=false;
            espera=false;
            noMatch=false; 
        }
        match=0; 
    break;
    default:
    if(peca1==id){
        peca2.noMatch=true; 
    }
    if(peca2==id){
        peca1.noMatch=true;
    }
}
