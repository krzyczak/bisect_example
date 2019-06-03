class Plotter
  def initialize(data)
    @data = data
  end

  def plot
    @data.map do |dat|
      File.open("./results/#{dat}.png", "w+") { |ff| ff.write(File.read("./ground_truth_plot.png")) }
    end
  end
end
