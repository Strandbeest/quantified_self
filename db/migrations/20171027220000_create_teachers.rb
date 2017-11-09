#20171027220000_create_teachers.rb

class CreateTeachers <ActiveRecord::Migration
	def change
		create_table :teachers do |t|
			t.string :name
		end
	end
end