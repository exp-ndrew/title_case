def title_case (title)
  word_list = title.split

  word_list.each do |word|
    unless ['and', 'but', 'for', 'nor', 'or', 'so',
            'yet', 'the', 'a', 'an', 'in'].include?(word)
      word.capitalize!
    end
  end

  word_list[0].capitalize!
  word_list[-1].capitalize!

  word_list.join ' '
end


