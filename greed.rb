def score(dice)
  score = 0
  score_counted = []
  dice.each do |roll|
    count = dice.count(roll)
    if roll == 1 && !score_counted.include?(roll)
      score += (1000 * (count/3))
      score += (count % 3) * 100
    elsif roll == 5 && !score_counted.include?(roll)
      score += (500 * (count/3))
      score += (count % 3) * 50
    elsif !score_counted.include?(roll)
      score += (100 * roll) if count/3 > 0
    end
    score_counted << roll
  end
  score
end