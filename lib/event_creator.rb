class EventCreator

  def initialize
  puts "Salut, tu veux créer un événement ? Cool ! \n
  Commençons. Quel est le nom de l'événement ?"
  print "> " 
  @title = gets.chomp.to_s

  puts "Super. Quand aura-t-il lieu ?"
  print "> "
  @start_date = gets.chomp.to_s

  puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
  print "> "
  @duration = gets.chomp.to_i

  puts "Génial. Qui va participer ? Balance leurs e-mails"
  print "> "
  @attendees = gets.chomp.split(',')

  event = Event.new(@start_date, @duration, @title, @attendees)

  puts "Super, c'est noté, ton évènement a été créé !"
  end

  def to_s
    puts "> Titre : #{@title}"
    puts "> Date de début : #{@start_date}"
    puts "> Durée : #{@duration}"
    puts "> Invités : #{@attendees}"
  end
  
end