require './mapping.rb'

puts 'Input letters phrase in lower case: '
phrase = gets
result = []
phrase[0..-2].each_char do |char|
  result.push(Mapping::LETTERS_TO_BRAILLE_MAP[char])
end

rows = Array.new(3, '')

def collect_chars(array)
  array.map { |x| x == 0 ? ' ' : Mapping::DOT }.push('  ').join
end

result.each do |el|
  rows[0] += collect_chars(el[0..1])
  rows[1] += collect_chars(el[2..3])
  rows[2] += collect_chars(el[4..5])
end

rows.each { |row| puts(row) }
