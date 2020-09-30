// Con 12 columnas y 24 filas

int columnas = 12;
int filas =24;



int posicion_fila=0;
int posicion_columna=0;
int posicion_fila_anterior;
int posicion_columna_anterior;
int estado=0;
int estado_anterior=0;

int tetro=0;


String direccion;
boolean fondo=false;

int[][][] tablero = {
   //Columna  {estado,R,G,B}
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} }, //Fila 
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },  //primeras 2 invisibles
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} },
   { {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0} } 
};


void settings() {
  
  int ancho_pantalla = displayWidth;
  int alto_pantalla=displayHeight;
  ancho_pantalla = int(ancho_pantalla/5.0);
  alto_pantalla = int(ancho_pantalla*2.0);
  size(ancho_pantalla,alto_pantalla);
}

void setup(){
  frameRate(30);
  fill(102);
  for(int i=0;i<=11;i++){ //columnas
    for(int j=0; j<=23;j++){ //filas
       rect(i*(width/12),j*(height/24),width/12,width/12);
       //println(i+","+j);
     } 
   }
posicion_fila =5;
posicion_columna = 5;
posicion_columna_anterior=posicion_columna;
posicion_fila_anterior=posicion_fila; 
estado=1;
tetro=3;
}


void draw(){
 println(estado);
 fill(130);
 rect(1*(width/12),22*(height/24),width*10/12,width/6);

    dibujar_pieza(tetro,estado,posicion_columna,     posicion_fila,true);
    dibujar_pieza(0,1,3,     14,true);
    dibujar_pieza(0,0,5,     19,true);
    

 if(fondo){
 posicion_columna=5;
 posicion_fila=5;

  tetro++;
  tetro %= 7;
 fondo=false;
 }

 
 dibujar_tablero();
 
}

void dibujar_tablero(){
  //Tablero[fila][columna][Estado,R,G,B]
  fill(0);
 for (int i=0; i<=tablero.length-1; i++){  //fila
   for(int j=0; j<=tablero[0].length-1;j++) { //columna
    fill(tablero[i][j][1],tablero[i][j][2],tablero[i][j][3]);
    if(i<=1){fill(102);}
    rect((j+1)* (width/12),(i-1) *(width/12),width/12,width/12);
    push();
    fill(255);
    text(tablero[i][j][0],(j+1)* (width/12)+10,(i-1)*(width/12)+20);
    pop();
  }
  
  }
  fill(130);
}

void dibujar_pieza(int pieza, int estado_pieza, int columna,int fila, boolean enable){
  switch(pieza) {
  case 0: 
    agregar_barra(columna,fila,estado_pieza,enable);
    break;
  case 1: 
    agregar_l_izq(columna,fila,estado_pieza,enable);
    break;
  case 2: 
    agregar_l_der(columna,fila,estado_pieza,enable);
    break;
  case 3: 
    agregar_p_izq(columna,fila,estado_pieza,enable);
    break;
  case 4: 
    agregar_p_der(columna,fila,estado_pieza,enable);
    break;
  case 5: 
    agregar_t(columna,fila,estado_pieza,enable);
    break;
  case 6: 
    agregar_cuadrado(columna,fila,estado_pieza,enable);
    break;
  }
}

void mover_pieza(int pieza, int estado_pieza, int columna,int fila, String direccion){
  if(fondo==false){
  dibujar_pieza(pieza,estado_pieza,columna,fila, false);
  }
  if(direccion=="derecha"){
   posicion_columna++;
  }
  if(direccion=="izquierda"){
   posicion_columna--;    
  }
  if(direccion=="abajo"){
    switch(pieza) { //Analizamos que pieza es
      case 0: //Si es la barra
        estado_pieza %= 2;
        switch(estado_pieza){
         case 0:  //Si está horizontal
            if(tablero[posicion_fila+2][posicion_columna-1][0]==0 
            && tablero[posicion_fila+2][posicion_columna-2][0]==0
            && tablero[posicion_fila+2][posicion_columna][0]==0
            && tablero[posicion_fila+2][posicion_columna+1][0]==0)
            {
              if(posicion_fila<20){posicion_fila++;}
              if(posicion_fila==20){fondo = true;}
            }
            else{
              fondo=true;
            }          
          break;
          case 1:  //Si está vertical
            if(tablero[posicion_fila+4][posicion_columna-1][0]==0){
              
              if(posicion_fila<18){posicion_fila++;}
              if(posicion_fila==18){posicion_fila=18; fondo = true;}
            }
            else{
              fondo=true;
            }
          break;
        }
      break;
      case 1: //Si es una L izq
      estado_pieza %= 4;
        switch(estado_pieza){
          case 0:
            if(tablero[posicion_fila+2][posicion_columna-1][0]==0 
            && tablero[posicion_fila+2][posicion_columna-2][0]==0
            && tablero[posicion_fila+2][posicion_columna][0]==0)
            {
              if(posicion_fila<20){posicion_fila++;}
              if(posicion_fila==20){posicion_fila=20; fondo = true;}
            }
            else{
              fondo=true;
            }                           
          break;   
          case 1:
            if(tablero[posicion_fila+3][posicion_columna-1][0]==0 && //mas abajo
               tablero[posicion_fila+1][posicion_columna][0]==0)
            {
              if(posicion_fila<19){posicion_fila++;}
              if(posicion_fila==19){posicion_fila=19; fondo = true;}
            }
            else{
              fondo=true;
            }
          break;
          case 2:
          if(tablero[posicion_fila+2][posicion_columna-1][0]==0 
            && tablero[posicion_fila+2][posicion_columna-2][0]==0
            && tablero[posicion_fila+3][posicion_columna][0]==0)
            {
              if(posicion_fila<19){posicion_fila++;}
              if(posicion_fila==19){fondo = true;}
            }
            else{
              fondo=true;
            }            
          break;
          case 3:
          if(  //Eje
          tablero[posicion_fila+3][posicion_columna-1][0]==0
        &&tablero[posicion_fila+3][posicion_columna-2][0]==0)
            {
              if(posicion_fila<19){posicion_fila++;}
              if(posicion_fila==19){fondo = true;}
            }
            else{
              fondo=true;
            }          
          break;
        }
      break;
      case 2:
      estado_pieza %= 4;
        switch(estado_pieza){
          case 0:
              if(tablero[posicion_fila+2][posicion_columna-1][0]==0 
              && tablero[posicion_fila+2][posicion_columna-2][0]==0
              && tablero[posicion_fila+2][posicion_columna][0]==0)
              {
                if(posicion_fila<20){posicion_fila++;}
                if(posicion_fila==20){posicion_fila=20; fondo = true;}
              }
              else{
                fondo=true;
              }                           
            break;
            case 1:
              if(tablero[posicion_fila+3][posicion_columna-1][0]==0
               &&tablero[posicion_fila+3][posicion_columna][0]==0)
              {
                if(posicion_fila<19){posicion_fila++;}
                if(posicion_fila==19){fondo = true;}
              }
              else{
                fondo=true;
              }                           
            break;
            case 2:
              if(tablero[posicion_fila+2][posicion_columna-1][0]==0 //Eje
               &&tablero[posicion_fila+2][posicion_columna][0]==0
               &&tablero[posicion_fila+3][posicion_columna-2][0]==0)
              {
                if(posicion_fila<19){posicion_fila++;}
                if(posicion_fila==19){fondo = true;}
              }
              else{
                fondo=true;
              }                           
            break;
            case 3:
              if(tablero[posicion_fila+3][columna-1][0]==0
               &&tablero[fila+1][columna-2][0]==0 )
              {
                if(posicion_fila<19){posicion_fila++;}
                if(posicion_fila==19){fondo = true;}
              }
              else{
                fondo=true;
              }                           
            break;
        }
      break;
      case 3:
      estado_pieza %= 2;
        switch(estado_pieza){
          case 0:
            if(tablero[posicion_fila+2][posicion_columna-1][0]==0  //Eje
             &&tablero[posicion_fila+2][posicion_columna-2][0]==0
             &&tablero[posicion_fila+1][posicion_columna][0]==0)
                {
                  if(posicion_fila<20){posicion_fila++;}
                  if(posicion_fila==20){fondo = true;}
                }
                else{
                  fondo=true;
                }                 
          break;
          case 1:
            if(tablero[posicion_fila+2][posicion_columna-1][0]==0           
             &&tablero[posicion_fila+3][posicion_columna][0]==0)
                {
                  if(posicion_fila<19){posicion_fila++;}
                  if(posicion_fila==19){fondo = true;}
                }
                else{
                  fondo=true;
                }                 
          break;
        }
      break;
      case 4:
      estado_pieza %= 2;
        switch(estado_pieza){
          case 0:
            if(tablero[posicion_fila+2][posicion_columna-1][0]==0  //Eje
             &&tablero[posicion_fila+2][posicion_columna][0]==0              
             &&tablero[posicion_fila+1][posicion_columna-2][0]==0)
                {
                  if(posicion_fila<20){posicion_fila++;}
                  if(posicion_fila==20){fondo = true;}
                }
                else{
                  fondo=true;
                }                 
          break;
          case 1:
            if(tablero[posicion_fila+2][posicion_columna][0]==0
             &&tablero[posicion_fila+3][posicion_columna-1][0]==0)
                {
                  if(posicion_fila<19){posicion_fila++;}
                  if(posicion_fila==19){fondo = true;}
                }
                else{
                  fondo=true;
                }                 
          break;
        }
      break;
     case 5:
      estado_pieza %= 4;
        switch(estado_pieza){
          case 0:
            if(tablero[posicion_fila+2][posicion_columna-1][0]==0  //Eje
             &&tablero[posicion_fila+2][posicion_columna-2][0]==0
             &&tablero[posicion_fila+2][posicion_columna][0]==0)
              {
                if(posicion_fila<20){posicion_fila++;}
                if(posicion_fila==20){fondo = true;}
            }
              else{
                fondo=true;
            }  
          break;
          case 1:
            if(tablero[posicion_fila+3][posicion_columna-1][0]==0
             &&tablero[posicion_fila+2][posicion_columna][0]==0)
             {
                if(posicion_fila<19){posicion_fila++;}
                if(posicion_fila==19){fondo = true;}
             }
              else{
                fondo=true;
            }  
          break;
          case 2:
            if(tablero[posicion_fila+2][posicion_columna-2][0]==0
             &&tablero[posicion_fila+2][posicion_columna][0]==0
             &&tablero[posicion_fila+3][posicion_columna-1][0]==0)
            {
                if(posicion_fila<19){posicion_fila++;}
                if(posicion_fila==19){fondo = true;}
            }
              else{
                fondo=true;
            }  
          break;
          case 3:
            if(tablero[posicion_fila+3][posicion_columna-1][0]==0
             &&tablero[posicion_fila+2][posicion_columna-2][0]==0)
              {
                if(posicion_fila<19){posicion_fila++;}
                if(posicion_fila==19){fondo = true;}
              }
              else{
                fondo=true;
            }  
          break;
        }
     break;
      
      
      
      
      case 6:
      estado_pieza %= 1;
        switch(estado_pieza){
          case 0:
            if(tablero[posicion_fila+2][posicion_columna-1][0]==0  //Eje
             &&tablero[posicion_fila+2][posicion_columna][0]==0)
            {
                if(posicion_fila<20){posicion_fila++;}
                if(posicion_fila==20){fondo = true;}
            }
              else{
                fondo=true;
            }  
          break;
       }
      break;     
    }
  }
}

void girar_pieza(int pieza, int estado_pieza, int columna,int fila){
  
  
  switch(pieza){
    case 0:
      estado_pieza%=2;
      switch(estado_pieza){
        case 0:
          if(tablero[fila][columna-1][0]==0
            &&tablero[fila+2][columna-1][0]==0
            &&tablero[fila+3][columna-1][0]==0
            )
             {
               dibujar_pieza(pieza,estado_pieza,columna,fila, false);
               estado++;
             } 
        break;
        
        case 1:
            if(columna>=2 && columna<=8){
              if(tablero[fila+1][columna-2][0]==0
               &&tablero[fila+1][columna][0]==0
               &&tablero[fila+1][columna+1][0]==0)
               {
                 dibujar_pieza(pieza,estado_pieza,columna,fila, false);
                 estado++;
               } 
             }
        
        break;        
     
      }
    break;
    
    case 1:
    estado_pieza%=4;
      switch(estado_pieza){
        case 0:
          if(tablero[fila][columna-1][0]==0
           &&tablero[fila+2][columna-1][0]==0
           &&tablero[fila][columna][0]==0)
          {
            dibujar_pieza(pieza,estado_pieza,columna,fila, false);
            estado++;
          }
        break;
        case 1:
          if(columna>=2){
            if(tablero[fila+1][columna-2][0]==0
             &&tablero[fila+1][columna][0]==0
             &&tablero[fila+2][columna][0]==0)
              {
               dibujar_pieza(pieza,estado_pieza,columna,fila, false);
              estado++;   
              }
          }
        
        break;
        case 2:
          if(true){
            if(tablero[fila][columna-1][0]==0
            &&tablero[fila+2][columna-1][0]==0
            &&tablero[fila+2][columna-2][0]==0 )
              {
                dibujar_pieza(pieza,estado_pieza,columna,fila, false);
              estado++;                  
              }
          }
        break;
        case 3:
          if(columna<=9){
              if(tablero[fila+1][columna-2][0]==0
                 &&tablero[fila+1][columna][0]==0
                 &&tablero[fila][columna-2][0]==0 )
                {
                  dibujar_pieza(pieza,estado_pieza,columna,fila, false);
                estado++;                  
                }
            }
        break;
      }
    break;
    
    case 2:
    estado_pieza %= 4;
      switch(estado_pieza){
        case 0:
          if(tablero[fila][columna-1][0]==0
           &&tablero[fila+2][columna-1][0]==0
           &&tablero[fila+2][columna][0]==0){
             dibujar_pieza(pieza,estado_pieza,columna,fila, false);
             estado++;         
        }       
        break;
        
        case 1:
          if(posicion_columna>=2){
              if(tablero[fila+1][columna-2][0]==0
               &&tablero[fila+1][columna][0]==0
               &&tablero[fila+2][columna-2][0]==0){
                 dibujar_pieza(pieza,estado_pieza,columna,fila, false);
                 estado++;         
            }
          }       
        break;
        
        case 2:
          if(tablero[fila][columna-1][0]==0
           &&tablero[fila+2][columna-1][0]==0
           &&tablero[fila][columna-2][0]==0){
             dibujar_pieza(pieza,estado_pieza,columna,fila, false);
             estado++;         
        }       
        break;
        
        case 3:
          if(posicion_columna<=9){           
            if(tablero[fila+1][columna-2][0]==0
               &&tablero[fila+1][columna][0]==0
               &&tablero[fila][columna][0]==0){
                 dibujar_pieza(pieza,estado_pieza,columna,fila, false);
                 estado++;
                }
          }
        break;
        
      }
    
   break;
   
   case 3:
   estado_pieza %=2;
     switch(estado_pieza){
       case 0:
          if(tablero[fila+1][columna][0]==0
           &&tablero[fila+2][columna][0]==0){  
           dibujar_pieza(pieza,estado_pieza,columna,fila, false);
           estado++;
         }
       
       break;
       
       case 1:
         if(columna>=2)
          if(         
                   // tablero[fila+1][columna-1][0]==0 && //Eje
             tablero[fila+1][columna-2][0]==0
                   //  tablero[fila][columna-1][0]==0
             &&tablero[fila][columna][0]==0){  
           dibujar_pieza(pieza,estado_pieza,columna,fila, false);
           estado++;
         }
       
       break;
       
       
     }
   
   
   break;
    
  }
  
 
}



void agregar_barra(int columna,int fila,int estado, boolean activar){
  estado = estado%2;
  if(estado==0){
    if(activar){
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
    }
    else{
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
  
  if(estado==1){
    //color
    if(activar){
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
    }
    else{
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

void agregar_l_izq(int columna,int fila,int estado, boolean activar){
  estado %= 4;
  if(estado==0){ //a fila se le resta 1 a columna se le suma 1 
  
  if(activar){    
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
    }
  else {    
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
  
  if(estado==1){
    
    if(activar){
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
    else{
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
  if(estado==2){
    if(activar){  
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
     }
     else{
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
  
  if(estado==3){
    if(activar){  
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
     }
     else{
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

void agregar_l_der(int columna,int fila,int estado, boolean activar){
  estado %= 4;
  if(estado==0){ //a fila se le resta 1 a columna se le suma 1 
    if(activar){
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
    }
    else{
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
  
  if(estado==1){
    if(activar){
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
    }
    else{
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
  if(estado==2){
    if(activar){      
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
    }
    else{
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
  
  if(estado==3){
    if(activar){  
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
    }
    else{
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



void agregar_p_izq(int columna,int fila,int estado, boolean activar){
  estado %= 2;
  if(estado==0){ //a fila se le resta 1 a columna se le suma 1 
    if(activar){
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
    }
    
    else{
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
  
  if(estado==1){
    if(activar){
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
    }
    else{
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

void agregar_p_der(int columna,int fila,int estado, boolean activar){
  estado %= 2;
  if(estado==0){ //a fila se le resta 1 a columna se le suma 1 
    if(activar){
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
    }
    else{
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
  if(estado==1){ //a fila se le resta 1 a columna se le suma 1 
    if(activar){
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
    }
    else{
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

void agregar_t(int columna,int fila,int estado, boolean activar){
  estado %= 4;
  if(estado==0){ //a fila se le resta 1 a columna se le suma 1 
    if(activar){
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
    }
    else{
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
  if(estado==1){ //a fila se le resta 1 a columna se le suma 1 
    if(activar){
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
    }
    else{
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
  
  if(estado==2){ //a fila se le resta 1 a columna se le suma 1 
    if(activar){
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
    }
    else{
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
  
  if(estado==3){ //a fila se le resta 1 a columna se le suma 1 
    if(activar){
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
    }
    else{
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
void agregar_cuadrado(int columna,int fila,int estado, boolean activar){
  estado %= 1;
  if(estado==0){ //a fila se le resta 1 a columna se le suma 1 
    if(activar){
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
    }
    else{
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



void mouseClicked() {
  girar_pieza(tetro,estado,posicion_columna,posicion_fila);
}


void keyPressed() {
    if (key == 's' || key == 'S') {
      mover_pieza(tetro,estado,posicion_columna,posicion_fila,"abajo");      
    }
    else if (key == 'w' || key == 'W') {
      mover_pieza(tetro,estado,posicion_columna,posicion_fila,"abajo");
    }
    else if (key == 'd' || key == 'D') {
      mover_pieza(tetro,estado,posicion_columna,posicion_fila,"derecha");
    }
    else if (key == 'a' || key == 'A') {
      mover_pieza(tetro,estado,posicion_columna,posicion_fila,"izquierda");
    }
}
  
