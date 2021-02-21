#include <iostream>
#include <stdio.h>
#include <stdlib.h>
using namespace std;

int main(int narg, char *arg[]) {
	FILE *fp;
	char salida, c;
	string clave, archivo;
	int i = 0,longitud = 0;
	cout << "Nombre del archivo"<<endl;
	cin >> archivo;
	char* char_arr;
	string str_obj(archivo);
	char_arr = &str_obj[0];
	fp = fopen(char_arr,"rb");
	if(!fp){
		cout << "No es posible abrir el archivo : " << arg[1] << endl;
		exit(1);
	}	
	cout<<"Clave"<<endl;
	cin >> clave;
	longitud = clave.length();
	while((c = getc(fp)) != EOF){
		if (c >= 32 && c <= 126 ){
		salida = c^clave[i];
		cout << salida ;
		i++;
		if (i == (longitud)){
			i = 0;
		}
		}
		if(c == 10 ){
			cout << c;
		}
	}
	fclose(fp);
	return 0;
}

