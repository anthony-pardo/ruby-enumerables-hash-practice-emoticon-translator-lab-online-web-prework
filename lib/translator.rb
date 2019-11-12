# require modules here
require "yaml"
def load_library(file_path)
  emotes = YAML.load_file(file_path)
  pp emotes
  emotes
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library(emoticons.yml)