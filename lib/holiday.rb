def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |key, value|
        value << supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |key, value|
        value << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |key, value|
    if key == season
      value[holiday_name] = supply_array
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
answer = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.values.each do |supply|
      answer << supply
      end
      answer = answer[0] + answer[1]
    end
  end
answer
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season, holiday|
  puts season.to_s.capitalize + ":"
  holiday.each do |key ,value|
    puts "  " + key.to_s.split('_').map(&:capitalize).join(' ') + ": " + value.join(", ")
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  answer = []
  holiday_hash.each do |season, holiday|
    holiday.each do |day, supply|
      if supply.include?("BBQ")
      answer << day
      end
    end
  end
  answer
end

  # holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }