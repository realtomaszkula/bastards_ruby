require 'open-uri'
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
local_fname = "hamlet.txt"

File.open(local_fname, "w"){|file| file.write(open(url).read)}

# Every 42 line
File.open(local_fname, "r") do |file|
	file.readlines.each_with_index do |line, i|
		puts line if i % 42 == 41
	end
end

# Hamlet lines
File.open(local_fname, "r") do |file|
	text = file.read
	arr_text = text.gsub("    ", "").split(/\n\s\s/)
	hamlet_lines = arr_text.select { |line| line =~ /Ham\./}.join("\n\n")
	puts hamlet_lines

end