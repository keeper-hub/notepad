class Memo < Post

  def read_from_console

    puts "Новая заметка. Для окончания записи введите \"end\":"

    @text = []
    line = nil

    while line != "end"
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    return @text.unshift(time_string)
  end
end
