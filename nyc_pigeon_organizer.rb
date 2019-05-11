require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data[:gender].each do |gender, names|
    names.each do |name|
      pigeon_list[name] = {}
    end
  end
  data.each do |category, attribute_list|
    attribute_list.each do |attribute, names|
      names.each do |name|
        binding.pry
        pigeon_list[name].key?(category) ? pigeon_list[name][category] << attribute
      end
    end
  end
end

nyc_pigeon_organizer(pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
})