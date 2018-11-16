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
def play(songs_list)
  song = gets.chomp
  if (song.to_i.to_s == song) && (songs_list[song.to_i] != nil)
    puts songs_list[song.to_i - 1]
  elsif songs_list.include?(song)
    puts song
  else
    puts "Invalid input, please try again"
  end
end

def help 
  puts "Possible Commands: help, play, list, exit."
end

def list(songs)
  puts songs
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  case command
  when "help"
    help
  when "play"
    puts "Please enter a song name or number:"
    play(songs)
  when "list"
    list
  when "exit"
    exit
  else
    puts "Fail"
  end
end