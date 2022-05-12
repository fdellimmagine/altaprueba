# TP1-embebidos

##Blink
Se adaptó el proyecto de prueba **blink**, proporcionado en los examples de yakindu, para ser utilizado con el STM32F103C8T. Este proyecto de prueba viene configurado para la placa "Discovery", la cual cuenta con un chip de la serie STM32F4. Para utilizar el STM32F103C8T, se configuró un proyecto de las mismas características en la plataforma STMCubeMX, asignando 3 salidas, un timer con interrupcion y un cristal externo.
Un proyecto nuevo contiene sólo los archivos de drivers y un main con configuraciones básicas y un **while** vacío. Por esto se debieron agregar los archivos generados por yakindu del proyecto base y cambiar las referencias de salidas a las correspondientes asignadas en el nuevo chip. Por último también se agregó el contenido del main de ejemplo. Se compiló y exporto a la placa correctamente.

###Satechart.ysc
Cuando se quiso adaptar el archivo con la máquina de estado, el mismo dio problemas ya que no encontraba los headers ni tomaba las referencias del nuevo chip. El archivo no esta protegido, disponible para su edición pero por razones desconocidas no actualiza ciertos parámetros y configuraciones dentro de la maquina de estados.
Para solucionar este probelma, se procedio a generar un nuevo archivo vacío y se creo una nueva máquina de estados copiando los parámetros y sintaxis, lo cual resultó en una correcta simulación. Luego de esto se procedio a generar nuevamente el código para verificar que esta capacidad del Yakindu siga funcionando correctamente. El resultado fue satisfactorio logrando nuevamente, una correcta compliacion y ejecucion en la placa.
