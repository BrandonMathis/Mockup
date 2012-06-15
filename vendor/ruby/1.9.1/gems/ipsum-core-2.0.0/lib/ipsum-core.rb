# -*- encoding: utf-8 -*-
# :main: README.rdoc
# :title: Ipsum Documentation

require 'ipsum-core/version'

class Ipsum # :nodoc: all

  SEQUENCE_SIZE = 3

  @dictionaries = {}

  def self.add_dictionary( language, dictionary )
    @default_language ||= language
    @dictionaries[ language.to_sym ] = dictionary
  end

  def self.default_language
    @default_language ||= :latin
  end

  def self.default_language=( language )
    @default_language = language
  end

  def self.dictionary( language = self.default_language )
    begin
      require "ipsum-#{language}" unless @dictionaries[ language ]
    rescue LoadError
      raise "Unable to find language \"#{language}\". Try: gem install ipsum-#{language}"
    end
    @dictionaries[ language ]
  end

  def self.letter_following( sequence, position, language = self.default_language )
    dict = dictionary( language )
    sequence_statistics = dictionary( language )[ sequence ][ position ]
    if sequence_statistics
      letters = '' 
      sequence_statistics.each_pair do |character,amount|
        letters << character*amount
      end
      letters[rand(letters.size)]
    end
  end

  def self.word( language = self.default_language )
    letter = nil
    word = ''
    until letter == "\n"
      sequence = ''
      SEQUENCE_SIZE.times do |enum|
        sequence << word[-(SEQUENCE_SIZE-enum)] if word[-(SEQUENCE_SIZE-enum)]
      end
      letter = letter_following( sequence, word.size, language )
      word += letter
    end
    word.strip
  end

  def self.sentence( words = rand(5) + 3, language = self.default_language )
    ( [ nil ] * words ).map{|n|self.word( language )}.join(' ').capitalize + '.'
  end

  def self.sentences( amount = rand(5) + 3, language = self.default_language )
    ( [ nil ] * amount ).map{|n|self.sentence( rand(5) + 3, language )}.join(' ')
  end

end

class Fixnum

  # Generate filler text for this amount of sentences. For example:
  #   12.sentences
  #   5.sentences
  def sentences( language = Ipsum.default_language )
    Ipsum.sentences( self, language )
  end

end
