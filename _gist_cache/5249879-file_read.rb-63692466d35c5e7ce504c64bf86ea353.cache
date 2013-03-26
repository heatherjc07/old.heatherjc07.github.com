#Write a simple grep that will print the lines of a file having any occurrences
#of a phrase anywhere in that line. You will need to do a simple
#regular expression match and read lines from a file. (This is surprisingly
#simple in Ruby.) If you want, include line numbers.

def find_matching_lines(file_name,pattern)
  regexp = Regexp.new(pattern)
  File.foreach(file_name).with_index { |line,line_num|
    puts "#{line_num}: #{line}" if regexp =~ line
  }
end

find_matching_lines("sample.txt","programming")