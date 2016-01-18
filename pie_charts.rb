require 'open-uri'


BASE_URL = "https://chart.googleapis.com/chart?"
params = {
	cht:  "cht=p3",
	chs:  "chs=250x100",
	chd:  "chd=:",
	chl:  "chl="
}


row = File.open("file-analysis.txt") do |fname|
	 fname.read.gsub("\t"," ").split("\n")
end

chl = []
chd = []
row.each do |arr|
	chl << arr[0]
	chd << arr[1]
end

params[:chl] << chl.join("|")
params[:chd] << chd.join(",")

p params

remote_google_img = URI.encode"#{BASE_URL}&#{params[:chs]}&#{params[:cht]}&#{params[:chd]}&#{params[:chd]}"