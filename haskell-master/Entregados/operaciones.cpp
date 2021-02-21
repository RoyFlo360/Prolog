#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
 
int main()
{
    char opcion;
    int n1, n2;
    do
    {
        printf("\n   >>> MENU <<<");
        printf("\n\n  1. Sumar dos numeros.", 163);
        printf("\n  2. Multiplicar dos numeros.", 163);
        printf("\n  3. Salir.\n" );
        do
        {
            printf("\n  Introduzca opcion (1-3): ", 162);
            fflush(stdin);
            scanf(" %c", &opcion);
            if(opcion>3) {
                printf("\n  Opcion no valida\n");
            }
        }
        while(opcion < '1' || opcion > '3');
        switch( opcion )
        {
            case '1':
            {
                printf("\n  Introduzca primer sumando: ");
                scanf(" %d", &n1);
                printf("\n  Introduzca segundo sumando: ");
                scanf(" %d", &n2);
                printf("\n  %d + %d = %d\n", n1, n2, n1 + n2);
                break;
            }
            case '2':
            {
                printf("\n  Introduzca primer operando: ");
                scanf(" %d", &n1);
                printf("\n  Introduzca segundo operando: ");
                scanf(" %d", &n2);
                printf("\n  %d * %d = %d\n", n1, n2, n1 * n2);
                break;
            }
        }
    }
    while(opcion != '3');
    return 0;
}
