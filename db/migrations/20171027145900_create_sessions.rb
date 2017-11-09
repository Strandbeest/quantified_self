#20171027145900_create_sessions.rb20171027145900_create_sessions.rb

#write migration
#create session table with 

class CreateSessions < ActiveRecord::Migration
	def change
		create_table :sessions do |t|
			t.datetime :begin_time
			t.datetime :end_time
			t.string :end_pose
			t.integer :energy_before
			t.integer :energy_after
			t.string :practice_type
			#t.teacher :teacher

			t.timestamps null: false
		end
	end
end
