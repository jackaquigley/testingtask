### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

  #inconsisent function naming
  def checkforAce(card)
    # should be == instead of =
    if card.value = 1
      return true
    else
      return false
    end
  end

 #keyword def mispelled as def, no comma between arguments in function
  dif highest_card(card1 card2)
  if card1.value > card2.value
    # card is not an argument
    return card
  else
    return card2
  end
end
#class ends here, should include the function below as a method
end

def self.cards_total(cards)
  #total should be instantiated as a integer
  total
  for card in cards
    total += card.value
    #no ${} for string interpolation
    return "You have a total of" + total
  end
end
```
