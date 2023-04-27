class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.partition(':').last.strip
  end

  def log_level
    @line[/\[.*?\]/][1..-2].downcase
  end

  def reformat
    "#{@line.partition(':').last.strip} (#{@line[/\[.*?\]/][1..-2].downcase})"
  end
end