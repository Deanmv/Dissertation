require 'cora'
require 'siri_objects'

######################################################################################################
# Control several options of Logic Pro, full list can be seen at http://github.com/Deanmv            #
#                                                                                                    #
# Tested on iPhone 5 with iOS 6.1.3 with Macbook Pro 8,2 (Late 2011) Running Mountain Lion 10.8.3    #
# and Logic Pro 9.1.4 32-bit.                                                                        #
#                                                                                                    #
# http://www.deanvizer.com                                                                           #
######################################################################################################

class SiriProxy::Plugin::Logic < SiriProxy::Plugin
    
    attr_accessor :machine
    
    def initialize(config = {})
        self.machine = config["machine"]
    end
    
    @@playhead = "stopped"
    @@cycle = "off"
    @@mixer = "hide"
    @@solo = "off"
    @@trackNum = "1"
    @@trackInput = "0"
    @@currentTrack = "0"
    
########################################### PLAY ###########################################################
    
    listen_for /Logic play/i do
    
        if @@playhead == "stopped" then
    
            say "Now playing the project."
    
            if self.machine == "local" then
                `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke (" ")'`
                else
                `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke (" ")'`
    #           `osascript -e 'tell application "Finder" of machine "#{self.machine}" to say "Hello"'`  --- tester
            end

            @@playhead = "playing"

            else @@playhead == "playing"

                say "The project is already playing or recording."

            end

        request_completed
    end

########################################### PLAY ###########################################################

########################################### STOP ###########################################################

    listen_for /Logic stop/i do
    
        if @@playhead == "playing" then
        
            say "Now stopping the project."
        
            if self.machine == "local" then
                `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke (" ")'`
                else
                `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke (" ")'`
            end
        
            @@playhead = "stopped"
        
            else @@playhead == "stopped"
        
                say "The project is already stopped."
    
            end
    
        request_completed
    end

########################################### STOP ###########################################################

########################################### RECORD ###########################################################

    listen_for /Logic record/i do
    
        if @@playhead == "playing" then
        
            say "Project is already playing or recording. You can't record, please stop first."
        
            else @@playhead == "stopped"
        
            say "The project is now recording."
        
            if self.machine == "local" then
                `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke ("r")'`
                else
                `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke ("r")'`
            end
        
            @@playhead = "playing"
        
        end
    
        request_completed
    end

########################################### RECORD ###########################################################

########################################### GO TO BAR ###########################################################

    listen_for /Logic(?: go to)? bar ([0-9,]*[0-9])/i do |location|
    
    while location.empty? do
        location = ask "What bar would you like to go to?"
    end
        
        if @@playhead == "stopped" then
            
            say "Moved playhead to bar #{location}."
            
            if self.machine == "local" then
                `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke ("u")' -e 'tell application "System Events" to keystroke ("#{location}")' -e 'tell application "System Events" to keystroke return'`
                else
                `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke ("u")' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke ("#{location}")' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke return'`
            end
            
            @@playhead = "stopped"
            
            else @@playhead == "playing"
            
            say "Can't go to bar whilst playing."
            
        end
        
        request_completed
    end
    
########################################### GO TO BAR ###########################################################
    
########################################### CYCLE ON ###########################################################
    
    listen_for /Logic(?: turn)? loop on/i do
        
        if @@cycle == "off"
            
            say "Loop now turned on."
            
            if self.machine == "local" then
                `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke ("c")'`
                else
                `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke ("c")'`
            end
            
            @@cycle = "on"
            
            else @@cycle == "on"
            
            say "Loop is already turned on."
            
        end
        
        request_completed
    end
    
########################################### CYCLE ON ###########################################################
    
########################################### CYCLE OFF ###########################################################
    
    listen_for /Logic(?: turn)? loop off/i do
        
        if @@cycle == "on"
            
            say "Loop now turned off."
            
            if self.machine == "local" then
                `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke ("c")'`
                else
                `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke ("c")'`
            end
            
            @@cycle = "off"
            
            else @@cycle == "off"
            
            say "Loop is already turned off."
            
        end
        
        request_completed
    end
    
########################################### CYCLE OFF ###########################################################
    
########################################### MIXER SHOW ###########################################################
    
    listen_for /Logic show(?: the)? mixer/i do
        
        if @@mixer == "hide"
            
            say "Mixer is now displayed."
            
            if self.machine == "local" then
                `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke ("x")'`
                else
                `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke ("x")'`
            end
            
            @@mixer = "show"
            
            else @@mixer = "show"
            
            say "The mixer is already displayed."
            
        end
        
        request_completed
    end
    
########################################### MIXER SHOW ###########################################################
    
########################################### MIXER HIDE ###########################################################
    
    listen_for /Logic hide(?: the)? mixer/i do
        
        if @@mixer == "show"
            
            say "Mixer is now hidden."
            
            if self.machine == "local" then
                `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke ("x")'`
                else
                `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke ("x")'`
            end
            
            @@mixer = "hide"
            
            else @@mixer = "hide"
            
            say "The mixer is already hidden."
            
        end
        
        request_completed
    end
    
########################################### MIXER HIDE ###########################################################
    
########################################## SOLO ON ##########################################################
    
    listen_for /Logic(?: turn)? solo on/i do
        
        if @@solo == "off"
            
            say "Solo now turned on for selected track. You can change tracks with 'logic track up' or 'logic track down'", spoken: "Solo now turned on for selected track."
            
            if self.machine == "local" then
                `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke ("s")'`
                else
                `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke ("s")'`
            end
            
            @@solo = "on"
            
            else @@solo == "on"
            
            say "Solo is already turned on."
            
        end
        
        request_completed
    end
    
######################################### SOLO ON ##########################################################
    
######################################### SOLO OFF ##########################################################
    
    listen_for /Logic(?: turn)? solo off/i do
        
        if @@solo == "on"
            
            say "Solo now turned off for all tracks."
            
            if self.machine == "local" then
                `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke ("s")'`
                else
                `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke ("s")'`
            end
            
            @@solo = "off"
            
            else @@solo == "off"
            
            say "Solo is already turned off."
            
        end
        
        request_completed
    end
    
######################################### SOLO OFF ##########################################################
        
######################################## TRACK COUNT ########################################################

    listen_for /Logic track count is ([0-9,]*[0-9])/i do |trackCount|
        
        say "Noted, you have #{trackCount} tracks in your project."
        
        @@trackInput = trackCount
        
        request_completed
    end
    
######################################## TRACK COUNT ########################################################
        
######################################## WHAT TRACK #########################################################
        
    listen_for /Logic what track am I on/i do
        
        say "You currently have track #{@@trackNum} selected."
        
        request_completed
        
    end
        
######################################## WHAT TRACK #########################################################
        
######################################### TRACK UP ##########################################################
    
    listen_for /Logic track up/i do
        
                if @@trackNum == 1 then
                    say "First track is already selected."
                    else
                    @@trackNum = (@@trackNum.to_i - 1)
                    say "Moved up one track. Track selected is now Track #{@@trackNum}"
                end
        
        if self.machine == "local" then
            `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke (ASCII character 30)'` #Up arrow
            else
            `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke (ASCII character 30)'` #Up arrow
        end
        
        request_completed
    end
    
######################################### TRACK UP ##########################################################
    
######################################### TRACK DOWN #########################################################
        
        
    listen_for /Logic track down/i do
        
                if @@trackNum.to_i == @@trackInput.to_i then
                    say "Last track is already selected."
                    else
                    @@trackNum = (@@trackNum.to_i + 1)
                    say "Moved down one track. Track selected is now Track #{@@trackNum}"
                    
                    if self.machine == "local" then
                        `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke (ASCII character 31)'` #Down arrow
                        else
                        `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke (ASCII character 31)'` #Down arrow
                    end
                    
                end
        
        request_completed
    end
    
######################################### TRACK DOWN ##########################################################
    
##################################### ZOOM VERTICALLY IN ######################################################
    
    listen_for /Logic zoom vertically in/i do
        
        say "Zoomed in vertically."
        
        if self.machine == "local" then
            `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke (ASCII character 31) using control down'` #Down arrow
            else
            `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke (ASCII character 31) using control down'` #Down arrow
        end
        
        
        request_completed
    end
    
##################################### ZOOM VERTICALLY IN ######################################################
    
##################################### ZOOM VERTICALLY OUT ######################################################
    
    listen_for /Logic zoom vertically out/i do
        
        say "Zoomed out vertically."
        
        if self.machine == "local" then
            `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke (ASCII character 30) using control down'` #Up arrow
            else
            `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke (ASCII character 30) using control down'` #Up arrow
        end
        
        
        request_completed
    end
    
##################################### ZOOM VERTICALLY OUT ######################################################
    
##################################### ZOOM HORIZONTALLY IN ######################################################
    
    listen_for /Logic zoom horizontally in/i do
        
        say "Zoomed in vertically."
        
        if self.machine == "local" then
            `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke (ASCII character 29) using control down'` #Right arrow
            else
            `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke (ASCII character 29) using control down'` #Right arrow
        end
        
        
        request_completed
    end
    
##################################### ZOOM HORIZONTALLY IN ######################################################
    
##################################### ZOOM HORIZONTALLY OUT ######################################################
    
    listen_for /Logic zoom horizontally out/i do
        
        say "Zoomed in vertically."
        
        if self.machine == "local" then
            `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke (ASCII character 28) using control down'` #Left arrow
            else
            `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke (ASCII character 28) using control down'` #Left arrow
        end
        
        
        request_completed
    end
    
##################################### ZOOM HORIZONTALLY OUT ######################################################
    
##################################### RECORD ENABLE TOGGLE #######################################################
    
    listen_for /Logic toggle record enable/i do
        
        say "Record enable has been toggled."
        
        if self.machine == "local" then
            `osascript -e 'tell application "Logic Pro" to activate' -e 'tell application "System Events" to keystroke ("r") using control down'`
            else
            `osascript -e 'tell application "Logic Pro" of machine "#{self.machine}" to activate' -e 'tell application "System Events" of machine "#{self.machine}" to keystroke ("r") using control down'`
            
        end
        
        request_completed
    end
    
###################################### RECORD ENABLE TOGGLE #######################################################
    
end