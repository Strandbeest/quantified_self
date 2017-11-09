#20171108141500_add_teacher_id_to_sessions.rb

class AddTeacherIdToSessions <ActiveRecord::Migration
	def change
		add_column :sessions, :teacher_id, :integer
	end
end