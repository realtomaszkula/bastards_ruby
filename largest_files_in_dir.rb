
Dir.glob("*").sort_by{|fname| File.size(fname)}.reverse[0..9].each do |fname| 
	puts "#{fname}\t#{File.size(fname)}"
end
