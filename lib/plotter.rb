class Plotter
  def initialize(data)
    @data = data
  end

  def plot
    puts "Starting to plot images."
    @data.map do |dat|
      puts "--- Currently plotting: #{dat}"
      content = "sdfsdfdssdfkhsdfkjsdhf-#{File.read("./ground_truth_plot.png")}"
      File.open("./results/#{dat}.png", "w+") { |ff| ff.write(content) }
    end
    puts "Finished plotting all plots."
  end
end
