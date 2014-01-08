pages_with_questions = {}

lines_grabbed = ""
key = ""

File.open("story.txt", "r") do |infile|
	while (line = infile.gets)
		if line.index("~p")
			key = line.chomp
			lines_grabbed = ""
		else
			lines_grabbed += line
		end
		pages_with_questions[key] = lines_grabbed
	end
end

puts "Goodmorning"
puts pages_with_questions["~p1"]

puts "1)  #{pages_with_questions["~p1:c1:p2"]}"
puts "2)  #{pages_with_questions["~p1:c2:p3"]}"
puts "3)  #{pages_with_questions["~p1:c3:p4"]}"
puts "Select 1, 2, or 3"

mode = false
while !mode
	c = gets.chomp.to_i + 1
	if [1, 2, 3].include?(c)
		puts pages_with_questions["~p#{c}"]
		mode = true
	else
		puts "Try again...select 1, 2, or 3 ONLY!"
	end
end

=begin
mode = false
while !mode
	choice = gets.chomp.to_i
	if choice == 1
		puts pages_with_questions["~p1"]
		mode = true
	elsif choice == 2
		puts pages_with_questions["~p3"]
		mode = true
	elsif choice == 3
		puts pages_with_questions["~p4"]
		mode = true
	else
		puts "Try again...select 1, 2, or 3 ONLY!"
	end
end
=end