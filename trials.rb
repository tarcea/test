def group_by_marks(marks, pass_marks)
    marks.group_by {|k,v| v > pass_marks ? "Passed" : "Failed" }
end

marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60,}
puts group_by_marks(marks, 30)
# -----------------
def serial_average(string)
  # SSS-XX.XX-YY.YY
  fix = string[0, 3]
  first = string[4, 5].to_f
  second = string[10, 5].to_f
  average = (first + second) / 2
  result = "#{fix}-#{average.round(2)}"
end
puts serial_average('001-12.43-56.78')
# -----------------
def count_multibyte_char(sir)
  count = 0
  sir.each_char { |x| count += 1 if x.bytesize > 1 }
  count
end

puts count_multibyte_char('¥1000')

# --------------------
def process_text(text)
  text.map {|s| s.strip}.join(' ')
end
puts process_text(["Hi, \n", " Are you having fun?    "])
# ["  Ancient rocks \n", "\n from Canada tell something.   \n"]
