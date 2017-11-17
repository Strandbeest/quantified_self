#20171110135000_populate_poses.rb

class PopulatePoses < ActiveRecord::Migration
	#pose = Pose.find_or_create_by(:name => row[7])
	def up 
		#session.each do:
		#import the session 
		Session.all.each do |session|
			pose = Pose.find_or_create_by(:name => session.end_pose)
			session.pose = pose
			session.save
		end
	end

	def down
		
	end


end

