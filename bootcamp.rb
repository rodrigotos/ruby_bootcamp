require "./instructor"

instructor1 = Instructor.new({first_name: "Jorge",
  nickname: "jdk",
  strength: "RoR"})
puts instructor1
puts "#{instructor1.first_name} #{instructor1.last_name} #{instructor1.nickname} #{instructor1.claim_your_strength}"
instructor2 = Instructor.new({first_name: "Diego",
  nickname:"wepaa",
  strength: "HTML, JS, CSS"})
puts "#{instructor2.first_name} #{instructor2.last_name} #{instructor2.nickname} #{instructor1.claim_your_strength}"
