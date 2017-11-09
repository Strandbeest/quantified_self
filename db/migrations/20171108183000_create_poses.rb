#20171108183000_create_poses.rb
class CreatePoses < ActiveRecord::Migration
	def change
		create_table :poses do |t|
			t.string :name
			end
	end
end