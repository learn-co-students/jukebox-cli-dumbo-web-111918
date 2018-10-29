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
  puts  "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choose a song to play
        - exit : exits this program"
end

def list(songs)
  songs.each_with_index { |item, index| puts "#{index+1}:#{item}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  song_name = gets.chomp
  if list(songs).include?(song_name)
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye."
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    command = gets.chomp
    if command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "exit"
      exit_jukebox
    end
    break if command == "exit"
  end
end
  