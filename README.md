# Ejercicios de widgets en Flutter

Los cinco ejercicios están en un mismo proyecto. Cada uno tiene su propio archivo en `lib/ej1.dart`, `lib/ej2.dart`, `lib/ej3.dart`, `lib/ej4.dart` y `lib/ej5.dart`. Si hay que cambiar un ejercicio, se edita su archivo correspondiente. El informe y otros materiales de la práctica están en `otros/`.

## Elegir el ejercicio que se abre

Flutter ejecuta `lib/main.dart` por defecto. Ese archivo importa el ejercicio elegido y llama a su función `main()`. Ahora está configurado para abrir el ejercicio 5.

Por ejemplo, para abrir el ejercicio 3, deja `lib/main.dart` así:

```dart
import 'ej3.dart' as ejercicio3;

void main() => ejercicio3.main();
```

Para abrir otro ejercicio, cambia **el número en las dos líneas** (`ej3.dart` y `ejercicio3`) por el que corresponda. Después, desde la raíz del proyecto, ejecuta `flutter run` o usa el botón de ejecución del editor.

También puedes lanzar uno sin modificar `main.dart`, por ejemplo con `flutter run -t lib/ej3.dart`. Cada `ejN.dart` tiene su propia función `main()`.

En la carpeta de otros existe el archivo del documento de `otros/ejs_widgets-JorgeFernandez.docx`, que contiene toda la información necesaria para el trabajo 
