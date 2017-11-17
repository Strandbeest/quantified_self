#20171108190000_add_pose_id_to_sessions.rb

class AddPoseIdToSessions <ActiveRecord::Migration
	def change
		add_column :sessions, :pose_id, :integer
	end
end