# Play-MKV-Files-Web-Server-Basic
Reproducir archivos mkv en páginas web mediante Node.

Guardar los videos en el directorio ./public/videos/

## Convertir MKV a MP4

### 2 Opciones

### Rapida
Usa convert.sh para cambiar la codificacion de los ficheros mkv a mp4

### Lenta 
VLC (si da error Herramientas -> Preferencias -> Restaurar preferencias)

Medio -> Convertir -> Añadir (Seleccionar fichero) -> Convertir/Guardar

Perfil Video - H.264 + MP3 (MP4) -> (Editar perfil seleccionado (LLAVE INGLESA))

Edición perfil
- Códec de vídeo -> Mantener pista de vídeo original
- Códec de audio -> Códec MPEG 4 Audio (AAC) - Canales 1
- Guardar

Archivo de destino: Fichero de salida.mp4 -> INICIAR

#### Si el archivo.mp4 tiene mas de 1 pista de audio:
```
sudo apt-get update
sudo apt-get install ffmpeg
ffmpeg -i file.mp4 -map 0 -map -0:a:0 -c copy file.mp4
```
Elimina la pista de audio nº 0 (Se empieza a contar por el 0)

```
-map 0 Selecciona todos los streams del input
-map -0:a:2 Deselecciona stream audio 3
```
Pequeña ayuda:

![alt text](https://github.com/antonio5040/Play-MKV-Web-Server-Basic/blob/master/ffmpeg.png)

## Crear Node Server
```
cd Folder
npm init
npm install express --save
```

## Ejecutar Node
```
node server.js
```
