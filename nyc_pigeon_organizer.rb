def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data[:gender].each do |gender, names|
    names.each do |name|
      pigeon_list[name] = {}
    end
  end
  binding.pry
end

nyc_pigeon_organizer