//Preenche o tabuleiro
for(i=0;i<8;i++){
    for(j=0;j<9;j++){
        instance_create(Xini+(i*65),Yini-65+(j*65),objGems);
    }
}
 for(j=0;j<8;j++){
        instance_create(Xini+(j*65),Yini-65,objGerador);
    }
