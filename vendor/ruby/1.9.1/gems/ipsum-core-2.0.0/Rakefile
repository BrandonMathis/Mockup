require 'bundler'
Bundler::GemHelper.install_tasks

desc "Build dictionary"
task :dictionary do
  require 'ipsum'
  dictionary = {}
  File.readlines( './dictionaries/latin.txt' ).each do |word|
    letters = word.split('')
    sequence = ''
    letter_index = 0
    until letters.empty?
      dictionary[ sequence ] ||= {}
      dictionary[ sequence ][ letter_index ] ||= {}
      dictionary[ sequence ][ letter_index ][ letters.first ] ||= 0
      dictionary[ sequence ][ letter_index ][ letters.first ] += 1
      sequence += letters.shift
      sequence = sequence[1..-1] while sequence.size > Ipsum::SEQUENCE_SIZE
      letter_index += 1
    end
  end
  dictionary[ '' ][0].delete( "\n" )
  p dictionary
end
