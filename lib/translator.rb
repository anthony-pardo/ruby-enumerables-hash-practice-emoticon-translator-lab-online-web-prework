# require modules here
require "yaml"
def load_library(file_path)
  emotes = YAML.load_file(file_path)
  hash = { :get_meaning=>{},
    :get_emoticon=>{}
  }
  emotes.each do |key, value|
    i = 0 
    while i < value.length do
      hash[:get_meaning][value[i]] = key if i == 1 
      hash[:get_emoticon][value[i]] = value[i+1] if i == 0 
      i += 1 
    end
  end
  hash
end

def get_japanese_emoticon(file_path, emoticon)
  hash = load_library(file_path)
  if !hash[:get_emoticon][emoticon]
    return "Sorry, not a known emoticon"
  end
  return hash[:get_emoticon][emoticon]
end

def get_english_meaning
  # code goes here
end
