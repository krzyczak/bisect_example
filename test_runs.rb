require "digest"
require "fileutils"

FileUtils.rm("./results/result_plot_1.png") if File.exist?("./results/result_plot_1.png")

require "./lib/automatise"

ground_truth_digest = Digest::MD5.hexdigest(File.read("ground_truth_plot.png"))
plot_digest = Digest::MD5.hexdigest(File.read("./results/result_plot_1.png"))

if ground_truth_digest == plot_digest
  puts "All OK"
else
  puts "Does not work!!!!!!!!"
end

puts "Prest ENTER to continue"; gets
exit ground_truth_digest == plot_digest ? 0 : 1
