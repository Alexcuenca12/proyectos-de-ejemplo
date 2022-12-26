class Exercise
  attr_reader :filename

  def initialize(filename)
    @filename = filename
    is_done?
  end

  def call
    puts "=" * 40
    puts "Exercise: #{filename}"
    syntax_ok = system("ruby -c #{filename}")
    puts "\nOutput:"
    exec_ok = system("ruby #{filename}")
    puts "\nDone: #{@done}"
  end

  private

  def is_done?
    filter = /# I AM NOT DONE/
    content = File.read(@filename)
    @done = true
    @done = false if content.match(filter).nil?
  end
end
