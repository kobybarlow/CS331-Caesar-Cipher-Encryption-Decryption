# Caesar Cipher Encryption 


def caesar_cipher (message, key, encrypt=true)
  result = ""

  key = -key unless encrypt

  message.each_char do |char|
    if char.match(/[A-Za-z]/)
      base = char.match?(/[A-Z]/) ? 'A'.ord : 'a'.ord
      shifted = (char.ord - base + key) % 26
      result += (base + shifted).chr
    else
      result += char
    end
  end

  result
end

puts "Enter a message: "
message = gets.chomp

puts "Enter a key: "
key = gets.chomp.to_i

encrypted = caesar_cipher(message, key, true)
decrypted = caesar_cipher(message, key, false)

puts "Encrypted: #{encrypted}"
puts "Decrypted: #{decrypted}"

