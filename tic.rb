
class Tictac

	def initialize(tamano)
	
		@tamano = tamano
		@matriz = []
	
	
	end

	def dimension()

		
		@tamano.times do 
			columnas = []
			@tamano.times do
				columnas.push("°")
			end

			@matriz.push columnas
		end
	


	


		for f in 0..@matriz.size-1
			puts
			for c in 0..@matriz[f].size-1
				print " "
				print @matriz[f][c]
			end
		end
		
	end

	def mostrar()

		for f in 0..@matriz.size-1
			puts
			for c in 0..@matriz[f].size-1
				print " "
				print @matriz[f][c]
			end
		end


	end

	def validar() 

		for f in 0..@matriz.size-1
			if @matriz[f][f] = "x"


			print "El jugador uno ha ganado"


			else

				print "El jugador dos ha ganado"

			end
		end

		
	end


	def jugar(coordenas_x, coordenas_y, turno_jugador_uno)
		@coordenas_x = coordenas_x
		@coordenas_y = coordenas_y
		@turno_jugador_uno = turno_jugador_uno
	
		
		if @turno_jugador_uno == true
			for f in 0..@matriz.size-1
				puts
				for c in 0..@matriz[f].size-1

					@matriz[@coordenas_x][@coordenas_y] = "x"
				end
			end

		else
			for f in 0..@matriz.size-1
				puts
				for c in 0..@matriz[f].size-1
					@matriz[@coordenas_x][@coordenas_y] = "o"
				end

			end
		
		

		end


	end

end


turno_jugador_uno = true;
juego =  false

print "DAME EL TAMAÑO DEL TABLERO:"
tamano = gets.chomp.to_i

puts
new_game = Tictac.new(tamano)

new_game.dimension

puts

while juego == false
	
		if turno_jugador_uno == true
			print "JUGADOR UNO: ELIJA LA COORDENADA X"
			coordena_y_player_one = gets.chomp.to_i
			print "JUGADOR UNO: ELIJA LA COORDENADA y"
			coordena_x_player_one = gets.chomp.to_i

			new_game.jugar(coordena_x_player_one, coordena_y_player_one, turno_jugador_uno)
			turno_jugador_uno = false
			puts
			new_game.mostrar
			
			puts

			else 
				print "JUGADOR DOS: ELIJA LA COORDENADA X"
				coordena_y_player_two = gets.chomp.to_i
				print "JUGADOR DOS: ELIJA LA COORDENADA y"
				coordena_x_player_two = gets.chomp.to_i


				new_game.jugar(coordena_x_player_two, coordena_y_player_two, turno_jugador_uno)
				new_game.mostrar
				turno_jugador_uno = true
			end
puts

puts

end





