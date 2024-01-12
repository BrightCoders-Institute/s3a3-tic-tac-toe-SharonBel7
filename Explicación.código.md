1 **class TicTacToe**
    - Se define una clase llamada `TicTacToe`.

2 **PLAYER_X = 'X', PLAYER_O = 'O', BOARD_SIZE = 3**
    - Se definen constantes para representar a los jugadores (X y O) y el tamaño del tablero.

3 **def initialize**
    - Se define el método `initialize` que crea un nuevo objeto de la clase.
    - Se inicializa un tablero vacío y se establece el jugador actual como X.

4 **def display_board**
    - Se define el método `display_board` para mostrar el estado actual del tablero en la consola.

5 **def make_move(row, col)**
    - Se define el método `make_move` que permite a un jugador realizar un movimiento en el tablero.
    - Verifica si el movimiento es válido, actualiza el tablero y cambia al siguiente jugador.
    - Devuelve `true` si el movimiento es válido, `false` si no lo es.

6 **def game_over?**
    - Se define el método `game_over?` que verifica si el juego ha terminado (hay un ganador o un empate).

7 **private**
    - Se inicia una sección `private` para definir métodos que no deben ser llamados desde fuera de la clase.

8 **def valid_move?(row, col)**
    - Método privado que verifica si un movimiento es válido (la posición en el tablero está vacía).

9 **def switch_player**
    - Método privado que cambia al siguiente jugador.

10 **def winner?**
    - Método privado que verifica si hay un ganador revisando filas, columnas y diagonales del tablero.

11 **def diagonals**
    - Método privado que devuelve las dos diagonales del tablero.

12 **def draw?**
    - Método privado que verifica si hay un empate (no hay espacios vacíos en el tablero).

13 **end**
    - Fin de la definición de la clase.

14 **# Juego**
    - Sección que inicia el juego creando una instancia de la clase `TicTacToe`.

15 **game = TicTacToe.new**
    - Se crea una nueva instancia del juego.

16. **until game.game_over?**
    - Bucle que ejecuta turnos hasta que el juego termina.

17 **game.display_board**
    - Muestra el estado actual del tablero.

18 **puts "#{game.current_player}'s turn."**
    - Muestra de quién es el turno actual.

19 **puts "Enter row (0-#{TicTacToe::BOARD_SIZE - 1}):"**
    - Solicita al usuario ingresar la fila para su movimiento.

20 **row = gets.chomp.to_i**
    - Lee la entrada del usuario y la convierte a un número entero.

21 **puts "Enter column (0-#{TicTacToe::BOARD_SIZE - 1}):"**
    - Solicita al usuario ingresar la columna para su movimiento.

22 **col = gets.chomp.to_i**
    - Lee la entrada del usuario y la convierte a un número entero.

23 **game.make_move(row, col)**
    - Realiza el movimiento del jugador actual.

24 **puts "\n"**
    - Imprime una línea en blanco para separar los turnos.

25 **end**
    - Fin del bucle `until`.

26 **game.display_board**
    - Muestra el estado final del tablero después del último movimiento.

27 **if game.winner?**
    - Verifica si hay un ganador.

28 **puts "Player #{game.current_player} wins!"**
    - Muestra el mensaje de que un jugador ha ganado.

29 **else**
    - Si no hay un ganador, significa que es un empate.

30 **puts "It's a draw!"**
    - Muestra el mensaje de empate.

