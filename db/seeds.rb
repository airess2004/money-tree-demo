# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1.upto 10).each do |x|
    user = User.create_object(
        :email => "Email#{x}@gmail.com",
        :first_name => "First Name #{x}",
        :last_name => "Last Name #{x}",
        :gender_status => rand(1..2),
        :marital_status => rand(1..5),
        :street_address => "Address #{x}",
        :birth_date => DateTime.now,
        :handphone => "#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}"
      )
end