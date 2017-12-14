Airplane.destroy_all

a1 = Airplane.create :name => "Boeing 747", :rows => 32, :columns => 6
a2 = Airplane.create :name => "Boeing 69", :rows => 69, :columns => 4
a3 = Airplane.create :name => "Airbus 100", :rows => 22, :columns => 4
a4 = Airplane.create :name => "Airbus 300", :rows => 60, :columns => 6
a5 = Airplane.create :name => "Airbus 600", :rows => 80, :columns => 8
a6 = Airplane.create :name => "Airbus 10000", :rows => 100, :columns => 8

Flight.destroy_all

f1 = Flight.create :origin => "Beijing", :destination => "Hawaii", :date => "01/01/2018"
f2 = Flight.create :origin => "Sydney", :destination => "Japan", :date => "01/01/2018"
f3 = Flight.create :origin => "America", :destination => "England", :date => "01/01/2018"
f4 = Flight.create :origin => "Maldives", :destination => "", :date => "01/01/2018"
f5 = Flight.create :origin => "Sweden", :destination => "Portugal", :date => "01/01/2018"
f6 = Flight.create :origin => "China", :destination => "Canada", :date => "01/01/2018"

a1.flights << f1
a2.flights << f2
a3.flights << f3
a4.flights << f4
a5.flights << f5
a6.flights << f6

f1.update :seats_left => 191
f2.update :seats_left => 150
f3.update :seats_left => 80
f4.update :seats_left => 298
f5.update :seats_left => 590
f6.update :seats_left => 690



Seat.destroy_all

(1..a1.rows).each do |r|
  (1..a1.columns).each do |c|
    alpha = [ nil, "a", "b", "c", "d", "e", "f", "g", "h"]
    s1 = Seat.create :name => "#{r}#{alpha[c]}"
    f1.seats << s1

  end
end

(1..a2.rows).each do |r|
  (1..a2.columns).each do |c|
    alpha = [ nil, "a", "b", "c", "d", "e", "f", "g", "h"]
    s2 = Seat.create :name => "#{r}#{alpha[c]}"
    f2.seats << s2

  end
end

(1..a3.rows).each do |r|
  (1..a3.columns).each do |c|
    alpha = [ nil, "a", "b", "c", "d", "e", "f", "g", "h"]
    s3 = Seat.create :name => "#{r}#{alpha[c]}"
    f3.seats << s3

  end
end

(1..a4.rows).each do |r|
  (1..a4.columns).each do |c|
    alpha = [ nil, "a", "b", "c", "d", "e", "f", "g", "h"]
    s4 = Seat.create :name => "#{r}#{alpha[c]}"
    f4.seats << s4

  end
end

(1..a5.rows).each do |r|
  (1..a5.columns).each do |c|
    alpha = [ nil, "a", "b", "c", "d", "e", "f", "g", "h"]
    s5 = Seat.create :name => "#{r}#{alpha[c]}"
    f5.seats << s5

  end
end

(1..a6.rows).each do |r|
  (1..a6.columns).each do |c|
    alpha = [ nil, "a", "b", "c", "d", "e", "f", "g", "h"]
    s6 = Seat.create :name => "#{r}#{alpha[c]}"
    f6.seats << s6

  end
end

User.destroy_all

u1 = User.create :name => "John Smith", :dob => "01/01/2001"

Reservation.destroy_all

r1 = Reservation.create :user => u1, :flight => f1

s1 = Seat.first
s1.update :user => u1
