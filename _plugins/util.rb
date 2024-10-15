
module UtilityFilters
  def ordinalize(number)
    abs_number = number.to_i.abs

    if (11..13).include?(abs_number % 100)
      number + "th"
    else
      case abs_number % 10
        when 1; number + "st"
        when 2; number + "nd"
        when 3; number + "rd"
        else    number + "th"
      end
    end
  end
end

Liquid::Template.register_filter(UtilityFilters)
