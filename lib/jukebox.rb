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

# Jukebox should respond to 4 commands
# "help" should ouput instructions on how to use jukebox
# "list" outputs list of songs for user to choose
# "play" asks user to input song name or number, then output "playing #{song_name}"
# 'exit' jukebox should say goodbye

# ALL JUKEBOX METHODS SHOULD BE CREATED HERE...
# THE bin/jukebox file WILL ONLY call the method WE CREATE HERE

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number"
  ans = gets.chomp

  playing = false
  songs.each_with_index do |song, i|
    track = i + 1
    if ans == track.to_s || song == ans # Had to seperate both conditionals into seprate statements
      puts "Playing #{song}."
      playing = true
      break
    end
  end
  if playing == false
    puts "Invalid input, please try again"
  end
end

# the problem i'm having is on line 42, it has to do with
# typing 9, which song.include? evaluates as it being song 1...
# therefore i am changing .include? to be '=='
def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

=begin
  loop do
    puts "Please enter a command:"
    ans = gets.chomp
    if ans == 'exit'
      exit_jukebox
      break
    elsif ans == 'list'
      list(songs)
    elsif ans == 'play'
      play(songs)
    elsif ans == 'help'
      help
    end
  end
=end

  loop do
    puts "Please enter a command:"
    ans = gets.chomp
    case ans
    when 'exit'
      exit_jukebox
      break
    when 'list'
      list(songs)
    when 'help'
      help
    when 'play'
      play(songs)
    end
  end


end
