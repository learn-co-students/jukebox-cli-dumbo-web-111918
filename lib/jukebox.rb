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
    songs.each.with_index(1) do |element, index|
      puts "#{index}. #{element}"
    end
  end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  title = []
  title = songs.select.with_index(1) do |element, index|
    if choice.to_i == index
      puts "Playing #{element}"
      title << element #1. why do i have to push this, i thought select outputs a new array
    elsif choice == element
      puts "Playing #{element}"
      title << element
   end
  end
   if title.length == 0
     puts "Invalid input, please try again"
   end
 end

#alternate
#puts "Please enter a song name or number:"
  #choice = gets.chomp
#   if [*1..12].include?(choice.to_i)
#     puts "Playing #{songs[choice.to_i - 1]}"
#   elsif songs.include?(choice)
#     puts "Playing #{choice}"
#   else
#     puts "Invalid input, please try again"
#   end
# end
# def play(songs)

  def exit_jukebox
    puts "Goodbye"
  end

def run(songs)
    help
    puts "Please enter a command:" #2 this forces input question twice when you start
    input = gets.chomp
    #  if input == "exit"          #3 can this work, seems to work? #4 why do i get error message with test, see below
    #    exit_jukebox
    #   break

    while input
    puts "Please enter a command:"
    input = gets.chomp
      case input
      when "help"
        help
        #please enter a command input = gets.chomp
      when "list"
        list(songs)
      #when "play"
      when "play"
        play(songs)
       else "exit"
         exit_jukebox
         break
      end
   end
end
