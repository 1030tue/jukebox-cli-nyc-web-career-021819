require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]





def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


def list(songs)
  songs.each_with_index do |track,i|
    puts "#{i+1}. #{track}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  songs.each_with_index do |name,ind|
    n = ind + 1
  if user_input.to_i == n
  puts "playing #{name}!"
elsif user_input == name
  puts "playing #{name}!"
else
  puts "Invalid input, please try again"
end
end

end


def exit_jukebox
  puts "Goodbye"
end



def run(songs)
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
