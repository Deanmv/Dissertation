#Siri proxy

#require 'cora'
#require 'siri_objects'
#require 'pp'

######
# Control the Playback, Pre-roll and recording options of Logic Pro.
#
# Tested on iPhone 5 with iOS 6.0 with Macbook Pro 8,2 (Late 2011) Running Mountain Lion 10.8.1 and Logic Pro 9.1.4 32-bit.
######

class SiriProxy::Plugin::Logic < SiriProxy::Plugin


    #LOGIC_CHECK = '(Logic|Logic Pro|Logic Pro 9)'
    
    listen_for /Logic start the song/i do
    # system("osascript ~/Desktop/Dissertation/Play.script")
        say "Now playing Logic"
        request_completed
    end

	#listen_for(/Playback.play/i)	{ Pause-Play }
	#listen_for(/Playback.pause/i)	{ Pause-Play }

	##listen_for(/Recording.*status/i) { Recording }
	#listen_for(/Recording.On/i)	{ Recording }
	#listen_for(/Recording.Off/i)	{ Recording }

	#listen_for(/Pre-roll.*set/i) { Pre-Roll }
	#listen_for(/Pre-roll.*status/i) { Pre-Roll }
	#listen_for(/Pre-roll.On/i) { Pre-Roll }
	#listen_for(/Pre-Roll.Off/i) { Pre-Roll }

	#listen_for(/Beginning.*set/i) { Beginning }

########################## PLAY AND PAUSE OPTIONS ############################

    #	def Pause-Play
    #
	#system("osascript ~/Desktop/Dissertation/Play.scrpt");
	#say "Logic is now playing the track."
	#request_completed
	#end

	#def Pause-Play

	#system("osascript ~/Desktop/Dissertation/Pause.scrpt");
	#say "The track is now paused."
	#request_completed
	#end

########################## RECORDING OPTIONS ############################

    #	def Recording

    #	system("osascript ~/Desktop/Dissertation/RecordingOn.scrpt");
    #	say "Recording is now enabled for the selected track."
    #   #	request_completed
    #	end


    #	def Recording
    #
    #	system("osascript ~/Desktop/Dissertation/RecordingOff.scrpt");
    #	say "Recording has been turned off for the selected track."
    #	request_completed
    #	end

    #	def Recording

    #	system("osascript ~/Desktop/Dissertation/RecordingStatus.scrpt");
    #	say "Recording is currently set to #{recordingstatus} for the selected track."
    #	request_completed
    #	end

########################## PRE-ROLL OPTIONS ############################
    #
    #	def Pre-Roll
    #
    #	system("osascript ~/Desktop/Dissertation/Pre-Roll-timing.scrpt");
    #	say "Pre-Roll has now been set to #{time} seconds."
    #	request_completed
    #	end


    #	def Pre-Roll

    #	system("osascript ~/Desktop/Dissertation/Pre-Roll-On.scrpt");
    #	say "Pre-Roll has now been turned on."
    #	request_completed
    #	end

    #	def Pre-Roll

    #	system("osascript ~/Desktop/Dissertation/Pre-Roll-off.scrpt");
    #	say "Pre-Roll has now been turned off."
    #	request_completed
    #	end

    #	def Pre-Roll

    #	system("osascript ~/Desktop/Dissertation/Pre-Roll-status.scrpt");
    #	say "Pre-Roll is currently #{on or off}."
    #	request_completed
    #	end

########################## PLAYHEAD OPTIONS ############################

    #	def Beginning

    #	system("osascript ~/Desktop/Dissertation/Beginning-Of-Track.scrpt");
    #	Say "Playhead is now back to the beginning of the track."
    #	request_completed
    #	end

end