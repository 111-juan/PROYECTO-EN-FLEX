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
📢 **¡Listo! Ahora tienes un contador de palabras en Flex funcionando como `wc`! 🚀**

