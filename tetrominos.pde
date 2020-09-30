void agregar_barra(int columna, int fila, int estado, boolean activar) {
  estado = estado%2;
  if (estado==0) {
    if (activar) {
      tablero[fila+1][columna-1][0]=1;
      tablero[fila+1][columna-2][0]=1;
      tablero[fila+1][columna][0]=1;
      tablero[fila+1][columna+1][0]=1;
      //color
      tablero[fila+1][columna-1][1]=170;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna-2][1]=170;
      tablero[fila+1][columna-2][2]=0;
      tablero[fila+1][columna-2][3]=0;

      tablero[fila+1][columna][1]=170;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=0;

      tablero[fila+1][columna+1][1]=170;
      tablero[fila+1][columna+1][2]=0;
      tablero[fila+1][columna+1][3]=0;
    } else {
      tablero[fila+1][columna-1][0]=0;
      tablero[fila+1][columna-2][0]=0;
      tablero[fila+1][columna][0]=0;
      tablero[fila+1][columna+1][0]=0;

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna-2][1]=0;
      tablero[fila+1][columna-2][2]=0;
      tablero[fila+1][columna-2][3]=0;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=0;

      tablero[fila+1][columna+1][1]=0;
      tablero[fila+1][columna+1][2]=0;
      tablero[fila+1][columna+1][3]=0;
    }
  }

  if (estado==1) {
    //color
    if (activar) {
      tablero[fila][columna-1][0]=1;
      tablero[fila+1][columna-1][0]=1;
      tablero[fila+2][columna-1][0]=1;
      tablero[fila+3][columna-1][0]=1;

      tablero[fila][columna-1][1]=170;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=0;

      tablero[fila+1][columna-1][1]=170;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+2][columna-1][1]=170;
      tablero[fila+2][columna-1][2]=0;
      tablero[fila+2][columna-1][3]=0;

      tablero[fila+3][columna-1][1]=170;
      tablero[fila+3][columna-1][2]=0;
      tablero[fila+3][columna-1][3]=0;
    } else {
      tablero[fila][columna-1][0]=0;
      tablero[fila+1][columna-1][0]=0;
      tablero[fila+2][columna-1][0]=0;
      tablero[fila+3][columna-1][0]=0;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=0;

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+2][columna-1][1]=0;
      tablero[fila+2][columna-1][2]=0;
      tablero[fila+2][columna-1][3]=0;

      tablero[fila+3][columna-1][1]=0;
      tablero[fila+3][columna-1][2]=0;
      tablero[fila+3][columna-1][3]=0;
    }
  }
}

void agregar_l_izq(int columna, int fila, int estado, boolean activar) {
  estado %= 4;
  if (estado==0) { //a fila se le resta 1 a columna se le suma 1 

    if (activar) {    
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila+1][columna-2][0]=1;
      tablero[fila+1][columna][0]=1;
      tablero[fila][columna-2][0]=1;
      //color
      tablero[fila+1][columna-1][1]=255;
      tablero[fila+1][columna-1][2]=255;
      tablero[fila+1][columna-1][3]=255;

      tablero[fila+1][columna-2][1]=255;
      tablero[fila+1][columna-2][2]=255;
      tablero[fila+1][columna-2][3]=255;

      tablero[fila+1][columna][1]=255;
      tablero[fila+1][columna][2]=255;
      tablero[fila+1][columna][3]=255;

      tablero[fila][columna-2][1]=255;
      tablero[fila][columna-2][2]=255;
      tablero[fila][columna-2][3]=255;
    } else {    
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila+1][columna-2][0]=0;
      tablero[fila+1][columna][0]=0;
      tablero[fila][columna-2][0]=0;
      //color
      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna-2][1]=0;
      tablero[fila+1][columna-2][2]=0;
      tablero[fila+1][columna-2][3]=0;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=0;

      tablero[fila][columna-2][1]=0;
      tablero[fila][columna-2][2]=0;
      tablero[fila][columna-2][3]=0;
    }
  }

  if (estado==1) {

    if (activar) {
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila][columna-1][0]=1;
      tablero[fila+2][columna-1][0]=1;
      tablero[fila][columna][0]=1;
      //color
      tablero[fila+1][columna-1][1]=255;
      tablero[fila+1][columna-1][2]=255;
      tablero[fila+1][columna-1][3]=255;

      tablero[fila][columna-1][1]=255;
      tablero[fila][columna-1][2]=255;
      tablero[fila][columna-1][3]=255;

      tablero[fila+2][columna-1][1]=255;
      tablero[fila+2][columna-1][2]=255;
      tablero[fila+2][columna-1][3]=255;

      tablero[fila][columna][1]=255;
      tablero[fila][columna][2]=255;
      tablero[fila][columna][3]=255;
    }
    //println(estado);} 
    else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila][columna-1][0]=0;
      tablero[fila+2][columna-1][0]=0;
      tablero[fila][columna][0]=0;
      //color
      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=0;

      tablero[fila+2][columna-1][1]=0;
      tablero[fila+2][columna-1][2]=0;
      tablero[fila+2][columna-1][3]=0;

      tablero[fila][columna][1]=0;
      tablero[fila][columna][2]=0;
      tablero[fila][columna][3]=0;
    }
  }
  if (estado==2) {
    if (activar) {  
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila+1][columna-2][0]=1;
      tablero[fila+1][columna][0]=1;
      tablero[fila+2][columna][0]=1;
      //color
      tablero[fila+1][columna-1][1]=255;
      tablero[fila+1][columna-1][2]=255;
      tablero[fila+1][columna-1][3]=255;

      tablero[fila+1][columna-2][1]=255;
      tablero[fila+1][columna-2][2]=255;
      tablero[fila+1][columna-2][3]=255;

      tablero[fila+1][columna][1]=255;
      tablero[fila+1][columna][2]=255;
      tablero[fila+1][columna][3]=255;

      tablero[fila+2][columna][1]=255;
      tablero[fila+2][columna][2]=255;
      tablero[fila+2][columna][3]=255;
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila+1][columna-2][0]=0;
      tablero[fila+1][columna][0]=0;
      tablero[fila+2][columna][0]=0;
      //color
      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna-2][1]=0;
      tablero[fila+1][columna-2][2]=0;
      tablero[fila+1][columna-2][3]=0;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=0;

      tablero[fila+2][columna][1]=0;
      tablero[fila+2][columna][2]=0;
      tablero[fila+2][columna][3]=0;
    }
  }

  if (estado==3) {
    if (activar) {  
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila][columna-1][0]=1;
      tablero[fila+2][columna-1][0]=1;
      tablero[fila+2][columna-2][0]=1;
      //color
      tablero[fila+1][columna-1][1]=255;
      tablero[fila+1][columna-1][2]=255;
      tablero[fila+1][columna-1][3]=255;

      tablero[fila][columna-1][1]=255;
      tablero[fila][columna-1][2]=255;
      tablero[fila][columna-1][3]=255;

      tablero[fila+2][columna-1][1]=255;
      tablero[fila+2][columna-1][2]=255;
      tablero[fila+2][columna-1][3]=255;

      tablero[fila+2][columna-2][1]=255;
      tablero[fila+2][columna-2][2]=255;
      tablero[fila+2][columna-2][3]=255;
      //println(estado);}
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila][columna-1][0]=0;
      tablero[fila+2][columna-1][0]=0;
      tablero[fila+2][columna-2][0]=0;
      //color
      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=0;

      tablero[fila+2][columna-1][1]=0;
      tablero[fila+2][columna-1][2]=0;
      tablero[fila+2][columna-1][3]=0;

      tablero[fila+2][columna-2][1]=0;
      tablero[fila+2][columna-2][2]=0;
      tablero[fila+2][columna-2][3]=0;
    }
  }
}

void agregar_l_der(int columna, int fila, int estado, boolean activar) {
  estado %= 4;
  if (estado==0) { //a fila se le resta 1 a columna se le suma 1 
    if (activar) {
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila+1][columna-2][0]=1;
      tablero[fila+1][columna][0]=1;
      tablero[fila][columna][0]=1;
      //color
      tablero[fila+1][columna-1][1]=255;
      tablero[fila+1][columna-1][2]=255;
      tablero[fila+1][columna-1][3]=255;

      tablero[fila+1][columna-2][1]=255;
      tablero[fila+1][columna-2][2]=255;
      tablero[fila+1][columna-2][3]=255;

      tablero[fila+1][columna][1]=255;
      tablero[fila+1][columna][2]=255;
      tablero[fila+1][columna][3]=255;

      tablero[fila][columna][1]=255;
      tablero[fila][columna][2]=255;
      tablero[fila][columna][3]=255;
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila+1][columna-2][0]=0;
      tablero[fila+1][columna][0]=0;
      tablero[fila][columna][0]=0;
      //color
      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna-2][1]=0;
      tablero[fila+1][columna-2][2]=0;
      tablero[fila+1][columna-2][3]=0;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=0;

      tablero[fila][columna][1]=0;
      tablero[fila][columna][2]=0;
      tablero[fila][columna][3]=0;
    }
  }

  if (estado==1) {
    if (activar) {
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila][columna-1][0]=1;
      tablero[fila+2][columna-1][0]=1;
      tablero[fila+2][columna][0]=1;
      //color
      tablero[fila+1][columna-1][1]=255;
      tablero[fila+1][columna-1][2]=255;
      tablero[fila+1][columna-1][3]=255;

      tablero[fila][columna-1][1]=255;
      tablero[fila][columna-1][2]=255;
      tablero[fila][columna-1][3]=255;

      tablero[fila+2][columna-1][1]=255;
      tablero[fila+2][columna-1][2]=255;
      tablero[fila+2][columna-1][3]=255;

      tablero[fila+2][columna][1]=255;
      tablero[fila+2][columna][2]=255;
      tablero[fila+2][columna][3]=255;
      //println(estado);}
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila][columna-1][0]=0;
      tablero[fila+2][columna-1][0]=0;
      tablero[fila+2][columna][0]=0;
      //color
      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=0;

      tablero[fila+2][columna-1][1]=0;
      tablero[fila+2][columna-1][2]=0;
      tablero[fila+2][columna-1][3]=0;

      tablero[fila+2][columna][1]=0;
      tablero[fila+2][columna][2]=0;
      tablero[fila+2][columna][3]=0;
      //println(estado);}
    }
  }
  if (estado==2) {
    if (activar) {      
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila+1][columna-2][0]=1;
      tablero[fila+1][columna][0]=1;
      tablero[fila+2][columna-2][0]=1;
      //color
      tablero[fila+1][columna-1][1]=255;
      tablero[fila+1][columna-1][2]=255;
      tablero[fila+1][columna-1][3]=255;

      tablero[fila+1][columna-2][1]=255;
      tablero[fila+1][columna-2][2]=255;
      tablero[fila+1][columna-2][3]=255;

      tablero[fila+1][columna][1]=255;
      tablero[fila+1][columna][2]=255;
      tablero[fila+1][columna][3]=255;

      tablero[fila+2][columna-2][1]=255;
      tablero[fila+2][columna-2][2]=255;
      tablero[fila+2][columna-2][3]=255;
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila+1][columna-2][0]=0;
      tablero[fila+1][columna][0]=0;
      tablero[fila+2][columna-2][0]=0;
      //color
      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna-2][1]=0;
      tablero[fila+1][columna-2][2]=0;
      tablero[fila+1][columna-2][3]=0;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=0;

      tablero[fila+2][columna-2][1]=0;
      tablero[fila+2][columna-2][2]=0;
      tablero[fila+2][columna-2][3]=0;
    }
  }

  if (estado==3) {
    if (activar) {  
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila][columna-1][0]=1;
      tablero[fila+2][columna-1][0]=1;
      tablero[fila][columna-2][0]=1;
      //color
      tablero[fila+1][columna-1][1]=255;
      tablero[fila+1][columna-1][2]=255;
      tablero[fila+1][columna-1][3]=255;

      tablero[fila][columna-1][1]=255;
      tablero[fila][columna-1][2]=255;
      tablero[fila][columna-1][3]=255;

      tablero[fila+2][columna-1][1]=255;
      tablero[fila+2][columna-1][2]=255;
      tablero[fila+2][columna-1][3]=255;

      tablero[fila][columna-2][1]=255;
      tablero[fila][columna-2][2]=255;
      tablero[fila][columna-2][3]=255;
      //println(estado);}
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila][columna-1][0]=0;
      tablero[fila+2][columna-1][0]=0;
      tablero[fila][columna-2][0]=0;
      //color
      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=0;

      tablero[fila+2][columna-1][1]=0;
      tablero[fila+2][columna-1][2]=0;
      tablero[fila+2][columna-1][3]=0;

      tablero[fila][columna-2][1]=0;
      tablero[fila][columna-2][2]=0;
      tablero[fila][columna-2][3]=0;
    }
  }
}



void agregar_p_izq(int columna, int fila, int estado, boolean activar) {
  estado %= 2;
  if (estado==0) { //a fila se le resta 1 a columna se le suma 1 
    if (activar) {
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila+1][columna-2][0]=1;
      tablero[fila][columna-1][0]=1;
      tablero[fila][columna][0]=1;

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=170;
      tablero[fila+1][columna-1][3]=1;

      tablero[fila+1][columna-2][1]=0;
      tablero[fila+1][columna-2][2]=170;
      tablero[fila+1][columna-2][3]=1;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=170;
      tablero[fila][columna-1][3]=1;

      tablero[fila][columna][1]=0;
      tablero[fila][columna][2]=170;
      tablero[fila][columna][3]=1;
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila+1][columna-2][0]=0;
      tablero[fila][columna-1][0]=0;
      tablero[fila][columna][0]=0;

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna-2][1]=0;
      tablero[fila+1][columna-2][2]=0;
      tablero[fila+1][columna-2][3]=0;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=0;

      tablero[fila][columna][1]=0;
      tablero[fila][columna][2]=0;
      tablero[fila][columna][3]=0;
    }
  }

  if (estado==1) {
    if (activar) {
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila+1][columna][0]=1;
      tablero[fila][columna-1][0]=1;
      tablero[fila+2][columna][0]=1;

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=170;
      tablero[fila+1][columna-1][3]=1;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=170;
      tablero[fila+1][columna][3]=1;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=170;
      tablero[fila][columna-1][3]=1;

      tablero[fila+2][columna][1]=0;
      tablero[fila+2][columna][2]=170;
      tablero[fila+2][columna][3]=1;
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila+1][columna][0]=0;
      tablero[fila][columna-1][0]=0;
      tablero[fila+2][columna][0]=0;

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=0;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=0;

      tablero[fila+2][columna][1]=0;
      tablero[fila+2][columna][2]=0;
      tablero[fila+2][columna][3]=0;
    }
  }
}

void agregar_p_der(int columna, int fila, int estado, boolean activar) {
  estado %= 2;
  if (estado==0) { //a fila se le resta 1 a columna se le suma 1 
    if (activar) {
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila+1][columna][0]=1;
      tablero[fila][columna-1][0]=1;
      tablero[fila][columna-2][0]=1;

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=170;
      tablero[fila+1][columna-1][3]=1;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=170;
      tablero[fila+1][columna][3]=1;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=170;
      tablero[fila][columna-1][3]=1;

      tablero[fila][columna-2][1]=0;
      tablero[fila][columna-2][2]=170;
      tablero[fila][columna-2][3]=1;
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila+1][columna][0]=0;
      tablero[fila][columna-1][0]=0;
      tablero[fila][columna-2][0]=0;

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=0;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=0;

      tablero[fila][columna-2][1]=0;
      tablero[fila][columna-2][2]=0;
      tablero[fila][columna-2][3]=0;
    }
  }
  if (estado==1) { //a fila se le resta 1 a columna se le suma 1 
    if (activar) {
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila+1][columna][0]=1;
      tablero[fila][columna][0]=1;
      tablero[fila+2][columna-1][0]=1;

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=170;
      tablero[fila+1][columna-1][3]=1;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=170;
      tablero[fila+1][columna][3]=1;

      tablero[fila][columna][1]=0;
      tablero[fila][columna][2]=170;
      tablero[fila][columna][3]=1;

      tablero[fila+2][columna-1][1]=0;
      tablero[fila+2][columna-1][2]=170;
      tablero[fila+2][columna-1][3]=1;
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila+1][columna][0]=0;
      tablero[fila][columna][0]=0;
      tablero[fila+2][columna-1][0]=0;

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=0;

      tablero[fila][columna][1]=0;
      tablero[fila][columna][2]=0;
      tablero[fila][columna][3]=0;

      tablero[fila+2][columna-1][1]=0;
      tablero[fila+2][columna-1][2]=0;
      tablero[fila+2][columna-1][3]=0;
    }
  }
}

void agregar_t(int columna, int fila, int estado, boolean activar) {
  estado %= 4;
  if (estado==0) { //a fila se le resta 1 a columna se le suma 1 
    if (activar) {
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila+1][columna-2][0]=1;
      tablero[fila+1][columna][0]=1;
      tablero[fila][columna-1][0]=1; 

      tablero[fila+1][columna-1][1]=170;
      tablero[fila+1][columna-1][2]=86;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna][1]=170;
      tablero[fila+1][columna][2]=86;
      tablero[fila+1][columna][3]=0;

      tablero[fila][columna-1][1]=170;
      tablero[fila][columna-1][2]=86;
      tablero[fila][columna-1][3]=0;

      tablero[fila+1][columna-2][1]=170;
      tablero[fila+1][columna-2][2]=86;
      tablero[fila+1][columna-2][3]=0;
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila+1][columna-2][0]=0;
      tablero[fila+1][columna][0]=0;
      tablero[fila][columna-1][0]=0; 

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=0;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=0;

      tablero[fila+1][columna-2][1]=0;
      tablero[fila+1][columna-2][2]=0;
      tablero[fila+1][columna-2][3]=0;
    }
  }
  if (estado==1) { //a fila se le resta 1 a columna se le suma 1 
    if (activar) {
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila+2][columna-1][0]=1;
      tablero[fila][columna-1][0]=1;
      tablero[fila+1][columna][0]=1; 

      tablero[fila+1][columna-1][1]=170;
      tablero[fila+1][columna-1][2]=86;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+2][columna-1][1]=170;
      tablero[fila+2][columna-1][2]=86;
      tablero[fila+2][columna-1][3]=0;

      tablero[fila][columna-1][1]=170;
      tablero[fila][columna-1][2]=86;
      tablero[fila][columna-1][3]=0;

      tablero[fila+1][columna][1]=170;
      tablero[fila+1][columna][2]=86;
      tablero[fila+1][columna][3]=0;
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila+2][columna-1][0]=0;
      tablero[fila][columna-1][0]=0;
      tablero[fila+1][columna][0]=0; 

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+2][columna-1][1]=0;
      tablero[fila+2][columna-1][2]=0;
      tablero[fila+2][columna-1][3]=0;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=0;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=0;
    }
  }

  if (estado==2) { //a fila se le resta 1 a columna se le suma 1 
    if (activar) {
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila+1][columna-2][0]=1;
      tablero[fila+1][columna][0]=1;
      tablero[fila+2][columna-1][0]=1; 

      tablero[fila+1][columna-1][1]=170;
      tablero[fila+1][columna-1][2]=86;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna][1]=170;
      tablero[fila+1][columna][2]=86;
      tablero[fila+1][columna][3]=0;

      tablero[fila+2][columna-1][1]=170;
      tablero[fila+2][columna-1][2]=86;
      tablero[fila+2][columna-1][3]=0;

      tablero[fila+1][columna-2][1]=170;
      tablero[fila+1][columna-2][2]=86;
      tablero[fila+1][columna-2][3]=0;
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila+1][columna-2][0]=0;
      tablero[fila+1][columna][0]=0;
      tablero[fila+2][columna-1][0]=0; 

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=0;

      tablero[fila+2][columna-1][1]=0;
      tablero[fila+2][columna-1][2]=0;
      tablero[fila+2][columna-1][3]=0;

      tablero[fila+1][columna-2][1]=0;
      tablero[fila+1][columna-2][2]=0;
      tablero[fila+1][columna-2][3]=0;
    }
  }

  if (estado==3) { //a fila se le resta 1 a columna se le suma 1 
    if (activar) {
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila+2][columna-1][0]=1;
      tablero[fila][columna-1][0]=1;
      tablero[fila+1][columna-2][0]=1; 

      tablero[fila+1][columna-1][1]=170;
      tablero[fila+1][columna-1][2]=86;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+2][columna-1][1]=170;
      tablero[fila+2][columna-1][2]=86;
      tablero[fila+2][columna-1][3]=0;

      tablero[fila][columna-1][1]=170;
      tablero[fila][columna-1][2]=86;
      tablero[fila][columna-1][3]=0;

      tablero[fila+1][columna-2][1]=170;
      tablero[fila+1][columna-2][2]=86;
      tablero[fila+1][columna-2][3]=0;
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila+2][columna-1][0]=0;
      tablero[fila][columna-1][0]=0;
      tablero[fila+1][columna-2][0]=0; 

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+2][columna-1][1]=0;
      tablero[fila+2][columna-1][2]=0;
      tablero[fila+2][columna-1][3]=0;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=0;

      tablero[fila+1][columna-2][1]=0;
      tablero[fila+1][columna-2][2]=0;
      tablero[fila+1][columna-2][3]=0;
    }
  }
}
void agregar_cuadrado(int columna, int fila, int estado, boolean activar) {
  estado %= 1;
  if (estado==0) { //a fila se le resta 1 a columna se le suma 1 
    if (activar) {
      tablero[fila+1][columna-1][0]=1;  //Eje
      tablero[fila+1][columna][0]=1;
      tablero[fila][columna-1][0]=1; 
      tablero[fila][columna][0]=1;

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=170;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=170;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=170;

      tablero[fila][columna][1]=0;
      tablero[fila][columna][2]=0;
      tablero[fila][columna][3]=170;
    } else {
      tablero[fila+1][columna-1][0]=0;  //Eje
      tablero[fila+1][columna][0]=0;
      tablero[fila][columna-1][0]=0; 
      tablero[fila][columna][0]=0;

      tablero[fila+1][columna-1][1]=0;
      tablero[fila+1][columna-1][2]=0;
      tablero[fila+1][columna-1][3]=0;

      tablero[fila+1][columna][1]=0;
      tablero[fila+1][columna][2]=0;
      tablero[fila+1][columna][3]=0;

      tablero[fila][columna-1][1]=0;
      tablero[fila][columna-1][2]=0;
      tablero[fila][columna-1][3]=0;

      tablero[fila][columna][1]=0;
      tablero[fila][columna][2]=0;
      tablero[fila][columna][3]=0;
    }
  }
}
