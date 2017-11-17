require_relative "migrations/20171027145900_create_sessions"
require_relative "../models/session"

require_relative "migrations/20171027220000_create_teachers.rb"
require_relative "../models/teacher"

require_relative "migrations/20171108183000_create_poses.rb"
require_relative "../models/pose"

Session.delete_all
Teacher.delete_all
#Pose.delete_all

CSV.foreach('./yoga_sessions.csv') do |row|

	if(row[4]==nil || row[4]=='0')
		next
	end

	begin_time_string = row[4].split(":")
	begin_time = DateTime.new(row[2].to_i, row[1].to_i, row[0].to_i, begin_time_string[0].to_i, begin_time_string[1].to_i, begin_time_string[2].to_i)
	p begin_time

	end_time_string = row[5].split(":")
	end_time = DateTime.new(row[2].to_i, row[1].to_i, row[0].to_i, end_time_string[0].to_i, end_time_string[1].to_i, end_time_string[2].to_i)
	p end_time

	teacher = Teacher.find_or_create_by(:name => row[11])
	session = Session.new(:begin_time => begin_time, :end_time => end_time, :end_pose => row[7], :energy_before => row[8], :energy_after =>row[9], :practice_type => row[10], :teacher_id => teacher.id).save!

	#have I done this import correctly?  Is it storing multiple copies of the same value?

end






#["18", "5", "2016", "1", "16:40:00", "18:10:00", "01:30:00", "Ubhaya Padangushtasana", "-1", "-1", "Mysore", "Shelley Hickson", "1"]
