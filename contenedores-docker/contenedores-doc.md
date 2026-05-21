# Contenedores de Sistemas Gestores de Base de Datos

![ImagenDocker](./img/imagen-docker.png)

## Imagenes

> Comandos para cada imagen

- descargar imagen de postgres

```
docker pull postgres:14.22-trixie
```
- Descargar imagen de tutorial de Docker
```
docker pull docker/getting-started
```

## Creación de contenedores


```docker
docker run -d -p 80:80 **Nombre o Codigo de la Imagen**
```
Donde:

- -d detach (background)
- -p puerto (el primer número de puerto no se cambia, el segundo si podemos cambiarlo)

### Contenedor de Tutorial de Docker 
```docker
docker run -d -p 80:8090  docker/getting-started:latest
docker run -d -p 80:80  d7933 
```
### Contenedor de MariaDB sin Volumen
```docker
docker run -d --name Server-MariadbG1 -p 3343:3306 -e MARIADB_ROOT_PASSWORD=123456 8763a
```
### Contenedor de MariaDB con Volumen
 
```docker
docker volume create v-mariadbg1
docker run -d --name Server-MariadbG1 -p 3343:3306 -e MARIADB_ROOT_PASSWORD=123456 -v v-mariadbg1:/var/lib/mysql 8763a
```
### Contenedor de Postgres con Volumen
```docker
docker volume create v-postgresG1
docker run -d --name Server-PostgresG1 -p 5455:5432 \
-e POSTGRES_PASSWORD=123456 \
-v v-postgresG1:    \
bbb885
```


## Comandos Docker 



| Comando | Descripción |
| :--- | :--- |
| **docker --versión** | _Muestra la versión del Docker_ |
| **docker pull nombre_imagen** | _Descargar una imagen de Docker Hub_ [Docker Hub](https://hub.docker.com/) |
| **docker images** | _Muestra todas las imagenes_ |
| **docker run** | _Crear un contenedor_ |
| **docker run** | _Crear un contenedor_ |
| **docker ps** | _Visualiza los contenedores que estan ejecución_ |
| **docker container ls** | _Visualiza los contenedores que estan ejecución_ |
| **docker ps -a** | _Visualiza todos los contenedores_ |
| **docker container ls -a** | _Visualiza todos los contenedores_ |
| **docker rm nombre_contenedor o ID** | _Borra un contenedor_ |
| **docker run** | _Crea un contenedor contenedor_ |
| **docker stop nombre o ID** | _Detiene el contenedor_ |
| **docker start nombre o ID** | _Inicia un Contenedor_ |
| **docker rm nombre o ID** | _Elimina un contenedor que no esta en ejecución_ |
| **docker rm -f nombre o ID** | _Elimina un contenedor que esta en ejecucióndoc_ |
| **docker volume ls** | _Mostrar los volumenes que existen en docker_ |





