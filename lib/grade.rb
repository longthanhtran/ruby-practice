def gradingStudents(grades) 
    grades.map do |grade|
      grade < 38 ? grade : round(grade)
    end
end

def round(n)
  remain = n%10
  return (n/10)*10+10 if remain > 7 and remain < 10
  return (n/10)*10+5 if remain >= 3 and remain < 5
  return n if remain == 5 or remain == 0 or (remain <= 3 or remain <= 7)
end