PetStore API Testing with Karate

Requisitos

- **Java JDK 8 o superior**: Asegúrate de que Java esté instalado y configurado en tu PATH.
- **Maven**: Para manejar las dependencias y la compilación.
- **IntelliJ IDEA**: IDE recomendado para desarrollar y ejecutar las pruebas.
- **Karate**: Framework de pruebas de servicios REST.

Configuración del Proyecto

Clona el repositorio:
 git clone https://github.com/leonelromero/PruebaKarate.git

Importa el Proyecto en IntelliJ IDEA:
-Abre IntelliJ IDEA.
-Selecciona File > Open... y navega hasta el directorio donde clonaste el repositorio.
-IntelliJ IDEA detectará el proyecto Maven y cargará las dependencias.
-Verifica el archivo pom.xml:
-Asegúrate de que la dependencia de Karate esté incluida

Ejecución de las Pruebas
-Desde IntelliJ IDEA:
-Navega a src/test/java/KarateRunner.java.
-Haz clic derecho en el archivo y selecciona Run 'KarateRunner'.

Desde la línea de comandos:
-Navega al directorio raíz del proyecto.
-Ejecuta: mvn test -Dtest=KarateRunner

Resultados de las Pruebas
Los resultados se mostrarán en la consola.

Se generará un reporte en HTML en el directorio target/karate-reports/.

Estructura del Proyecto
src/test/java/petstore.feature: Contiene los escenarios de prueba para la API de PetStore.
src/test/java/KarateRunner.java: Archivo que ejecuta las pruebas de Karate.

Consideraciones
Asegúrate de tener conexión a internet para acceder a la API de PetStore.
Verifica que el ID de la mascota utilizado en las pruebas no exista previamente en la base de datos de PetStore.