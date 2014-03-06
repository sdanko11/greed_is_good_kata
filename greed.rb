def score(dice)
  score = 0
  unique_dice = dice.uniq
  unique_dice.each do |roll|
    count = dice.count(roll)
    if roll == 1
      score += (1000 * (count/3))
      score += (count % 3) * 100
    elsif roll == 5
      score += (500 * (count/3))
      score += (count % 3) * 50
    else
      score += (100 * roll) if (count/3) > 0
    end
  end
  score
end