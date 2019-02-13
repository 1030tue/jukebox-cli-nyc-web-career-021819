#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  my_songs.each do |name, add|
    puts name
  end
end




def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  #this time, only allow user's to input a song name
  my_songs.each do |key, value|
  #check to see if the name they give is in fact a key of the my_songs hash
  if user_input == name
    sysemt 'open ' + value
  #if it isn't, tell them their choice is invalid
else
  puts "Invalid input, please try again"
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
end
end
end


def exit_jukebox
  puts "Goodbye"
  #this method is the same as in jukebox.rb
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  user_input=""
  while user_input != "exit"
    puts "Please enter a command:"
    user_input = gets.chomp

          if user_input == "help"
            help

        elsif user_input == "list"
            list(songs)

        elsif user_input == "play"
          play(songs)

        elsif user_input == "exit"
          exit_jukebox
        else
          Puts "Invalid input, please try again"
        end
    end
    end
