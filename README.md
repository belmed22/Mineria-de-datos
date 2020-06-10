# Minería-de-datos

## Bloque-1
### Learn R: Introduction
### Learn R: DataFrames
### Learn R: Data Cleaning
### Learn R: Fundamentals of Data Visualization with ggplot2
### Learn R: Aggregates
### Learn R: Joining Tables
### Learn R: Mean, Median, and Mode
### Learn R: Variance and Standard Deviation
### Learn R: Quartiles, Quantiles, and Interquartile Range
### Learn R: Hypothesis Testing



## Learn R: Introduction

### Why R?

[En esta lección](### Learn R: Introduction), le presentaremos una sintaxis básica de R y discutiremos cómo R clasifica los tipos de datos para que pueda procesarlos matemáticamente en el análisis.
Nuestro enfoque para enseñarle R será similar a enseñarle cómo usar una nueva herramienta.
¿Para qué es la herramienta? R es poderoso para realizar estadísticas y otros análisis de datos especializados. Fue inventado por científicos para la informática estadística y se ha creado una comunidad de paquetes especializados en torno al lenguaje.
Verá los bloques envueltos dentro de la siguiente sintaxis:
This is regular markdown text that will render as regular text.

7 + 7 # This is R code

Este formato le permite agrupar bloques de código con lógica común, ver su salida y luego representarlo todo como un archivo HTML que se puede ver en un navegador como una página web estática. El formato .Rmd es el estándar preferido en la industria de la ciencia de datos.

### Calculations
Comencemos con la sintaxis básica para los cálculos matemáticos en R. R realiza sumas, restas, multiplicaciones y divisiones con +, -, * y /:

#Results in "500"

573 - 74 + 1

#Results in "50"

25 * 2

#Results in "2"

10 / 5

Las operaciones matemáticas en R siguen el orden matemático estándar de operaciones.

### Comments

R interpreta cualquier cosa en una línea después de un símbolo # como un comentario.

#this is a comment

Los comentarios se pueden usar para agregar texto en el programa que NO se ejecutará. 
Son útiles para proporcionar contexto, sugerencias para usted u otras personas que trabajan en el código, o incluso para deshacerse temporalmente de una línea al depurar.

### Data Types

En R, y en la programación en general, los tipos de datos son las clasificaciones que damos a los diferentes tipos de piezas de información.

class(2) # numeric

class('hello') # character

class('23') #character

class (FALSE) #logical

class(NA) #logical

Específicamente, R proporciona los siguientes tipos de datos básicos: carácter, numérico, entero, lógico y complejo. Cada tipo de datos se utiliza para representar algún tipo de información: números, cadenas, valores booleanos, etc.

### Variables

En programación, las variables nos permiten almacenar información y asociar esa información con un nombre. En R, asignamos variables usando el operador de asignación, un signo de flecha (<-) hecho con un quilate y un guión.

full_name <-"Natalia Rodríguez Nuñez"

En el ejemplo anterior, almacenamos el valor de cadena 'Natalia Rodríguez Nuñez' en una variable llamada full_name. Las variables no pueden tener espacios o símbolos en sus nombres que no sean guiones bajos (_). No pueden comenzar con números, pero pueden tener números después de la primera letra.

### Vectors

En R, los vectores son una estructura similar a una lista que contiene elementos del mismo tipo de datos.

spring_months <- c("March", "April","May","June")

En el ejemplo anterior, creamos una nueva variable con el valor de un nuevo vector. Creamos este vector separando cuatro cadenas de caracteres con una coma y envolviendolas dentro de c ().

Algunas cosas que debes saber hacer con vectores:

Puede verificar el tipo de elementos en un vector usando typeof (vector_name)

Puede verificar la longitud de un vector usando length (vector_name)

Puede acceder a elementos individuales en el vector usando [] y colocando la posición del elemento dentro de los corchetes. Por ejemplo, si quisiéramos acceder al segundo elemento, escribiríamos: vector_name [2]. Nota: En R, comienza a contar elementos en la posición uno, no en cero.

### Conditionals

En R, una declaración condicional va entre paréntesis y es seguida por un conjunto de llaves que contienen el código que se ejecutará.

if (TRUE) {
  print('This message will print!')
}

En una declaración if, si el condicional es True, se ejecuta el código dentro de las llaves.


### Comparison Operators

Al escribir declaraciones condicionales, a veces necesitamos usar diferentes tipos de operadores para comparar valores. Estos operadores se llaman operadores de comparación.
Los operadores de comparación comparan el valor de la izquierda con el valor de la derecha. Por ejemplo:

10 < 12 # Evaluates to TRUE

Puede ser útil pensar en las declaraciones de comparación como preguntas. Cuando la respuesta es 'sí', la declaración se evalúa como verdadera, y cuando la respuesta es 'no', la declaración se evalúa como falsa. El código anterior sería preguntar: ¿10 es menos de 12? ¡Si! Entonces 10 <12 se evalúa como verdadero.


### Logical Operators

En R, hay operadores que trabajan con valores lógicos conocidos como operadores lógicos. Podemos usar operadores lógicos para agregar una lógica más sofisticada a nuestros condicionales. Hay tres operadores lógicos:

El operador AND (&)

El operador OR (|)

El operador NOT, también conocido como el operador de explosión (!)

Los operadores lógicos a menudo se usan en declaraciones condicionales para agregar otra capa de lógica a nuestro código.


### Calling a Function

Llamamos o usamos estas funciones indicando el nombre de la función y siguiéndola con un paréntesis de apertura y cierre: es decir. functionName (). Además, entre paréntesis, generalmente pasamos un argumento o un valor que la función utiliza para llevar a cabo una acción, es decir, functionName (valor).

Comprender cómo llamar a una función y qué argumentos necesita es una parte fundamental de aprovechar R como herramienta para realizar análisis. ¡Practiquemos llamando algunas funciones útiles!


### Importing Packages
Un paquete es un paquete de código que facilita la codificación de ciertas tareas. Hay todo tipo de paquetes para todo tipo de propósitos, desde visualizar y limpiar datos, hasta pedir pizza o publicar un tweet. De hecho, la mayoría de los R-grammers (programadores R) usan paquetes cuando codifican. Es por eso que puede escucharlos diferenciar paquetes de 'Base R'. Base R se refiere al lenguaje R por sí mismo y todo lo que puede hacer sin importar ningún paquete.

Base R es muy potente, pero la mayoría de las veces, querrás importar un paquete para hacerte la vida más fácil. Solo necesita ejecutar este comando la primera vez que instala un paquete, después de eso no hay necesidad de ejecutarlo:

install.packages('package-name')

Para importar un paquete simplemente:

library(package-name)

Puede buscar documentación para diferentes paquetes disponibles en R en la CRAN (Red Integral de Archivo R).


## Learn R: DataFrames

### Introduction to Data Frames in R

### Introduction 

El paquete dplyr en R está diseñado para hacer que las tareas de manipulación de datos sean más simples e intuitivas que trabajar solo con funciones de base R. Llamada una 'gramática de manipulación de datos', dplyr proporciona funciones que resuelven muchos desafíos que surgen al organizar datos tabulares (es decir, datos en una tabla con filas y columnas). Los datos tabulares tienen mucha de la misma funcionalidad que las tablas de SQL o Excel, pero dplyr agrega el poder de R.

dplyr y readr son parte de tidyverse, una colección de paquetes R diseñados para la ciencia de datos.

### What is a DataFrame?

Un marco de datos es un objeto R que almacena datos tabulares en una estructura de tabla compuesta de filas y columnas. Puede pensar en un marco de datos como una hoja de cálculo o como una tabla SQL. Si bien los marcos de datos se pueden crear en R, generalmente se importan con datos de un CSV, una hoja de cálculo de Excel o una consulta SQL.

Los marcos de datos tienen filas y columnas. Cada columna tiene un nombre y almacena los valores de una variable. Cada fila contiene un conjunto de valores, uno de cada columna. Los datos almacenados en un marco de datos pueden ser de muchos tipos diferentes: numéricos, de caracteres, lógicos o NA.

### CSVs

CSV (valores separados por comas) es un formato de hoja de cálculo de solo texto. Puede encontrar CSV en muchos lugares, como:

Conjuntos de datos en línea de gobiernos y empresas (aquí hay un ejemplo de data.gov)

Exportado desde Excel o Google Sheets

Exportado desde SQL

La primera fila de un CSV contiene encabezados de columna. Todas las filas posteriores contienen valores. Cada encabezado de columna y cada variable está separada por una coma:

column1,column2,column3

value1,value2,value3

value4,value5,value6

### Loading and Saving CSVs

Cuando tiene datos en un CSV, puede cargarlos en un marco de datos en R usando la función readr‘s read_csv ():

df <- read_csv('my_csv_file.csv')

También puede guardar datos de un marco de datos en un CSV utilizando la función readr‘s write_csv ():

write_csv(df,'new_csv_file.csv')

### Inspecting Data Frames

Cuando carga un nuevo marco de datos desde un CSV, desea comprender cómo se ven los datos.

Si el marco de datos es pequeño, puede visualizarlo escribiendo su nombre df. Si el marco de datos es más grande, puede ser útil inspeccionar unas pocas filas del marco de datos sin tener que mirar el resto.

La función head () devuelve las primeras 6 filas de un marco de datos. Si desea ver más filas, puede pasar un argumento adicional n a head (). Por ejemplo, head (df, 8) mostrará las primeras 8 filas.

La función summary() devolverá estadísticas de resumen como la media, la mediana, el mínimo y el máximo para cada columna numérica, al tiempo que proporciona información de clase y longitud para columnas no numéricas.

### Piping

Uno de los aspectos más atractivos de dplyr es la capacidad de manipular fácilmente los marcos de datos. Cada una de las funciones de dplyr que explorará toma un marco de datos como primer argumento.

El operador de canalización, o %>%, ayuda a aumentar la legibilidad del código del marco de datos al canalizar el valor a su izquierda en el primer argumento de la función que le sigue. Por ejemplo:

df %>%
  head()

Canaliza el marco de datos df en el primer argumento de head (), convirtiéndose

head(df)

### Selecting Columns

Puede seleccionar las columnas apropiadas para su análisis utilizando la función select () de dplyr‘s:

select(customers,age,gender)


Select () toma un marco de datos como primer argumento

Todos los argumentos adicionales son las columnas deseadas para seleccionar

Select () devuelve un nuevo marco de datos que contiene solo las columnas deseadas

Pero, ¿qué pasa con la tubería%>%, preguntas? Gran pregunta Puede simplificar la legibilidad de su código utilizando la tubería:

customers %>%
  select(age,gender)

### Excluding Columns

A veces, en lugar de especificar qué columnas desea seleccionar de un marco de datos, es más fácil establecer qué columnas no desea seleccionar. 

customers %>%
  select(-name,-phone)

Los clientes del marco de datos se canalizan a select ().

Las columnas para eliminar, antepuestas con un -, se dan como argumentos.

Se devuelve un nuevo marco de datos sin el nombre y las columnas del teléfono.

### Filtering Rows with Logic I

Además de subconjugar un marco de datos por columnas, también puede subconjuntar un marco de datos por filas utilizando la función filter () de dplyr y los operadores de comparación!.

upongamos que desea encontrar todos los pedidos realizados por clientes con el primer nombre 'Joyce'.

orders %>%
  filter(first_name == 'Joyce')


¿Qué pasa si tiene múltiples condiciones que desea que se cumplan? ¡No es un problema! Para encontrar todos los pedidos hechos de piel sintética Y que cuestan más de 25:

orders %>%
  filter(shoe_material == 'faux-leather',price > 25)


Puede proporcionar cualquier cantidad de condiciones que desee, siempre que separe cada condición con una coma como argumento propio.

### Filtering Rows with Logic II

La función filter () también permite un filtrado más complejo con la ayuda de operadores lógicos!.

Está interesado en ver todos los pedidos que fueron para ‘clogs’ O que costaron menos de 20. Usando el operador o (|):

orders %>%
  filter(shoe_type == 'clogs' | price < 20)

¿Qué sucede si desea encontrar todos los pedidos donde se compraron zapatos de cualquier color que no sea rojo? Usando el operador not or bang (!):

orders %>%
  filter(!(shoe_color == red))

### Arranging Rows

arrange() ordenará las filas de un marco de datos en orden ascendente por la columna proporcionada como argumento.

Para columnas numéricas, orden ascendente significa de números más bajos a más altos. Para las columnas de caracteres, el orden ascendente significa el orden alfabético de la A a la Z.

Para organizar a los clientes en orden ascendente por nombre:

customers %>%
  arrange(name)

arrange() también puede ordenar filas por orden descendente! Para organizar a los clientes en orden descendente por edad:

customers %>%
  arrange(desc(age))

Si se proporcionan múltiples argumentos para arrange(), ordenará las filas por la columna dada como primer argumento y usará las columnas adicionales para romper los lazos en los valores de las columnas anteriores.

## Modifying Data Frames in R

### Introduction

Al trabajar con marcos de datos, a menudo necesita modificar las columnas para su análisis en cuestión. Con la ayuda del paquete dplyr, las modificaciones del marco de datos se realizan fácilmente.

### Adding a Column

Puede agregar una nueva columna al marco de datos utilizando la función mutate (). mutate () toma un par nombre-valor como argumento. El nombre será el nombre de la nueva columna que está agregando, y el valor es una expresión que define los valores de la nueva columna en términos de las columnas existentes. mutate () devuelve un nuevo marco de datos con la columna agregada.

Tal vez desee agregar una columna a su tabla de inventario con el monto del impuesto sobre las ventas que se cobra por cada artículo. El siguiente código multiplica cada precio por 0.075, el impuesto a las ventas en su estado:

df %>%
  mutate(sales_tax = price * 0.075)

Ahora la tabla de inventario tiene una columna llamada sales_tax, donde el valor es 0.075 * precio.

### Adding Multiple Columns

mutate () puede tomar múltiples argumentos para agregar cualquier número de columnas nuevas a un marco de datos:

df %>%
  mutate(profit = price - cost_to_manufacture,
         in_stock = TRUE)

### Transmute Columns

Al crear nuevas columnas a partir de un marco de datos, a veces solo le interesa conservar las nuevas columnas que agrega y eliminar las que no necesita. La función transmutar () de dplyr agregará nuevas columnas al tiempo que descarta las columnas existentes que pueden no ser útiles para su análisis.

Al igual que mutate (), transmute () toma pares nombre-valor como argumentos. Los nombres serán los nombres de las nuevas columnas que está agregando, y los valores son expresiones que definen los valores de las nuevas columnas. La diferencia, sin embargo, es que transmute () devuelve un marco de datos con solo las nuevas columnas.

Para agregar columnas de sales_tax y ganancias mientras se eliminan todas las demás columnas del marco de datos:

df %>%
  transmute(sales_tax = price * 0.075,
            profit = price - cost_to_manufacture)

### Rename Columns

Dado que las funciones dplyr operan en marcos de datos usando nombres de columnas, a menudo es útil actualizar los nombres de columna de un marco de datos para que sean lo más claros y significativos posible. La función rename () de dplyr le permite hacer esto fácilmente.

rename () puede tomar cualquier número de argumentos, donde cada nuevo nombre de columna se asigna para reemplazar un nombre de columna antiguo en el formato new_column_name = old_column_name. rename () devuelve un nuevo marco de datos con los nombres de columna actualizados.

Para actualizar la columna del nombre a book_title y la columna written_by al autor:

df %>%
  rename(book_title = name,
         author = written_by)

Puede confirmar que los nombres de las columnas se han actualizado utilizando cualquiera de los nombres de las funciones base R () o colnames (), que toman un marco de datos como argumento y devuelve un vector que contiene los nombres de las columnas.

## Learn R: Data Cleaning

### Introduction

Una gran parte de la ciencia de datos implica la adquisición de datos sin procesar y su preparación en un formulario listo para su análisis. Algunos han estimado que los científicos de datos pasan el 80% de su tiempo limpiando y manipulando datos, y solo el 20% de su tiempo realmente analizándolos o construyendo modelos a partir de ellos.

### Diagnose the Data

A menudo describimos datos que son fáciles de analizar y visualizar como 'datos ordenados'. ¿Qué significa tener datos ordenados?

Para que los datos estén ordenados, debe tener:

Cada variable como una columna separada

Cada fila como una observación separada

El primer paso para diagnosticar si un conjunto de datos está ordenado o no es usar las funciones base R y dplyr para explorar y sondear el conjunto de datos.

### Dealing with Multiple Files

Supongamos que tiene una tonelada de archivos siguiendo la estructura del nombre de archivo: 'file_1.csv', 'file_2.csv', 'file_3.csv', y así sucesivamente. El poder de dplyr y tidyr radica principalmente en la capacidad de manipular grandes cantidades de datos estructurados, por lo que desea poder obtener toda la información relevante en una tabla para poder analizar los datos agregados.

Puede combinar las funciones de base R list.files () y lapply () con readr y dplyr para organizar mejor estos datos, como se muestra a continuación:

files <- list.files(pattern = "file_.*csv")
df_list <- lapply(files,read_csv)
df <- bind_rows(df_list)

La primera línea usa list.files () y una expresión regular, una secuencia de caracteres que describe un patrón de texto que debe coincidir, para encontrar cualquier archivo en el directorio actual que comience con 'file_' y tenga una extensión de csv, almacenando el nombre de cada archivo en un archivo vectorial

La segunda línea usa lapply () para leer cada archivo en archivos en un marco de datos con read_csv (), almacenando los marcos de datos en df_list

La tercera línea concatena todos esos marcos de datos junto con la función bind_rows () de dplyr

### Reshaping your Data

Ya que queremos

Cada variable como una columna separada

Cada fila como una observación separada

Podemos usar la función de gather() de tidyr para hacer esta transformación. gather () toma un marco de datos y las columnas para descomprimir:

df %>%
  gather('Checking','Savings',key='Account Type',value='Amount')

### Dealing with Duplicates

A menudo vemos filas de datos duplicadas en los marcos de datos con los que estamos trabajando. Esto podría suceder debido a errores en la recopilación de datos o al guardar y cargar los datos.

Para verificar si hay duplicados, podemos usar la función base R duplicated(), que devolverá un vector lógico que nos indica qué filas son filas duplicadas

Podemos usar la función dplyr distinct () para eliminar todas las filas de un marco de datos que son duplicados de otra fila.

### Splitting By Index

Al intentar obtener datos limpios, queremos asegurarnos de que cada columna represente un tipo de medición. A menudo, se registran múltiples mediciones en la misma columna, y queremos separarlas para poder hacer análisis individuales en cada variable.

Supongamos que tenemos una columna 'cumpleaños' con datos formateados en formato MMDDYYYY. En otras palabras, '11011993' representa un cumpleaños del 1 de noviembre de 1993. Queremos dividir estos datos en día, mes y año para que podamos usar estas columnas como características separadas.

En este caso, conocemos la estructura exacta de estas cadenas. Los primeros dos caracteres siempre corresponderán al mes, los segundos dos al día, y el resto de la cadena siempre corresponderá al año. Podemos dividir fácilmente los datos en tres columnas separadas dividiendo las cadenas en subcadenas usando str_sub (), una función útil del paquete stringr:

#Create the 'month' column
df %>%
  mutate(month = str_sub(birthday,1,2))

#Create the 'day' column
df %>%
  mutate(day = str_sub(birthday,3,4))

#Create the 'year' column
df %>%
  mutate(year = str_sub(birthday,5))

El primer comando toma los caracteres que comienzan en el índice 1 y terminan en el índice 2 de cada valor en la columna de cumpleaños y lo coloca en una columna de mes.

El segundo comando toma los caracteres que comienzan en el índice 3 y terminan en el índice 4 de cada valor en la columna de cumpleaños y lo coloca en una columna de día.

El tercer comando toma los caracteres que comienzan en el índice 5 y terminan al final del valor en la columna de cumpleaños y lo coloca en una columna de año.

### Splitting By Character

Por lo tanto, podemos usar la función tidyr separate () para dividir esta columna en dos columnas separadas:

df %>%
  separate(type,c('user_type','country'),'_')

typees la columna para dividir

c ('user_type', 'country') es un vector con los nombres de las dos nuevas columnas

'_' es el personaje para dividir

### Looking at Data Types

Cada columna de un marco de datos puede contener elementos del mismo tipo de datos. Los tipos de datos que R usa son: caracteres, numéricos (reales o decimales), enteros, lógicos o complejos. A menudo, queremos convertir entre tipos para poder hacer un mejor análisis. Si una categoría numérica como 'num_users' se almacena como un vector de caracteres en lugar de numéricos, por ejemplo, hace que sea más difícil hacer algo como hacer un gráfico lineal de usuarios a lo largo del tiempo.

str () muestra la estructura interna de un objeto R. Llamar a str () con un marco de datos como argumento devolverá una variedad de información, incluidos los tipos de datos.

### String Parsing

A veces necesitamos modificar cadenas en nuestros marcos de datos para ayudarnos a transformarlas en métricas más significativas.

## Learn R: Fundamentals of Data Visualization with ggplot2

### Introduction

¡Hola a todos! Hoy, aprenderemos cómo hacer visualizaciones con el popular paquete ggplot2 de R. Puede crear visualizaciones simples con la base R, pero elegimos enseñarle ggplot2 porque es relativamente fácil de implementar, está bien documentado y es compatible con una comunidad de entusiastas de los datos.

El paquete ggplot2 es parte del tidyverse, por lo que viene equipado con otras herramientas de procesamiento y limpieza de datos. El paquete está diseñado teniendo en cuenta la gramática de los gráficos. Esta gramática de gráficos describe un patrón general que se debe seguir al crear la visualización. De hecho, de ahí proviene el 'gg' en ggplot: gramática de gráficos. ggplot2 ha fomentado una gran comunidad de programación, por lo que descubrirá que a medida que busca su propia trama fuera de la plataforma Codecademy, habrá muchos recursos y ejemplos para darle la bienvenida.

### Layers and Geoms

Cuando aprendes gramática en la escuela, aprendes sobre las unidades básicas para construir una oración. Las unidades básicas en la 'gramática de los gráficos' consisten en:

Los datos o la información real que desea visualizar.

Las geometrías, acortadas a 'geoms', describen las formas que representan nuestros datos. 
Ya se trate de puntos en un diagrama de dispersión, gráficos de barras en el gráfico o una línea para trazar los datos. La lista continua. Geoms son las formas que 'mapean' nuestros datos.

La estética o los atributos visuales de la trama, incluidas las escalas en los ejes, el color, el relleno y otros atributos relacionados con la apariencia.

### The ggplot() function

Lo primero que deberá hacer para crear un objeto ggplot es invocar la función ggplot (). Conceptualice este paso como inicializar el 'lienzo' de la visualización. En este paso, también es estándar asociar el marco de datos que el resto de la visualización usará con el lienzo. ¿Qué queremos decir con 'el resto' de la visualización? Nos referimos a todas las capas que agregará a medida que construya su trama.

Como mencionamos, en esencia, una visualización de ggplot es una combinación de capas que muestran información o añaden estilo al gráfico final. Usted 'agrega' estas capas a un lienzo inicial, u objeto ggplot, con un signo +. Agregaremos geometrías y estética en los próximos ejercicios. Por ahora, detengámonos para entender que cualquier argumento dentro de la llamada a la función ggplot () es heredado por el resto de las capas en el diagrama.

Aquí invocamos ggplot () para crear un objeto ggplot y asignar el marco de datos df, guardándolo dentro de una variable llamada viz:

viz <- ggplot(data=df)

viz

### Associating the Data

Antes de continuar, detengámonos para entender cuándo los datos se vinculan a la visualización:

Los datos se vinculan a una visualización de ggplot2 pasando un marco de datos como primer argumento en la llamada a la función ggplot (). Puede incluir el argumento nombrado como ggplot (data \u003d df_variable) o simplemente pasar el marco de datos como ggplot (marco de datos).

Debido a que los datos están vinculados en este paso, esto significa que el resto de nuestras capas, que son llamadas a funciones que agregamos con un signo más +, tienen acceso al marco de datos y pueden usar los nombres de las columnas como variables.

### What are aesthetics?

En el contexto de ggplot, la estética son las instrucciones que determinan las propiedades visuales de la trama y sus geometrías.

La estética puede incluir cosas como las escalas para los ejes xey, el color de los datos en el gráfico basado en una propiedad o simplemente en una preferencia de color, o el tamaño o la forma de diferentes geometrías.

Hay dos formas de establecer la estética, especificando manualmente los atributos individuales o proporcionando asignaciones estéticas. Las asignaciones estéticas 'asignan' variables del marco de datos a las propiedades visuales en la gráfica. Puede proporcionar asignaciones estéticas de dos maneras utilizando la función de asignación aes ():

En el nivel del lienzo: todas las capas posteriores en el lienzo heredarán las asignaciones estéticas que defina cuando cree un objeto ggplot con ggplot ().

En el nivel geom: solo esa capa utilizará las asignaciones estéticas que proporcione.

### Adding Geoms

Antes de que le enseñemos cómo agregar una estética específica a una capa geom, ¡creemos nuestra primera geom! Como se mencionó anteriormente, las geometrías o geoms son las formas que representan nuestros datos.

En ggplot, hay muchos tipos de geoms para representar diferentes relaciones en los datos. Puede leer todo sobre cada uno en la sección de capas de la documentación de ggplot2. Una vez que aprenda la gramática básica de los gráficos, todo lo que tendrá que hacer es leer la documentación de una geom particular y estará preparado para trazarla siguiendo el patrón general. Por simplicidad, comencemos con el diagrama de dispersión geom, o geom_point (), que simplemente representa cada dato como un punto en la cuadrícula. Los diagramas de dispersión son excelentes para graficar datos numéricos emparejados o para detectar una correlación entre dos variables.

El siguiente código agrega una capa de diagrama de dispersión a la visualización:

viz <- ggplot(data=df, aes(x=col1,y=col2)) +
       geom_point()

Otra capa popular que le permite observar patrones en los datos completando una línea de mejor ajuste es la capa geom_smooth (). Esta capa, por naturaleza, viene con una banda de error gris. Puede agregar una capa suave al gráfico escribiendo lo siguiente:

viz <- ggplot(data=df, aes(x=col1,y=col2)) +
       geom_point() + 
       geom_smooth()

### Geom Aesthetics

En los ejercicios anteriores, agregamos geoms a la trama y exploramos la idea de capas que heredan las asignaciones estéticas originales del lienzo. A veces, querrás que las capas individuales tengan sus propias asignaciones. Por ejemplo, ¿qué pasaría si quisiéramos que la capa de diagrama de dispersión clasificara los puntos en función de una propiedad basada en datos? Logramos esto al proporcionar un mapeo estético solo para esa capa.

Exploremos las asignaciones estéticas para la capa geom_point (). ¿Qué pasaría si quisiéramos codificar por color los puntos en el diagrama de dispersión en función de una propiedad? Es posible personalizar el color pasando un mapeo estético aes () con el color basado en una propiedad basada en datos. Observe este ejemplo:

viz <- ggplot(data=airquality, aes(x=Ozone, y=Temp)) +
       geom_point(aes(color=Month)) + 
       geom_smooth()

El código anterior solo cambiaría el color de la capa de puntos, no afectaría el color de la capa suave ya que el mapeo estético aes () se pasa en la capa de puntos.

### Manual Aesthetics

Si tiene en mente un valor predeterminado, proporcione un parámetro estético con nombre y el valor de esa propiedad sin envolverlo en un aes (). Por ejemplo, si desea que todos los puntos de la capa del diagrama de dispersión sean de color rojo oscuro porque está en línea con la marca de la visualización que está preparando, simplemente puede pasar un parámetro de color con un valor manual oscuro o cualquier valor de color como entonces:

viz <- ggplot(data=airquality, aes(x=Ozone, y=Temp)) +
       geom_point(color="darkred") 

Tenga en cuenta que no ajustamos el argumento de color dentro de aes () porque estamos configurando manualmente esa estética. Aquí hay más estética para la capa geom_point (): x, y, alfa, color, relleno, grupo, forma, tamaño, trazo. La estética alfa describe la opacidad de los puntos, y la forma de los puntos podría ser diferente a un punto. Lea más sobre los valores que toma cada una de estas estéticas en la documentación de la capa geom_point ().

### Labels

Otra gran parte de la creación de una trama es asegurarse de que tenga etiquetas fáciles de leer. El paquete ggplot2 asigna automáticamente el nombre de la variable correspondiente a los diferentes componentes en el gráfico como la etiqueta inicial. Lamentablemente, los nombres de variables de código no siempre son legibles para lectores externos sin contexto.

Si desea personalizar sus etiquetas, puede agregar una llamada a la función labs () a su objeto ggplot. Dentro de la función call to labs () puede proporcionar nuevas etiquetas para los ejes xey, así como un título, subtítulo o subtítulo. Puede consultar la lista de argumentos de etiquetas disponibles en la documentación de labs () aquí.

La siguiente llamada a la función labs () y estos argumentos especificados generarían el siguiente diagrama:

viz <- ggplot(df, aes(x=rent, y=size_sqft)) + 
       geom_point() +
       labs(title="Monthly Rent vs Apartment Size in Brooklyn, NY", subtitle="Data by StreetEasy (2017)", x="Monthly Rent ($)", y="Apartment Size (sq ft.)")
viz

### Extending The Grammar

Los gráficos de barras son excelentes para mostrar la distribución de datos categóricos. Por lo general, uno de los ejes en un gráfico de barras tendrá valores numéricos y el otro tendrá los nombres de las diferentes categorías que desea comprender.

Creemos un gráfico de barras utilizando algunos de los conjuntos de datos integrados de R. Estos son marcos de datos a los que puede acceder fácilmente en su código para explorar y crear visualizaciones. Son útiles porque estos conjuntos de datos integrados generalmente incluyen datos categóricos bien distribuidos.

La capa geom_bar () agrega un gráfico de barras al lienzo. Por lo general, al crear un gráfico de barras, se asigna un mapeo estético aes () con un único valor categórico en los ejes x y la función aes () calculará el recuento para cada categoría y mostrará los valores de recuento en el eje y.

El siguiente código asigna el recuento de cada categoría en la columna Idioma en un conjunto de datos de 100 libros populares a una longitud de barra y luego guarda la visualización como un archivo .png llamado 'bar-example.png':

bar <- ggplot(books, aes(x=Language)) + geom_bar()
bar
ggsave("bar-example.png")

## Learn R: Aggregates

### Introduction

En esta lección aprenderá sobre los agregados en R usando dplyr. Una estadística agregada es una forma de crear un solo número que describe un grupo de números. Las estadísticas agregadas comunes incluyen la media, la mediana y la desviación estándar.

Además, aprenderá cómo puede agrupar datos en diferentes subconjuntos según los valores de las columnas. Esto puede ayudar a reducir el enfoque de una estadística de resumen a un subconjunto de un conjunto de datos. ¿Estás listo para comenzar?

### Calculating Column Statistics

En este ejercicio, aprenderá a combinar todos los valores de una columna para un solo cálculo. Esto se puede hacer con la ayuda de la función dplyr summaryize (), que devuelve un nuevo marco de datos que contiene el cálculo deseado.

La sintaxis general para estos cálculos es:

df %>%
  summarize(var_name = command(column_name))

df es el marco de datos con el que está trabajando

summarizees una función dplyr que reduce múltiples valores a un solo valor

var_name es el nombre que asigna a la columna que almacena los resultados de la función de resumen en el marco de datos devuelto

El commandes la función de resumen que se aplica a la columna mediante el resumen ()

column_name es el nombre de la columna de df que se resume

### Calculating Aggregate Functions I

Cuando tenemos un montón de datos, a menudo queremos calcular estadísticas agregadas (media, desviación estándar, mediana, percentiles, etc.) sobre ciertos subconjuntos de datos.

En general, usamos la siguiente sintaxis para calcular los agregados:

df %>%
  group_by(column_1) %>%
  summarize(aggregate_name = command(column_2))

column_1 (alumno en nuestro ejemplo) es la columna que queremos agrupar_por ()

column_2 (grade en nuestro ejemplo) es la columna a la que queremos aplicar el comando (), una función de resumen, para usar summaryize ()

agregate_name es el nombre asignado al agregado calculado

Además de las funciones de resumen discutidas en el último ejercicio (media (), mediana (), sd (), var (), min (), max (), IQR () y n_distinct ()), otra función de resumen útil, especialmente para datos agrupados, es n (). n () devolverá el recuento de las filas dentro de un grupo y no requiere una columna como argumento. Para obtener el recuento de las filas en cada grupo de estudiantes de nuestro ejemplo

grades <- df %>%
  group_by(student) %>%
  summarize(count = n())


### Calculating Aggregate Functions II

A veces, queremos agrupar por más de una columna. Podemos hacer esto pasando varios nombres de columna como argumentos a la función group_by.

df %>%
  group_by(location,day_of_week) %>%
  summarize(mean_total_sales = mean(total_sales))

### Combining Grouping with Filter

Si bien group_by () se usa con mayor frecuencia con summaryize () para calcular estadísticas de resumen, también se puede usar con el filtro de función dplyr () para filtrar filas de un marco de datos basado en métricas por grupo.

enrollments %>%
  group_by(course) %>%
  filter(mean(quiz_score) < 80)

group_by () agrupa el marco de datos por curso en dos grupos: learn-r y learn-python

filter () mantendrá todas las filas del marco de datos cuyo puntaje promedio de prueba por 

grupo (por curso) sea menor que 80

### Combining Grouping with Mutate

group_by () también se puede usar con la función dplyr mutate () para agregar columnas a un marco de datos que implique métricas por grupo.

Desea agregar una nueva columna al marco de datos que almacena la diferencia entre el quiz_score de una fila y el quiz_score promedio para el curso de esa fila. Para agregar la columna:

enrollments %>% 
  group_by(course) %>% 
  mutate(diff_from_course_mean = quiz_score - mean(quiz_score))

group_by () agrupa el marco de datos por curso en dos grupos: learn-r y learn-python

mutate () agregará una nueva columna diff_from_course_mean que se calcula como la diferencia entre el puntaje de prueba individual de una fila y la media (quiz_score) para el grupo (curso) de esa fila

## Learn R: Joining Tables

### Inner Join I

Es fácil hacer este tipo de coincidencia para una fila, pero es difícil hacerlo para varias filas.

Afortunadamente, dplyr puede hacer esto de manera eficiente para toda la tabla utilizando el método inner_join ().

El método inner_join () busca columnas que son comunes entre dos marcos de datos y luego busca filas donde los valores de esas columnas sean iguales. Luego combina las filas coincidentes en una sola fila en una nueva tabla.

Podemos llamar al método inner_join () con dos marcos de datos como este:

joined_df <- orders %>%
  inner_join(customers)

### Inner Join II

Además de usar inner_join () para unir dos marcos de datos, podemos usar la tubería%>% para unir múltiples marcos de datos a la vez. El siguiente comando uniría pedidos con clientes y luego uniría el marco de datos resultante con productos

big_df <- orders %>%
  inner_join(customers) %>%
  inner_join(products)

### Join on Specific Columns I

En el ejemplo anterior, la función inner_join () 'sabía' cómo combinar tablas basadas en las columnas que eran iguales entre dos tablas. Por ejemplo, los pedidos y los clientes tenían una columna llamada customer_id. Esto no siempre será cierto cuando queremos realizar una unión.

En general, el marco de datos de pedidos no tendría la columna order_id y el marco de datos de clientes no tendría la columna customer_id. En cambio, ambos tendrían un ID de columna y se supondría que el ID era el id_orden para la tabla de pedidos y el id_cliente para la tabla de clientes. 

¿Cómo afectaría esto a nuestras uniones?

Debido a que las columnas de identificación significarían algo diferente en cada tabla, nuestras uniones predeterminadas serían incorrectas.

Una forma de solucionar este problema es utilizar la función dplyr rename () para cambiar el nombre de las columnas de nuestras uniones. En el ejemplo a continuación, cambiaremos el nombre de la ID de la columna en el marco de datos de los clientes a customer_id, de modo que los pedidos y los clientes ahora tengan una columna común para unirse.

customers <- customers %>%
  rename(customer_id = id)
inner_join(orders, customers)

### Join on Specific Columns II

Podemos agregar el argumento by al llamar a inner_join () para especificar en qué columnas queremos unirnos. En el ejemplo a continuación, la tabla 'izquierda' es la que viene primero (pedidos), y la tabla 'derecha' es la que viene después (clientes). Esta sintaxis dice que deberíamos hacer coincidir el customer_id de los pedidos con el id en los clientes.

orders %>% 
  inner_join(customers,
             by = c('customer_id' = 'id'))

Si usamos esta sintaxis, terminaremos con dos columnas llamadas id, una de la primera tabla y otra de la segunda. R no le permitirá tener dos columnas con el mismo nombre, por lo que las cambiará a id_x e id_y.

Los nuevos nombres de columna id_x e id_y no son muy útiles para nosotros cuando leemos la tabla. Podemos ayudar a que sean más útiles mediante el uso del sufijo de palabra clave. Podemos proporcionar un vector de sufijos para usar en lugar de '_x' y '_y'.

Por ejemplo, podríamos usar el siguiente código para hacer que los sufijos reflejen los nombres de las tablas:

orders %>% 
  inner_join(customers,
             by = c('customer_id' = 'id'),
             suffix = c('_order','_customer'))

### Full Join

Este tipo de unión (donde solo incluimos filas coincidentes) se denomina unión interna. Hay otros tipos de combinaciones que podemos usar cuando queremos mantener la información de las filas no coincidentes.

Suponga que dos compañías, la Compañía A y la Compañía B acaban de fusionarse. Cada uno tiene una lista de clientes, pero mantienen datos ligeramente diferentes. La empresa A tiene el nombre y el correo electrónico de cada cliente. La empresa B tiene el nombre y número de teléfono de cada cliente. Tienen algunos clientes en común, pero algunos son diferentes.

Si quisiéramos combinar los datos de ambas compañías sin perder a los clientes que faltan en una de las tablas, podríamos usar una unión completa. Una unión completa incluiría todas las filas de ambas tablas, incluso si no coinciden. Cualquier valor faltante se completa con NA.

full_joined_dfs <- company_a %>%
  full_join(company_b)

### Left and Right Joins

Supongamos que queremos identificar qué clientes no tienen información telefónica. Queremos una lista de todos los clientes que tienen correo electrónico, pero no tienen teléfono.

Podríamos obtener esto realizando una unión izquierda. Una combinación izquierda incluye todas las filas de la primera tabla (izquierda), pero solo las filas de la segunda tabla (derecha) que coinciden con la primera tabla.

Para este comando, el orden de los argumentos es importante. Si el primer marco de datos es company_a y hacemos una unión izquierda, solo terminaremos con filas que aparecen en company_a.

Al enumerar la compañía_a primero, obtenemos todos los clientes de la Compañía A, y solo los clientes de la Compañía B que también son clientes de la Compañía A.

left_joined_df <- company_a %>%
  left_join(company_b)

Una unión derecha es exactamente lo contrario de la unión izquierda. Aquí, la tabla unida incluirá todas las filas de la segunda tabla (derecha), pero solo las filas de la primera tabla (izquierda) que coincidan con la segunda tabla.

Al enumerar company_a first y company_b second, obtenemos todos los clientes de la empresa B, y solo los clientes de la empresa A que también son clientes de la empresa B.

right_joined_df <- company_a %>%
  right_join(company_b)

### Concatenate Data Frames

A veces, un conjunto de datos se divide en varias tablas. Por ejemplo, los datos a menudo se dividen en múltiples archivos CSV para que cada descarga sea más pequeña.

Si queremos combinar estos dos marcos de datos, podemos usar el siguiente comando:

concatenated_dfs <- df1 %>%
  bind_rows(df_2)

## Learn R: Mean, Median, and Mode

### Calculating Mean

La media, a menudo denominada promedio, es una forma de medir el centro de un conjunto de datos.

El promedio de un conjunto se calcula mediante un proceso de dos pasos:

Agregue todas las observaciones en su conjunto de datos.
Divida la suma total del paso uno por el número de puntos en su conjunto de datos.

### Mean in R

Si bien ha demostrado que puede calcular el promedio usted mismo, lleva mucho tiempo a medida que aumenta el tamaño de su conjunto de datos; imagine sumar todos los números en un conjunto de datos con 10,000 observaciones.

La función R mean () puede hacer el trabajo de sumar y dividir por usted. En el siguiente ejemplo, usamos mean () para calcular el promedio de un conjunto de datos con diez valores:

example_data <- c(24, 16, 30, 10, 12, 28, 38, 2, 4, 36)

example_average <- mean(example_data)

print(example_average)

### Median

La definición formal para la mediana de un conjunto de datos es:

El valor que, suponiendo que el conjunto de datos esté ordenado de menor a mayor, queda en el medio. Si hay un número par de valores en un conjunto de datos, puede informar los dos valores medios o su promedio.

Siempre hay dos pasos para encontrar la mediana de un conjunto de datos:

### Median in R

Encontrar la mediana de un conjunto de datos se vuelve cada vez más lento a medida que aumenta el tamaño de su conjunto de datos; imagine encontrar la mediana de un conjunto de datos sin clasificar con 10,000 observaciones.

La función R mediana () puede hacer el trabajo de clasificación y luego encontrar la mediana por usted. En el siguiente ejemplo, usamos mediana () para calcular la mediana de un conjunto de datos con diez valores:

example_data = c(24, 16, 30, 10, 12, 28, 38, 2, 4, 36, 42)

example_median = median(example_data)

print(example_median)

### Mode

La definición formal para el modo de un conjunto de datos es:

La observación más frecuente en el conjunto de datos. Un conjunto de datos puede tener múltiples modos si hay más de un valor con la misma frecuencia máxima.

Si bien puede encontrar el modo de un pequeño conjunto de datos simplemente mirándolo, si tiene problemas, le recomendamos que siga estos dos pasos:

Encuentre la frecuencia de cada número único en el conjunto de datos
Determine qué número tiene la frecuencia más alta

### Mode with DescTools

Encontrar el modo de un conjunto de datos se vuelve cada vez más lento a medida que aumenta el tamaño de su conjunto de datos. Imagine encontrar el modo de un conjunto de datos con 10,000 observaciones.

El paquete R DescTools incluye una práctica función Mode () que puede hacer el trabajo de encontrar el modo por nosotros. En el ejemplo a continuación, usamos Mode () para calcular el modo de un conjunto de datos con diez valores:

library(DescTools)

example_data <- c(24, 16, 12, 10, 12, 28, 38, 12, 28, 24)

example_mode <- Mode(example_data)


## Learn R: Variance and Standard Deviation

### Variance

Aquí es donde entra en juego la varianza. La varianza es una estadística descriptiva que describe cuán extendidos están los puntos en un conjunto de datos.

### Square the Differences

Ahora piense en lo que sucedería si el conjunto de datos fuera c (-200, 200). ¡Obtendríamos el mismo resultado! Es posible que eso no sea correcto: el conjunto de datos con 200 está mucho más extendido que el conjunto de datos con 5, por lo que la variación debería ser mucho mayor.

El problema aquí es con números negativos. Debido a que uno de nuestros puntos de datos estaba 5 unidades por debajo de la media y el otro estaba 5 unidades por encima de la media, ¡se cancelaron mutuamente!

Al calcular la varianza, si un punto de datos estaba por encima o por debajo de la media, lo único que nos importa es qué tan lejos esté. Para deshacernos de esos molestos números negativos, ajustaremos la diferencia entre cada punto de datos y la media.

### Variance in R

Todo este trabajo se puede hacer rápidamente utilizando una función que proporcionamos. La función varianza () toma una lista de números como parámetro y devuelve la varianza de ese conjunto de datos.

dataset <- c(3, 5, -2, 49, 10)
var <- variance(dataset)

### Standard Deviation

La varianza es una estadística difícil de usar porque sus unidades son diferentes tanto de la media como de los datos en sí. Por ejemplo, la media de nuestro conjunto de datos de la NBA es de 77.98 pulgadas. Debido a esto, podemos decir que alguien que mide 80 pulgadas de alto es aproximadamente dos pulgadas más alto que el jugador promedio de la NBA.

Sin embargo, debido a que la fórmula para la varianza incluye cuadrar la diferencia entre los datos y la media, la varianza se mide en unidades al cuadrado. Esto significa que la varianza de nuestro conjunto de datos de la NBA es de 13.32 pulgadas al cuadrado.

Este resultado es difícil de interpretar en contexto con la media o los datos porque sus unidades son diferentes. Aquí es donde la desviación estándar estadística es útil.

La desviación estándar se calcula tomando la raíz cuadrada de la varianza. sigma es el símbolo comúnmente usado para la desviación estándar. Convenientemente, sigma al cuadrado es el símbolo comúnmente utilizado para la varianza.

### Standard Deviation in R

Hay una función R dedicada a encontrar la desviación estándar de un conjunto de datos: podemos cortar el paso de encontrar primero la varianza. La función R sd () toma un conjunto de datos como parámetro y devuelve la desviación estándar de ese conjunto de datos:

dataset <- c(4, 8, 15, 16, 23, 42)
standard_deviation <- sd()

### Using Standard Deviation

Ahora que podemos calcular la desviación estándar de un conjunto de datos, ¿qué podemos hacer con él?

Ahora que nuestras unidades coinciden, nuestra medida de dispersión es más fácil de interpretar. Al encontrar el número de desviaciones estándar que un punto de datos está lejos de la media, podemos comenzar a investigar qué tan inusual es realmente ese punto de datos. De hecho, generalmente puede esperar que alrededor del 68% de sus datos caigan dentro de una desviación estándar de la media, el 95% de sus datos caigan dentro de dos desviaciones estándar de la media y el 99.7% de sus datos caigan dentro de tres desviaciones estándar de la media.

Si tiene un punto de datos que está a más de tres desviaciones estándar de la media, ¡es un dato increíblemente inusual!

## Learn R: Quartiles, Quantiles, and Interquartile Range

### Quartiles

Una forma común de comunicar una visión general de alto nivel de un conjunto de datos es encontrar los valores que dividen los datos en cuatro grupos de igual tamaño.

Al hacer esto, podemos decir si un nuevo punto de datos cae en el primer, segundo, tercer o cuarto trimestre de los datos.

Los valores que dividen los datos en cuartos son los cuartiles.

Esos valores se llaman primer cuartil (Q1), segundo cuartil (Q2) y tercer cuartil (Q3)

En esta lección, aprenderá a calcular los cuartiles a mano y utilizando las funciones básicas de R.

### The Second Quartile

Volveremos al conjunto de datos de música en un momento, pero practiquemos primero en un conjunto de datos pequeño.

Comencemos por encontrar el segundo cuartil (Q2). Q2 pasa a ser exactamente la mediana. La mitad de los datos cae por debajo de Q2 y la mitad de los datos cae por encima de Q2.

El primer paso para encontrar los cuartiles de un conjunto de datos es ordenar los datos de menor a mayor

### Q1 and Q3

hora que hemos encontrado Q2, podemos usar ese valor para ayudarnos a encontrar Q1 y Q3.

tomamos todos los puntos de datos más pequeños que Q2 y encontramos la mediana de esos puntos. 

### Method Two: Including Q2

Acaba de aprender un método de uso común para calcular los cuartiles de un conjunto de datos. Sin embargo, hay otro método igualmente aceptado que da como resultado valores diferentes.

Tenga en cuenta que no existe un método universalmente acordado para calcular los cuartiles y, como resultado, dos herramientas diferentes podrían informar resultados diferentes.

Usando el primer método, encontramos que Q1 es 4. Al observar todos los puntos debajo de Q2, excluimos Q2. Usando este segundo método, incluimos Q2 en cada mitad.

### Quartiles in R

Pudimos encontrar cuartiles manualmente mirando el conjunto de datos y encontrando los puntos de división correctos. Pero eso se vuelve mucho más difícil cuando el conjunto de datos comienza a crecer. Afortunadamente, hay una función en la base R que encontrará los cuartiles para usted.

La función base R que usaremos se llama quantile (). Puede obtener más información sobre los cuantiles en nuestra lección sobre cuantiles, pero por ahora todo lo que necesita saber es que un cuartil es un tipo específico de cuantil.

El siguiente código calcula el tercer cuartil del conjunto de datos dado:

dataset <- c(50, 10, 4, -3, 4, -20, 2)
third_quartile <- quantile(dataset, 0.75)

La función cuantil () toma dos parámetros. El primero es el conjunto de datos que le interesa. El segundo es un número entre 0 y 1. Como calculamos el tercer cuartil, utilizamos 0,75; queremos el punto que divide el primer 75% de los datos del resto.

Para el segundo cuartil, usaríamos 0.5. Esto le dará el punto de que el 50% de los datos está por debajo y el 50% está por encima.

### Quantiles

Los cuantiles son puntos que dividen un conjunto de datos en grupos de igual tamaño. Por ejemplo, supongamos que acaba de tomar una prueba y desea saber si se encuentra en el 10% superior de la clase. Una forma de determinar esto sería dividir los datos en diez grupos con un número igual de puntos de datos en cada grupo y ver en qué grupo caen.

Hay nueve valores que dividen el conjunto de datos en diez grupos de igual tamaño: cada grupo tiene 3 puntajes de prueba diferentes.

¡Esos nueve valores que dividen los datos son cuantiles! Específicamente, son los 10 cuantiles, o deciles.

Puedes encontrar cualquier cantidad de cuantiles. Por ejemplo, si divide el conjunto de datos en 100 grupos de igual tamaño, los 99 valores que dividen los datos son los 100 cuantiles o percentiles.

Los cuartiles son algunos de los cuantiles más utilizados. Los cuartiles dividen los datos en cuatro grupos de igual tamaño.

En esta lección, le mostraremos cómo calcular cuantiles usando R y discutiremos algunos de los cuantiles más utilizados.

### Quantiles in R

Base R tiene una función llamada cuantile () que calculará rápidamente los cuantiles de un conjunto de datos para usted.

cuantile () toma dos parámetros. El primero es el conjunto de datos que está utilizando. El segundo parámetro es un número único o un vector de números entre 0 y 1. Estos números representan los lugares en los datos donde desea dividir.

Por ejemplo, si solo desea el valor que divide el primer 10% de los datos, aparte del 90% restante, puede usar este código:

dataset <- c(5, 10, -20, 42, -9, 10)
ten_percent <- quantile(dataset, 0.10)

ten_percent ahora tiene el valor -14.5. Este resultado técnicamente no es un cuantil, porque no está dividiendo el conjunto de datos en grupos de igual tamaño: este valor divide los datos en un grupo con el 10% de los datos y otro con el 90%.

Sin embargo, aún sería útil si tuviera curiosidad acerca de si un punto de datos estaba en el 10% inferior del conjunto de datos.

### Many Quantiles

En el último ejercicio, encontramos un solo 'cuantil': separamos el primer 23% de los datos del 77% restante.

Sin embargo, los cuantiles suelen ser un conjunto de valores que dividen los datos en grupos de igual tamaño. Por ejemplo, si desea obtener los 5 cuantiles, o los cuatro valores que dividen los datos en cinco grupos de igual tamaño, puede usar este código:

dataset <- c(5, 10, -20, 42, -9, 10)
ten_percent <- quantile(dataset, c(0.2, 0.4, 0.6, 0.8))


Tenga en cuenta que tuvimos que hacer un poco de cálculo mental para asegurarnos de que los valores c (0.2, 0.4, 0.6, 0.8) dividen los datos en grupos de igual tamaño. Cada grupo tiene el 20% de los datos.

### Common Quantiles

Uno de los cuantiles más comunes es el 2-cuantil. Este valor divide los datos en dos grupos de igual tamaño. La mitad de los datos estarán por encima de este valor y la mitad de los datos estarán por debajo de él. ¡Esto también se conoce como la mediana!

Los 4 cuantiles, o los cuartiles, dividen los datos en cuatro grupos de igual tamaño.

Finalmente, los percentiles, o los valores que dividen los datos en 100 grupos, se usan comúnmente para comparar nuevos puntos de datos con el conjunto de datos. Es posible que escuche declaraciones como 'Usted está por encima del percentil 80 en altura'. Esto significa que su altura está por encima de cualquier valor que divide el primer 80% de los datos del 20% restante.

### Range Review

Una de las estadísticas más comunes para describir un conjunto de datos es el rango. El rango de un conjunto de datos es la diferencia entre los valores máximo y mínimo. Si bien esta estadística descriptiva es un buen comienzo, es importante tener en cuenta el impacto que los valores atípicos tienen en los resultados.

El rango intercuartil (IQR) es una estadística descriptiva que intenta resolver este problema. El IQR ignora las colas del conjunto de datos, por lo que conoce el rango alrededor del cual se centran sus datos.

### Quartiles

El rango intercuartil es la diferencia entre el tercer cuartil (Q3) y el primer cuartil (Q1). Si necesita un repaso sobre los cuartiles, puede echar un vistazo a nuestra lección.

Por ahora, todo lo que necesita saber es que el primer cuartil es el valor que separa el primer 25% de los datos del 75% restante.

El tercer cuartil es todo lo contrario: separa el primer 75% de los datos del 25% restante.

### IQR in R

En el último ejercicio, calculamos el IQR al encontrar los cuartiles usando R y encontrar la diferencia nosotros mismos. La biblioteca de estadísticas tiene una función que puede calcular el IQR en un solo paso.

La función IQR () toma un conjunto de datos como parámetro y devuelve el rango intercuartil.

dataset = c(4, 10, 38, 85, 193)
interquartile_range = IQR(dataset)

## Learn R: Hypothesis Testing

### Introduction

La prueba estadística de hipótesis es un proceso que le permite evaluar si un cambio o diferencia visto en un conjunto de datos es 'real', o si es solo el resultado de una fluctuación aleatoria en los datos.

La prueba de hipótesis puede ser un componente integral de cualquier proceso de toma de decisiones. Proporciona un marco para evaluar la confianza que uno puede tener para sacar conclusiones basadas en datos. Algunos casos en los que esto podría surgir incluyen:

un profesor espera que el promedio de un examen sea aproximadamente del 75% y quiere saber si los puntajes reales se alinean con esta expectativa. ¿Fue la prueba realmente demasiado fácil o demasiado difícil?
un gerente de producto para un sitio web quiere comparar el tiempo dedicado a diferentes versiones de una página de inicio. ¿Una versión hace que los usuarios permanezcan en la página significativamente más tiempo?

### Sample Mean and Population Mean - I

Una muestra es un subconjunto de toda la población (todos los robles del parque). La media de cada muestra es una media muestral y es una estimación de la media poblacional.

Para una población, la media es un valor constante, sin importar cuántas veces se recalcule. Pero con un conjunto de muestras, la media dependerá exactamente de qué muestras se seleccionen. A partir de una media muestral, podemos extrapolar la media de la población en su conjunto. Hay tres razones principales por las que podríamos usar el muestreo:

los datos de toda la población no están disponibles

los datos de toda la población están disponibles, pero son tan grandes que no es factible analizarlos

Las respuestas significativas a las preguntas se pueden encontrar más rápido con el muestreo

### Hypothesis Formulation

Usted comienza el proceso de prueba de hipótesis estadísticas definiendo una hipótesis o una suposición sobre su población que desea probar. Una hipótesis se puede escribir en palabras, pero también se puede explicar en términos de la muestra y la población significa que acaba de aprender.

Supongamos que está desarrollando un sitio web y desea comparar el tiempo dedicado a diferentes versiones de una página de inicio. Podría ejecutar una prueba de hipótesis para ver si la versión A o B hace que los usuarios permanezcan en la página significativamente más tiempo. Su hipótesis podría ser:

'El tiempo promedio dedicado a la página de inicio A es mayor que el tiempo promedio dedicado a la página de inicio B'.

Si bien esta es una buena hipótesis, los analistas de datos a menudo son personas muy vacilantes. ¡No les gusta hacer afirmaciones audaces sin tener datos que las respalden! Por lo tanto, al construir hipótesis para una prueba de hipótesis, desea formular una hipótesis nula. Una hipótesis nula indica que no hay diferencia entre las poblaciones que está comparando, e implica que cualquier diferencia observada en los datos de la muestra se debe a un error de muestreo. Una hipótesis nula para el mismo escenario es la siguiente:

El tiempo promedio que se pasa en la página de inicio A es el mismo que el tiempo promedio que se pasa en la página de inicio B.

Después de recopilar algunos datos de muestra sobre cómo interactúan los usuarios con cada página de inicio, puede ejecutar una prueba de hipótesis utilizando los datos recopilados para determinar si su hipótesis nula es verdadera o falsa, o puede ser rechazada (es decir, hay una diferencia en el tiempo dedicado a la página de inicio A o B).

### Designing an Experiment

Suponga que quiere saber si los estudiantes que estudian historia están más interesados ​​en el voleibol que los estudiantes que estudian química. Antes de hacer cualquier otra cosa para responder a su pregunta original, se le ocurre una hipótesis nula: 'Los estudiantes de historia y química están interesados ​​en el voleibol al mismo ritmo'.

Para probar esta hipótesis, debe diseñar un experimento y recopilar datos. Invitas a 100 estudiantes de historia y de química de tu universidad a unirte a un equipo de voleibol extracurricular. Después de una semana, se inscriben 34 estudiantes de historia (34%) y 39 estudiantes de química (39%). Se inscribieron más estudiantes de química que estudiantes de historia, pero ¿es esta una diferencia 'real' o significativa? ¿Puedes concluir que los estudiantes que estudian química están más interesados en el voleibol que los estudiantes que estudian historia?

En su experimento, las 100 especialidades de historia y 100 de química en su universidad son muestras de sus respectivas poblaciones (todas las especialidades de historia y química). Las medias de la muestra son los porcentajes de carreras de historia (34%) y de química (39%) que se inscribieron en el equipo, y la diferencia en las medias de muestra es 39% - 34% \u003d 5%. Las medias de población son el porcentaje de estudiantes de historia y química en todo el mundo que se inscribirán en un equipo de voleibol extracurricular si se les da la oportunidad.

Desea saber si la diferencia que observó en estas medias muestrales (5%) refleja una diferencia en las medias poblacionales, o si la diferencia fue causada por un error de muestreo, y las muestras de estudiantes que eligió no representan las mayores poblaciones de la historia y estudiantes de química.

Reexpresar la hipótesis nula en términos de población significa que se obtiene lo siguiente:

'El porcentaje de todas las carreras de historia que se inscribirían para el voleibol es el mismo que el porcentaje de todas las carreras de química que se inscribirán para el voleibol, y la diferencia observada en las medias de la muestra se debe a un error de muestreo'.

Esto es lo mismo que decir: 'Si hicieras la misma invitación de voleibol a todas las especialidades de historia y química del mundo, se registrarían al mismo ritmo, y la muestra de 200 estudiantes que seleccionaste no son representativos de sus poblaciones'.

### Type I and Type II Errors

Cuando utilice procesos automatizados para tomar decisiones, debe ser consciente de cómo esta automatización puede conducir a errores. Los programas de computadora pueden ser tan falibles como los humanos que los diseñan. Debido a esto, existe la responsabilidad de comprender qué puede salir mal y qué se puede hacer para contener estos problemas previsibles.

En las pruebas de hipótesis estadísticas, hay dos tipos de error. Un error de Tipo I ocurre cuando una prueba de hipótesis encuentra una correlación entre cosas que no están relacionadas. Este error a veces se denomina 'falso positivo' y se produce cuando la hipótesis nula se rechaza aunque sea cierta.

Por ejemplo, considere el experimento principal de historia y química del ejercicio anterior. Supongamos que realiza una prueba de hipótesis sobre los datos de muestra que recopiló y concluye que existe una diferencia significativa en el interés en el voleibol entre los mayores de historia y química. Usted ha rechazado la hipótesis nula de que no hay diferencia entre las dos poblaciones de estudiantes. Si, en realidad, sus resultados se debieron a los grupos que eligió (error de muestreo), y en realidad no hay una diferencia significativa en el interés en el voleibol entre los mayores de historia y química en la población en general, se ha convertido en víctima de un falso positivo o un error tipo I.

El segundo tipo de error, un error de Tipo II, no puede encontrar una correlación entre las cosas que están realmente relacionadas. Este error se conoce como 'falso negativo' y ocurre cuando la hipótesis nula no se rechaza aunque sea falsa.

Por ejemplo, con el experimento de estudiantes de historia y química, digamos que después de realizar la prueba de hipótesis, concluyes que no hay una diferencia significativa en el interés en el voleibol entre los estudiantes de historia y química. No rechazaste la hipótesis nula. Si en realidad hay una diferencia en las poblaciones en su conjunto, y hay una diferencia significativa en el interés en el voleibol entre los mayores de historia y química, su prueba ha resultado en un falso negativo o un error de Tipo II.

Para encontrar la intersección entre los vectores vec_a y vec_b:

intersection <- intersect(vec_a,vec_b)

Los falsos positivos ocurren cuando el experimento indica un resultado positivo, pero los datos reales son negativos (la hipótesis nula se rechaza aunque sea cierta).

Los falsos negativos se producen cuando el experimento indica un resultado negativo, pero los datos reales son positivos (no se puede rechazar la hipótesis nula, aunque sea falsa).

### P-Values

Una prueba de hipótesis devuelve algunas medidas numéricas, la mayoría de las cuales están fuera del alcance de esta lección introductoria. Aquí nos centraremos en uno: los valores p. Los valores P ayudan a determinar qué tan seguro puede estar al validar la hipótesis nula. En este contexto, un valor p es la probabilidad de que, suponiendo que la hipótesis nula sea cierta, vea al menos tal diferencia en las medias muestrales de sus datos.

Una prueba de hipótesis en los datos del experimento que devuelve un valor p de 0.04 indicaría que, suponiendo que la hipótesis nula sea cierta y que no haya diferencia en la preferencia por el voleibol entre todos los mayores de historia y química, vería al menos tal diferencia en media de la muestra (39% - 34% = 5%) solo el 4% del tiempo debido a un error de muestreo.

Esencialmente, si realizó este mismo experimento 100 veces, esperaría ver una diferencia tan grande en la muestra que solo significa 4 veces dado el supuesto de que no existe una diferencia real entre las poblaciones (es decir, tienen la misma media).

### Significance Level

Si bien una prueba de hipótesis devolverá un valor p que indica un nivel de confianza en la hipótesis nula, no afirma definitivamente si debe rechazar la hipótesis nula. Para tomar esta decisión, debe determinar un valor p umbral para el cual todos los valores p por debajo de él darán como resultado el rechazo de la hipótesis nula. Este umbral se conoce como el nivel de significancia.

Es más probable que un nivel de significación más alto dé un falso positivo, ya que hace que sea 'más fácil' afirmar que existe una diferencia en las poblaciones de sus datos cuando tal diferencia podría no existir. Si desea estar muy seguro de que el resultado no se debe a un error de muestreo, debe seleccionar un nivel de significancia muy pequeño.

Es importante elegir el nivel de significación antes de realizar una prueba de hipótesis estadística. Si espera hasta después de recibir un valor p de una prueba, puede elegir un nivel de significación para obtener el resultado que desea ver. Por ejemplo, si alguien está tratando de publicar los resultados de su estudio científico en una revista, podría establecer un nivel de significancia más alto que haga que sus resultados parezcan estadísticamente significativos. Elegir un nivel de importancia por adelantado ayuda a mantener a todos honestos.

### One Sample T-Test

Una prueba T de una muestra compara una media muestral con una media hipotética de la población. Responde a la pregunta '¿Cuál es la probabilidad de que la muestra provenga de una distribución con la media deseada?'

El primer paso es formular una hipótesis nula, que nuevamente es la hipótesis de que no hay diferencia entre las poblaciones que está comparando. La segunda población en una prueba T de una muestra es la población hipotética que elige. La hipótesis nula que examina esta prueba puede expresarse de la siguiente manera: 'El conjunto de muestras pertenece a una población con la media objetivo'.

t.test () requiere dos argumentos, una distribución de valores y una media esperada:

results <- t.test(sample_distribution, mu = expected_mean)

sample_distribution es la muestra de valores que se recopilaron
mu es un argumento que indica la media deseada de la población hipotética
esperada_medio es el valor de la media deseada

t.test () devolverá, entre otra información que no cubriremos aquí, un valor p; esto le indica qué tan seguro puede estar de que la muestra de valores provenga de una distribución con la media especificada.

### Two Sample T-Test

Una prueba T de dos muestras compara dos conjuntos de datos, que están aproximadamente distribuidos normalmente.

La hipótesis nula, en este caso, es que las dos distribuciones tienen la misma media.

Puede usar la función t.test () de R para realizar una prueba T de dos muestras, como se muestra a continuación:

results <- t.test(distribution_1, distribution_2)

Al realizar una prueba T de dos muestras, t.test () toma dos distribuciones como argumentos y devuelve, entre otra información, un valor p. Recuerde, el valor p le permite saber la probabilidad de que la diferencia en las medias ocurra por casualidad (error de muestreo).

### ANOVA

Al comparar más de dos conjuntos de datos numéricos, la mejor manera de preservar una probabilidad de error Tipo I de 0.05 es usar ANOVA. ANOVA (Análisis de varianza) prueba la hipótesis nula de que todos los conjuntos de datos que está considerando tienen la misma media. Si rechaza la hipótesis nula con ANOVA, está diciendo que al menos uno de los conjuntos tiene una media diferente; sin embargo, no le dice qué conjuntos de datos son diferentes.

Puede utilizar la función del paquete de estadísticas aov () para realizar ANOVA en múltiples conjuntos de datos. aov () toma los diferentes conjuntos de datos combinados en un marco de datos como argumento.

Luego puede ejecutar una prueba ANOVA con esta línea:

results <- aov(score ~ group, data = df_scores)

La hipótesis nula, en este caso, es que las tres poblaciones tienen la misma puntuación media en este videojuego. Si rechaza esta hipótesis nula (si el valor p es menor que 0.05), puede decir que está razonablemente seguro de que un par de conjuntos de datos es significativamente diferente. Sin embargo, después de usar solo ANOVA, no puede sacar ninguna conclusión sobre qué dos poblaciones tienen una diferencia significativa.
