### EJERCICIO 1
# Contador de Palabras, Caracteres y Líneas en Flex

Este es un programa en **Flex** que cuenta la cantidad de líneas, palabras y caracteres de un texto de entrada, de manera similar al comando `wc` de Unix.

## 📌 Características
- **Cuenta líneas** correctamente, incluso cuando hay líneas vacías.
- **Detecta palabras** separadas por espacios o saltos de línea.
- **Cuenta caracteres** incluyendo letras, espacios y saltos de línea.
- **Maneja entradas desde el teclado o desde un archivo**.

## 📂 Archivos
- `contador.l` → Código fuente en **Flex**.
- `lex.yy.c` → Código C generado por Flex (se crea después de ejecutar `flex contador.l`).
- `contador` → Archivo ejecutable generado después de la compilación.

## 🚀 Instalación y Uso
### 1️⃣ **Instalar Flex y GCC** (si no están instalados)
```sh
sudo apt update
sudo apt install flex gcc
```

### 2️⃣ **Crear y guardar el archivo** `contador.l`
Ejecuta:
```sh
nano contador.l
```
Copia y pega el código del programa en **Flex**, luego guarda (`CTRL + X`, `Y`, `Enter`).

### 3️⃣ **Generar el código C**
```sh
flex contador.l
```
Esto generará el archivo `lex.yy.c`.

### 4️⃣ **Compilar con GCC**
```sh
gcc lex.yy.c -o contador -lfl
```
Esto generará el ejecutable `contador`.

### 5️⃣ **Ejecutar el programa**
#### Opción 1: Entrada manual desde teclado
```sh
./contador
```
Escribe un texto y presiona `CTRL + D` para terminar la entrada.

#### Opción 2: Procesar un archivo de texto
```sh
./contador < archivo.txt
```
Ejemplo:
```sh
echo -e "Hola mundo\n\nEste es un párrafo\nOtra línea" > prueba.txt
./contador < prueba.txt
```

## 📝 Ejemplo de Salida
```
       4       8      36
```
📌 **Explicación:**
- `4` líneas
- `8` palabras
- `36` caracteres (incluyendo espacios y saltos de línea)

## ⚠️ Notas
- Si el programa no cuenta bien las líneas, verifica que el archivo tenga **saltos de línea reales** (`\n`).
- Asegúrate de que el archivo no use saltos de línea de Windows (`\r\n`), usa `dos2unix archivo.txt` si es necesario.

---
### EJERCICIO 2
# Ingles a Español Traductor (Flex)

## Descripción
Este proyecto es un analizador léxico escrito en **(Flex)** que traduce ciertas palabras del inglés al español. Cuando el programa encuentra una de las palabras especificadas en un texto de entrada, la reemplaza con su equivalente en español.

## Reglas de Traducción
Las siguientes palabras en inglés se traducen automáticamente al español:

| Inglés       | Español     |
|--------------|------------|
| dog         | perro      |
| apple       | manzana    |
| expensive   | caro       |
| transport   | transporte |
| sweet       | dulce      |
| butterfly   | mariposa   |
| elevator    | ascensor   |
| computer    | computador |
| street      | calle      |
| house       | casa       |

## Requisitos
Para compilar y ejecutar este programa, necesitas tener **Flex** instalado en tu sistema. Puedes instalarlo con:

- **Linux (Ubuntu/Debian):**
  ```sh
  sudo apt install flex
  ```
- **MacOS (Homebrew):**
  ```sh
  brew install flex
  ```

## Instalación y Uso
1. Guarda el archivo de código Flex como `traductor.l`.
2. Abre una terminal y compila el programa con:
   ```sh
   flex traductor.l
   gcc lex.yy.c -o tradcutor -lfl
   ```
3. Ejecuta el programa y prueba con una entrada de texto:
   ```sh
   echo "I have a dog and a computer in my house." | ./translator
   ```

   **Salida esperada:**
   ```
   I have a perro and a computador in my casa.
   ```

## Personalización
Puedes agregar más palabras modificando el archivo `.l` y añadiendo nuevas reglas en el formato:
```Flex
"palabra_en_ingles" { printf("palabra_en_espanol"); }
```
Luego, recompila el programa siguiendo los pasos anteriores.





