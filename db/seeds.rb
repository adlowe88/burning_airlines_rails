Airplane.destroy_all

a1 = Airplane.create :name => "Boeing 747" , :rows => 32, :columns => 6
a2 = Airplane.create :name => "Boeing 69", :rows => 69, :columns => 4

Flight.destroy_all

f1 = Flight.create :origin => "Beijing", :destination => "Hawaii", :date => "01/01/2018"

a1.flights << f1

f1.update :seats_left => 191

Seat.destroy_all

(1..a1.rows).each do |r|
  (1..a1.columns).each do |c|
    alpha = [ nil, "a", "b", "c", "d", "e", "f", "g", "h"]
    s = Seat.create :name => "#{r}#{alpha[c]}"
    f1.seats << s
  end
end

User.destroy_all

u1 = User.create :name => "John Smith", :dob => "01/01/2001"

Reservation.destroy_all

r1 = Reservation.create :user => u1, :flight => f1

s1 = Seat.first
s1.update :user => u1
