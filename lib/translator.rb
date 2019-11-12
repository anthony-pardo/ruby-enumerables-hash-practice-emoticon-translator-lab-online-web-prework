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
      hash[:get_emoticon][value[i]] = key if i == 0 
    end
  end
  pp emotes
  hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library('./emoticons.yml')