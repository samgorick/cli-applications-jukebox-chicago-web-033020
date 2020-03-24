# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)


def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index +1}. #{song}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip

  songs.each_with_index do |song, index|
    
    if input == song || input.to_i == index + 1
      puts "Playing #{song}"
      return song
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  
  until input == "exit"
  
  case input
  when "help"
    help
  when "play"
    play(songs)
  when "list"
    list(songs)
  end

  puts "Please enter a command:"
  input = gets.strip
  end
  exit_jukebox
end

def exit_jukebox
  puts "Goodbye"
end