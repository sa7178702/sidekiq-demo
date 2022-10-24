# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

1000.times.each do |student_record|
	Student.create(
		name: "dummy name #{student_record + 1}",
		email: "dummy@gmail.com #{student_record + 1}",
		password: "12345 #{student_record + 1}",
		address: "Noida UP #{student_record + 1}"
		)
end
