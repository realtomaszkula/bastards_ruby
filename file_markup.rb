num_of_files = Hash.new(0)
disk_space = Hash.new(0)


x = Dir.glob("*").sort_by do |fname|
	
end

x.each do |fname|
	num_of_files[File.extname(fname)] += 1
	disk_space[File.extname(fname)] += File.size(fname)
end

disk_space.each do|k,v|

	puts "#{k}\t#{v}\t" << num_of_files[k].to_s
end