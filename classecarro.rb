#RaceCar class
DISTANCE = 100
class RaceCar
  @speed_total = 0
  @average_speed = 0

  def initialize(name,speed_total)
    @name = name
    @speed_total=speed_total
  end

  #método para obtener velocidad promedio
  def average_speed
    @average_speed = @speed_total.to_f / DISTANCE
    p @average_speed
  end

  #método que muestra nivel de cada race car
  def car_level
    case @speed_total
    when 0..5
      "Avanzado"
    when 5..9
      "Medio"
    when 9..12
      "Normal"
    else
     "Principiante"
    end
  end
  

end

#Team class
class Team
  @CarTeam = []

  def initialize(*carros)
    @carros = carros
    @CarTeam = []
    carros.each do |car|
      @CarTeam << car
    end
  end


  #método para agregar nuevo race car
  def add_race_car(carro)
    @CarTeam << carro
  end



  #método para calcular promedio de velocidad del equipo
  def average_speed_of_team
     car1
  end
  

end

#método para buscar race car
def search(car_name,team)
    if team.include?(car_name)
      "This car is in this team"
    else
      "This car is NOT in this team"
    end
end

#método para generar la tabla

#método para mostrar nombre y nivel del race car



#instancias de RaceCar
car1 = RaceCar.new("Force",950)
car2 = RaceCar.new("Power",1201)
car3 = RaceCar.new("Passwater",1065)
car4 = RaceCar.new("Banjo",1100)
car5 = RaceCar.new("Duck",1015)
car6 = RaceCar.new("ElJefe",1551)


#tests

p "car1: #{car1.average_speed} m/s"
#ej. car1: 9.5 m/s
p "car2: #{car2.average_speed} m/s"
#ej. car2: 12.01 m/s
p "car3: #{car3.average_speed} m/s"
#ej. car3: 10.65 m/s
p "car4: #{car4.average_speed} m/s"
#ej. car4: 11.0 m/s
p "car5: #{car5.average_speed} m/s"
#ej. car5: 10.15 m/s
p "car6: #{car6.average_speed} m/s"
#ej. car6: 15.51 m/s

#create a team of cars 
team1 = [car1, car2, car3, car4, car5]
team_one = Team.new(team1)

#test para buscar race car en equipo team_one
p search(car1,team1) == "This car is in this team"

p team_one.average_speed_of_team

