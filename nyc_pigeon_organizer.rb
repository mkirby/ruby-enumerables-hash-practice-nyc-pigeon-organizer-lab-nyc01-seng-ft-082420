pigeon_data = {
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
}


def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |key, value|
#    p key #=> :color, :gender, :lives
    data[key].each do |inner_key, inner_value|
#      p inner_key
      data[key][inner_key].each do |pigeon_name|
        p pigeon_list[pigeon_name][key] = inner_key.to_s
      end
      
    end
  end
  p pigeon_list
end

nyc_pigeon_organizer(pigeon_data)