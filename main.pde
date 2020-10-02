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

int puntaje = 0;
int nivel = 0;
int filas_eliminadas=0;


String direccion;
boolean fondo=false;

int tiempo_anterior = 0;
boolean toma_tiempo = true;
int tiempo_bajada=500;


int[][][] tablero = {
  //Columna  {estado,R,G,B}
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, //Fila 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, //primeras 2 invisibles
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0} }, 
  { {0, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0} } 
};


void settings() {

  int ancho_pantalla = displayWidth;
  int alto_pantalla=displayHeight;
  ancho_pantalla = int(ancho_pantalla/5.0);
  alto_pantalla = int(ancho_pantalla*2.0);
  size(ancho_pantalla, alto_pantalla);
}

void setup() {
  frameRate(30);
  fill(102);
  for (int i=0; i<=columnas-1; i++) { //columnas
    for (int j=0; j<=filas-1; j++) { //filas
      rect(i*(width/columnas), j*(height/filas), width/columnas, width/columnas);
      //println(i+","+j);
    }
  }
  posicion_fila =5;
  posicion_columna = 5;
  posicion_columna_anterior=posicion_columna;
  posicion_fila_anterior=posicion_fila; 
  estado=0;
}


void draw() {
  if(toma_tiempo){
   tiempo_anterior=millis(); 
   toma_tiempo = false;
  }
  if(millis()-tiempo_anterior>tiempo_bajada){
  mover_pieza(tetro, estado, posicion_columna, posicion_fila, "abajo");
  toma_tiempo = true;
  }
  
  
 // println(estado);
  stroke(0);
  fill(130);
  rect(1*(width/12), 22*(height/24), width*10/12, width/6);
  fill(0);
  textSize(20);
  text("Puntaje: " + puntaje,width/10,22.8*(height/24));
  text("Nivel: " + nivel,6*width/10,22.8*(height/24));
  //println(puntaje);

  dibujar_pieza(tetro, estado, posicion_columna, posicion_fila, true);
 // dibujar_pieza(0, 1, 3, 14, true);
 // dibujar_pieza(0, 0, 5, 19, true);
  if (fondo) {
    revisarFila();
    posicion_columna=5;
    posicion_fila=0;
    tetro += int(random(1,6));
    println(int(random(1,6)));
    tetro %= 7;
    fondo=false;
  }
  
  dibujar_tablero();
  
}

void dibujar_tablero() {
  //Tablero[fila][columna][Estado,R,G,B]
  fill(0);
  for (int i=0; i<=tablero.length-1; i++) {  //fila
    for (int j=0; j<=tablero[0].length-1; j++) { //columna
      if(tablero[i][j][0]!=0){stroke(100);}
      else{stroke(0);}
      fill(tablero[i][j][1], tablero[i][j][2], tablero[i][j][3]);
      if (i<=1) {
        fill(102);
      }
      rect((j+1)* (width/12), (i-1) *(width/12), width/12, width/12);
      push();
      fill(255);
      text(tablero[i][j][0], (j+1)* (width/12)+10, (i-1)*(width/12)+20);
      pop();
    }
  }
  fill(130);
}

void dibujar_pieza(int pieza, int estado_pieza, int columna, int fila, boolean enable) {
  switch(pieza) {
  case 0: 
    agregar_barra(columna, fila, estado_pieza, enable);
    break;
  case 1: 
    agregar_l_izq(columna, fila, estado_pieza, enable);
    break;
  case 2: 
    agregar_l_der(columna, fila, estado_pieza, enable);
    break;
  case 3: 
    agregar_p_izq(columna, fila, estado_pieza, enable);
    break;
  case 4: 
    agregar_p_der(columna, fila, estado_pieza, enable);
    break;
  case 5: 
    agregar_t(columna, fila, estado_pieza, enable);
    break;
  case 6: 
    agregar_cuadrado(columna, fila, estado_pieza, enable);
    break;
  }
}

void mover_pieza(int pieza, int estado_pieza, int columna, int fila, String direccion) {
  if (fondo==false) {
    dibujar_pieza(pieza, estado_pieza, columna, fila, false);
  }
  if (direccion=="derecha") { 
    switch(pieza){
      case 0:
        estado %= 2;
        switch(estado){
          case 0:
            if(posicion_columna<8){
              if(tablero[fila+1][columna+1+1][0]==0){
                posicion_columna++;
              }
            }
          break;
          case 1:
            if(posicion_columna<10){
              if(tablero[fila][columna][0]==0
              &&tablero[fila+1][columna][0]==0
              &&tablero[fila+2][columna][0]==0
              &&tablero[fila+3][columna][0]==0)
              {
                posicion_columna++;
              }
            }
        break;
        }
      break; //end-pieza case 0
      case 1:
        estado %= 4;
        switch(estado){
          case 0:
            if(posicion_columna<9){
              if(tablero[fila+1][columna+1][0]==0
               &&tablero[fila][columna-1][0]==0){
              posicion_columna++;
              }
            }
          break;
          case 1:
            if(posicion_columna<9){
              if(tablero[fila+1][columna][0]==0  //Eje
               &&tablero[fila+2][columna][0]==0
               &&tablero[fila][columna+1][0]==0){
              posicion_columna++;
              }
            }
          break;
          case 2:
            if(posicion_columna<9){
              if(tablero[fila+1][columna+1][0]==0
                 &&tablero[fila+2][columna+1][0]==0){
              posicion_columna++;}
            }
          break;
          case 3:
            if(posicion_columna<10){
              if(tablero[fila+1][columna][0]==0  
               &&tablero[fila][columna][0]==0
               &&tablero[fila+2][columna][0]==0){
      
              posicion_columna++;}
            }
          break;          
        } 
      break; //end-pieza case 1
      case 2:
        estado %= 4;
        switch(estado){
          case 0:
            if(posicion_columna<9){
              if(tablero[fila+1][columna+1][0]==0
               &&tablero[fila][columna+1][0]==0)
              posicion_columna++;
            }
          break;
          case 1:
            if(posicion_columna<9){
              if(tablero[fila+1][columna][0]==0  //Eje
               &&tablero[fila][columna][0]==0
               &&tablero[fila+2][columna+1][0]==0){ 
                posicion_columna++;
              }
            }
          break;
          case 2:
            if(posicion_columna<9){
              if(tablero[fila+1][columna+1][0]==0
               &&tablero[fila+2][columna-1][0]==0){
              posicion_columna++;}
            }
          break;
          case 3:
            if(posicion_columna<10){
              if(tablero[fila+1][columna][0]==0
               &&tablero[fila][columna][0]==0
               &&tablero[fila+2][columna][0]==0){
              posicion_columna++;  }
            }
          break;
        }
      break; //end-pieza case 2
      case 3:
        estado %= 2;
        switch(estado_pieza){
          case 0:
          if(posicion_columna <9){
            if(tablero[fila+1][columna][0]==0
             &&tablero[fila][columna+1][0]==0){
              posicion_columna++;
            }
          }
          break;
          case 1:
          if(posicion_columna <9){
            if(tablero[fila][columna][0]==0
             &&tablero[fila+1][columna+1][0]==0
             &&tablero[fila+2][columna+1][0]==0){
             posicion_columna++;
           }            
          }
          break;        
        }
      break; // end-pieza case 3
      case 4:
      estado %= 2;
        switch(estado){
         case 0:
           if(posicion_columna<9){
             if(tablero[fila+1][columna+1][0]==0
              &&tablero[fila][columna][0]==0){
               posicion_columna++;
             }
           }
         break;
         case 1:
           if(posicion_columna<9){
             if(tablero[fila+1][columna+1][0]==0
              &&tablero[fila][columna+1][0]==0
              &&tablero[fila+2][columna][0]==0){
               posicion_columna++;
             }
           }
         break;          
        }    
      break;//end-pieza 4
      case 5:
      estado %= 4;
        switch(estado){
          case 0:
            if(posicion_columna<9){
              if(tablero[fila+1][columna+1][0]==0
               &&tablero[fila][columna][0]==0){
              posicion_columna++;
              }
            }
          break;
          case 1:
            if(posicion_columna<9){
                if(tablero[fila+1][columna+1][0]==0
                 &&tablero[fila][columna][0]==0
                 &&tablero[fila+2][columna][0]==0){
                posicion_columna++;
                }
              }
          break;
          case 2:
            if(posicion_columna<9){
                if(tablero[fila+1][columna+1][0]==0
                 &&tablero[fila+2][columna][0]==0){
                posicion_columna++;
                }
              }
          break;
          case 3:
            if(posicion_columna<10){
                if(tablero[fila+1][columna][0]==0
                 &&tablero[fila+2][columna][0]==0
                 &&tablero[fila][columna][0]==0){
                posicion_columna++;
                }
              }
          break;
        }
          
      break;//end pieza 5
      case 6:
        if(posicion_columna<9){
                if(tablero[fila+1][columna+1][0]==0
                 &&tablero[fila][columna+1][0]==0){
                posicion_columna++;
                }
              }
      break;
    } //end case pieza  
  }
  if (direccion=="izquierda") {
    switch(pieza){
      case 0:
      estado %=2;
        switch(estado){
          case 0:
            if(posicion_columna>2){
              if(tablero[fila+1][columna-3][0]==0){
                posicion_columna--;
              }
            }
          break;
          case 1:
            if(posicion_columna>1){
             if(tablero[fila][columna-2][0]==0
              &&tablero[fila+1][columna-2][0]==0
              &&tablero[fila+2][columna-2][0]==0
              &&tablero[fila+3][columna-2][0]==0){
               posicion_columna--;
             }
            }
          break;
        }      
      break;  //end  pieza 0 
      
      case 1:
      estado %=4;
        switch(estado){
          case 0:
            if(posicion_columna>2){
             if(tablero[fila+1][columna-3][0]==0
              &&tablero[fila][columna-3][0]==0){
               posicion_columna--;   
             }
            }
          break;
          case 1:
            if(posicion_columna>1){
              if(tablero[fila+1][columna-2][0]==0 
               &&tablero[fila][columna-2][0]==0
               &&tablero[fila+2][columna-2][0]==0){
               posicion_columna--; 
              }
            }
          break;
          case 2:
            if(posicion_columna>2){
              if(tablero[fila+1][columna-3][0]==0
                 &&tablero[fila+2][columna-1][0]==0){
               posicion_columna--; 
              }
            }
          break;
          case 3:
            if(posicion_columna>2){
              if(tablero[fila+1][columna-2][0]==0  //Eje
               &&tablero[fila][columna-2][0]==0
               &&tablero[fila+2][columna-3][0]==0){
                posicion_columna--; 
              }   
            }
          
          break;
        }

      break;  //end  pieza 1  
      
      case 2:
      estado %=4;
        switch(estado){
          case 0:
          if(posicion_columna>2){
            if(tablero[fila+1][columna-3][0]==0
             &&tablero[fila][columna-1][0]==0){
              posicion_columna--;
            }
          }
          break;
          case 1:
            if(posicion_columna>1){
             if(tablero[fila+1][columna-2][0]==0
              &&tablero[fila][columna-2][0]==0
              &&tablero[fila+2][columna-2][0]==0){
              posicion_columna--; 
             }
            }
          break;
          case 2:
            if(posicion_columna>2){
              if(tablero[fila+1][columna-3][0]==0
               &&tablero[fila+2][columna-3][0]==0){
                posicion_columna--;
              }
            }
          break;
          case 3:
            if(posicion_columna>2){
              if(tablero[fila+1][columna-2][0]==0  //Eje
               &&tablero[fila+2][columna-2][0]==0
               &&tablero[fila][columna-3][0]==0){
                posicion_columna--;
              }
            }
          break;
        }
      break;  //end  pieza 2
      
      case 3:
      estado %=2;
        switch(estado){
          case 0:
            if(posicion_columna>2){
              if(tablero[fila+1][columna-3][0]==0
               &&tablero[fila][columna-2][0]==0){
                posicion_columna--;
              }
            }
          break;
          case 1:
            if(posicion_columna>1){
              if(tablero[fila+1][columna-2][0]==0  //Eje
            &&tablero[fila][columna-2][0]==0
            &&tablero[fila+2][columna-1][0]==0){
                posicion_columna--;
              }            
            }
          
          break;
        
        }
      break;  //end  pieza 3
      
      case 4:
      estado %=2;
        switch(estado){
          case 0:
            if(posicion_columna>2){
             if(tablero[fila+1][columna-2][0]==0  
              &&tablero[fila][columna-3][0]==0){
               posicion_columna--; 
             }
            }
          break;
          case 1:
            if(posicion_columna>1){
             if(tablero[fila+1][columna-2][0]==0
           &&tablero[fila][columna-1][0]==0
           &&tablero[fila+2][columna-2][0]==0){
              posicion_columna--; 
             }
            }
          break;
        }
      
      break;  //end  pieza 4
      
      case 5:
      estado %=4;
        switch(estado){
          case 0:
            if(posicion_columna>2){
              if(tablero[fila+1][columna-3][0]==0
            &&tablero[fila][columna-2][0]==0){
               posicion_columna--; 
              }
            }
          break;
          case 1:
            if(posicion_columna>1){
              if(tablero[fila+1][columna-2][0]==0
            &&tablero[fila+2][columna-2][0]==0
            &&tablero[fila][columna-2][0]==0){
               posicion_columna--; 
              }
            }      
          break;
          case 2:
            if(posicion_columna>2){
             if(tablero[fila+1][columna-3][0]==0
              &&tablero[fila+2][columna-2][0]==0){
              posicion_columna--; 
             }
            }
          break;
          case 3:
            if(posicion_columna>2){
             if(tablero[fila+2][columna-2][0]==0
              &&tablero[fila][columna-2][0]==0
              &&tablero[fila+1][columna-3][0]==0){
              posicion_columna--; 
             }
            }
          break;
        }
      
      break;  //end  pieza 5
      
      case 6:
          if(posicion_columna>1){
           if(tablero[fila+1][columna-2][0]==0
            &&tablero[fila][columna-2][0]==0){
            posicion_columna--; 
           }
          }
      break;  //end  pieza 6
      
    } //end case pieza  
    
  }
  if (direccion=="abajo") {
    switch(pieza) { //Analizamos que pieza es
    case 0: //Si es la barra
      estado_pieza %= 2;
      switch(estado_pieza) {
      case 0:  //Si está horizontal
        if (posicion_fila==20) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+2][posicion_columna-1][0]==0 
          && tablero[posicion_fila+2][posicion_columna-2][0]==0
          && tablero[posicion_fila+2][posicion_columna][0]==0
          && tablero[posicion_fila+2][posicion_columna+1][0]==0)
        {
          if (posicion_fila<20) {
            posicion_fila++;
          }
          
        } else {
          fondo=true;
        }          
        break;
      case 1:  //Si está vertical
        if (posicion_fila==18) { 
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+4][posicion_columna-1][0]==0) {

          if (posicion_fila<18) {
            posicion_fila++;
          }
          
        } else {
          fondo=true;
        }
        break;
      }
      break;
    case 1: //Si es una L izq
      estado_pieza %= 4;
      switch(estado_pieza) {
      case 0:
        if (posicion_fila==20) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+2][posicion_columna-1][0]==0 
          && tablero[posicion_fila+2][posicion_columna-2][0]==0
          && tablero[posicion_fila+2][posicion_columna][0]==0)
        {
          if (posicion_fila<20) {
            posicion_fila++;
          }
          
        } else {
          fondo=true;
        }                           
        break;   
      case 1:
        if (posicion_fila==19) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+3][posicion_columna-1][0]==0 && //mas abajo
          tablero[posicion_fila+1][posicion_columna][0]==0)
        {
          if (posicion_fila<19) {
            posicion_fila++;
          }
          
        } else {
          fondo=true;
        }
        break;
      case 2:
        if (posicion_fila==19) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+2][posicion_columna-1][0]==0 
          && tablero[posicion_fila+2][posicion_columna-2][0]==0
          && tablero[posicion_fila+3][posicion_columna][0]==0)
        {
          if (posicion_fila<19) {
            posicion_fila++;
          }
          
        } else {
          fondo=true;
        }            
        break;
      case 3:
        if (posicion_fila==19) {
            fondo = true;
            break;
          }
        if (  //Eje
          tablero[posicion_fila+3][posicion_columna-1][0]==0
          &&tablero[posicion_fila+3][posicion_columna-2][0]==0)
        {
          if (posicion_fila<19) {
            posicion_fila++;
          }          
        } else {
          fondo=true;
        }          
        break;
      }
      break;
    case 2:
      estado_pieza %= 4;
      switch(estado_pieza) {
      case 0:
        if (posicion_fila==20) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+2][posicion_columna-1][0]==0 
          && tablero[posicion_fila+2][posicion_columna-2][0]==0
          && tablero[posicion_fila+2][posicion_columna][0]==0)
        {
          if (posicion_fila<20) {
            posicion_fila++;
          }          
        } else {
          fondo=true;
        }                           
        break;
      case 1:
        if (posicion_fila==19) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+3][posicion_columna-1][0]==0
          &&tablero[posicion_fila+3][posicion_columna][0]==0)
        {
          if (posicion_fila<19) {
            posicion_fila++;
          }          
        } else {
          fondo=true;
        }                           
        break;
      case 2:
        if (posicion_fila==19) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+2][posicion_columna-1][0]==0 //Eje
          &&tablero[posicion_fila+2][posicion_columna][0]==0
          &&tablero[posicion_fila+3][posicion_columna-2][0]==0)
        {
          if (posicion_fila<19) {
            posicion_fila++;
          }
          
        } else {
          fondo=true;
        }                           
        break;
      case 3:
      if (posicion_fila==19) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+3][columna-1][0]==0
          &&tablero[fila+1][columna-2][0]==0 )
        {
          if (posicion_fila<19) {
            posicion_fila++;
          }
          
        } else {
          fondo=true;
        }                           
        break;
      }
      break;
    case 3:
      estado_pieza %= 2;
      switch(estado_pieza) {
      case 0:
      if (posicion_fila==20) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+2][posicion_columna-1][0]==0  //Eje
          &&tablero[posicion_fila+2][posicion_columna-2][0]==0
          &&tablero[posicion_fila+1][posicion_columna][0]==0)
        {
          if (posicion_fila<20) {
            posicion_fila++;
          }          
        } else {
          fondo=true;
        }                 
        break;
      case 1:
      if (posicion_fila==19) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+2][posicion_columna-1][0]==0           
          &&tablero[posicion_fila+3][posicion_columna][0]==0)
        {
          if (posicion_fila<19) {
            posicion_fila++;
          }          
        } else {
          fondo=true;
        }                 
        break;
      }
      break;
    case 4:
      estado_pieza %= 2;
      switch(estado_pieza) {
      case 0:
        if (posicion_fila==20) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+2][posicion_columna-1][0]==0  //Eje
          &&tablero[posicion_fila+2][posicion_columna][0]==0              
          &&tablero[posicion_fila+1][posicion_columna-2][0]==0)
        {
          if (posicion_fila<20) {
            posicion_fila++;
          }          
        } else {
          fondo=true;
        }                 
        break;
      case 1:
      if (posicion_fila==19) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+2][posicion_columna][0]==0
          &&tablero[posicion_fila+3][posicion_columna-1][0]==0)
        {
          if (posicion_fila<19) {
            posicion_fila++;
          }          
        } else {
          fondo=true;
        }                 
        break;
      }
      break;
    case 5:
      estado_pieza %= 4;
      switch(estado_pieza) {
      case 0:
        if (posicion_fila==20) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+2][posicion_columna-1][0]==0  //Eje
          &&tablero[posicion_fila+2][posicion_columna-2][0]==0
          &&tablero[posicion_fila+2][posicion_columna][0]==0)
        {
          if (posicion_fila<20) {
            posicion_fila++;
          }          
        } else {
          fondo=true;
        }  
        break;
      case 1:
      if (posicion_fila==19) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+3][posicion_columna-1][0]==0
          &&tablero[posicion_fila+2][posicion_columna][0]==0)
        {
          if (posicion_fila<19) {
            posicion_fila++;
          }          
        } else {
          fondo=true;
        }  
        break;
      case 2:
      if (posicion_fila==19) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+2][posicion_columna-2][0]==0
          &&tablero[posicion_fila+2][posicion_columna][0]==0
          &&tablero[posicion_fila+3][posicion_columna-1][0]==0)
        {
          if (posicion_fila<19) {
            posicion_fila++;
          }          
        } else {
          fondo=true;
        }  
        break;
      case 3:
      if (posicion_fila==19) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+3][posicion_columna-1][0]==0
          &&tablero[posicion_fila+2][posicion_columna-2][0]==0)
        {
          if (posicion_fila<19) {
            posicion_fila++;
          }          
        } else {
          fondo=true;
        }  
        break;
      }
      break;
    case 6:
      estado_pieza %= 1;
      switch(estado_pieza) {
      case 0:
      if (posicion_fila==20) {
            fondo = true;
            break;
          }
        if (tablero[posicion_fila+2][posicion_columna-1][0]==0  //Eje
          &&tablero[posicion_fila+2][posicion_columna][0]==0)
        {
          if (posicion_fila<20) {
            posicion_fila++;
          }          
        } else {
          fondo=true;
        }  
        break;
      }
      break;
    }
  }
}

void girar_pieza(int pieza, int estado_pieza, int columna, int fila) {
  switch(pieza) {
  case 0:
    estado_pieza%=2;
    switch(estado_pieza) {
    case 0:
      if (tablero[fila][columna-1][0]==0
        &&tablero[fila+2][columna-1][0]==0
        &&tablero[fila+3][columna-1][0]==0
        )
      {
        dibujar_pieza(pieza, estado_pieza, columna, fila, false);
        estado++;
      } 
      break;
    case 1:
      if (columna>=2 && columna<=8) {
        if (tablero[fila+1][columna-2][0]==0
          &&tablero[fila+1][columna][0]==0
          &&tablero[fila+1][columna+1][0]==0)
        {
          dibujar_pieza(pieza, estado_pieza, columna, fila, false);
          estado++;
        }
      }
      break;
    }
    break;
  case 1:
    estado_pieza%=4;
    switch(estado_pieza) {
    case 0:
      if (tablero[fila][columna-1][0]==0
        &&tablero[fila+2][columna-1][0]==0
        &&tablero[fila][columna][0]==0)
      {
        dibujar_pieza(pieza, estado_pieza, columna, fila, false);
        estado++;
      }
      break;
    case 1:
      if (columna>=2) {
        if (tablero[fila+1][columna-2][0]==0
          &&tablero[fila+1][columna][0]==0
          &&tablero[fila+2][columna][0]==0)
        {
          dibujar_pieza(pieza, estado_pieza, columna, fila, false);
          estado++;
        }
      }
      break;
    case 2:
      if (true) {
        if (tablero[fila][columna-1][0]==0
          &&tablero[fila+2][columna-1][0]==0
          &&tablero[fila+2][columna-2][0]==0 )
        {
          dibujar_pieza(pieza, estado_pieza, columna, fila, false);
          estado++;
        }
      }
      break;
    case 3:
      if (columna<=9) {
        if (tablero[fila+1][columna-2][0]==0
          &&tablero[fila+1][columna][0]==0
          &&tablero[fila][columna-2][0]==0 )
        {
          dibujar_pieza(pieza, estado_pieza, columna, fila, false);
          estado++;
        }
      }
      break;
    }
    break;
  case 2:
    estado_pieza %= 4;
    switch(estado_pieza) {
    case 0:
      if (tablero[fila][columna-1][0]==0
        &&tablero[fila+2][columna-1][0]==0
        &&tablero[fila+2][columna][0]==0) {
        dibujar_pieza(pieza, estado_pieza, columna, fila, false);
        estado++;
      }       
      break;
    case 1:
      if (posicion_columna>=2) {
        if (tablero[fila+1][columna-2][0]==0
          &&tablero[fila+1][columna][0]==0
          &&tablero[fila+2][columna-2][0]==0) {
          dibujar_pieza(pieza, estado_pieza, columna, fila, false);
          estado++;
        }
      }       
      break;
    case 2:
      if (tablero[fila][columna-1][0]==0
        &&tablero[fila+2][columna-1][0]==0
        &&tablero[fila][columna-2][0]==0) {
        dibujar_pieza(pieza, estado_pieza, columna, fila, false);
        estado++;
      }       
      break;

    case 3:
      if (posicion_columna<=9) {           
        if (tablero[fila+1][columna-2][0]==0
          &&tablero[fila+1][columna][0]==0
          &&tablero[fila][columna][0]==0) {
          dibujar_pieza(pieza, estado_pieza, columna, fila, false);
          estado++;
        }
      }
      break;
    }
    break;
  case 3:
    estado_pieza %=2;
    switch(estado_pieza) { 
    case 0:
      if (tablero[fila+1][columna][0]==0
        &&tablero[fila+2][columna][0]==0) {        
        dibujar_pieza(pieza, estado_pieza, columna, fila, false);
        estado++;
      }
     break;
    case 1:
      if (columna>=2)
        if (tablero[fila+1][columna-2][0]==0
          &&tablero[fila][columna][0]==0) {  
          dibujar_pieza(pieza, estado_pieza, columna, fila, false);
          estado++;
        }
      break;
    }
  break;
  case 4:
    estado_pieza %=2;
    switch(estado_pieza) {
    case 0:
      if (tablero[fila][columna][0]==0
        &&tablero[fila+2][columna-1][0]==0) {  
        dibujar_pieza(pieza, estado_pieza, columna, fila, false);
        estado++;
      }
     break;
     
     case 1:
     if(posicion_columna>=2)
      if (tablero[fila][columna-1][0]==0
        &&tablero[fila][columna-2][0]==0) {  
        dibujar_pieza(pieza, estado_pieza, columna, fila, false);
        estado++;
      }
     break;
    }
  break;
  case 5:
    estado_pieza %=4;
    switch(estado_pieza) {
    case 0:
      if(tablero[fila+2][columna-1][0]==0){
        dibujar_pieza(pieza, estado_pieza, columna, fila, false);
        estado++;
      }
    break;
    case 1:
    if(posicion_columna>=2){
      if(tablero[fila+1][columna-2][0]==0){
        dibujar_pieza(pieza, estado_pieza, columna, fila, false);
        estado++;
      }
    }    
    break;
    case 2:
    if(tablero[fila][columna-1][0]==0){
        dibujar_pieza(pieza, estado_pieza, columna, fila, false);
        estado++;
      }
    
    break;
    case 3:
    if(posicion_columna<10){
      if(tablero[fila+1][columna][0]==0){
         dibujar_pieza(pieza, estado_pieza, columna, fila, false);
         estado++;
      }
    }
    break;
    }
  break;
  }
}

void revisarFila(){
int suma=0;
int fila_quitada = 0;

  for(int fil=tablero.length-1; fil>=0; fil--){
    suma=0;
    for(int col=0; col<=tablero[0].length-1; col++){
      suma += tablero[fil][col][0];
      //println("fila: " + fil + "columna: " + col + "valor: " + tablero[fil][col][0] + "suma: " + suma);
    }
    if(suma==10 && fondo == true){
      println("ptm");
      for(int col=0; col<=tablero[0].length-1; col++){
       tablero[fil][col][0]=0; 
       tablero[fil][col][1]=0;
       tablero[fil][col][2]=0;
       tablero[fil][col][3]=0;
       fila_quitada = fil;
      } 
      puntaje += 100;
      
      for(int fil_quitar = fila_quitada; fil_quitar>=1; fil_quitar--){
        for(int col_quitar = 0; col_quitar<=tablero[0].length-1; col_quitar++){
         tablero[fil_quitar][col_quitar][0]=tablero[fil_quitar-1][col_quitar][0]; 
         tablero[fil_quitar][col_quitar][1]=tablero[fil_quitar-1][col_quitar][1];
         tablero[fil_quitar][col_quitar][2]=tablero[fil_quitar-1][col_quitar][2];
         tablero[fil_quitar][col_quitar][3]=tablero[fil_quitar-1][col_quitar][3];  
        }
      }
      fil=tablero.length-1 ;
       
    }
     
    
  }
  //delay(8000);
}

void mouseClicked() {
  girar_pieza(tetro, estado, posicion_columna, posicion_fila);
}

void keyPressed() {
  delay(1);
  if (key == 's' || key == 'S') {
    mover_pieza(tetro, estado, posicion_columna, posicion_fila, "abajo");
    puntaje += 1;
    
    
  } else if (key == 'w' || key == 'W') {
    mover_pieza(tetro, estado, posicion_columna, posicion_fila, "abajo");
  } else if (key == 'd' || key == 'D') {
    mover_pieza(tetro, estado, posicion_columna, posicion_fila, "derecha");
  } else if (key == 'a' || key == 'A') {
    mover_pieza(tetro, estado, posicion_columna, posicion_fila, "izquierda");
  }
}
