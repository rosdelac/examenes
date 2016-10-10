require 'pp'

class CreditCard
  attr_reader :name, :number, :expiration, :cvc
  attr_accessor :status
  def initialize(name,number,expiration,cvc,status)
  @name = name
  @number = number
  @expiration = expiration
  @cvc = cvc
  @status = status

  end
end


card1 = CreditCard.new("Amex",2345673444,"12/15",2345,[234, 567, 456, 567, 344])
card2 = CreditCard.new("ScotiaBank",2345673744,"12/16",2845,[234, 345, 456, 567, 344])
card3 = CreditCard.new("Bancomer", 2345673444, "12/15",2645,[234, 345, 456, 567, 344])
card4 = CreditCard.new("Serfin",2345473454,"12/20",1345,[234, 345, 456, 567, 344])
card5 = CreditCard.new("BanCoppel",2345373464,"12/18", 2445,[567, 345, 456, 567, 344])

cards = [card1,card2,card3,card4,card5]

cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

cardsarre = []
cardsarre << card1
cardsarre << card2
cardsarre << card3
cardsarre << card4
cardsarre << card5

format = '%-15s %-8s %-7s %-7s %-7s'
puts format % ['Name', 'Number', 'Expiration', 'CVC', 'Status']
cardsarre.each_with_index do |card, i|
  puts format % [card.name, card.number, card.expiration, card.cvc, card.status ]
end





