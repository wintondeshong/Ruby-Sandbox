file_name = "temp.txt"
file = File.exists?(file_name) ? File.open(file_name, "r") : File.new(file_name, "w")
file_lines = file.readlines

File.delete(file_name)
file = File.new(file_name, "w")

if file_lines.count == 0
  file.puts("entry 1")
else
  i = 1
  file_lines.each do |line|
    output = "#{line.strip} #{i}"
    puts output
    file.puts(output)
    i += 1
  end
  file.puts("entry #{i}")
end
