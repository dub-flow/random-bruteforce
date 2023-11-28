require 'time'

# Seed the random number generator with the current time
seed = Time.now.to_i
random_generator = Random.new(seed)

# Generate "secret" random number and write it to "secrets.txt"
secret_number = random_generator.rand
File.write('secret.txt', secret_number.to_s)

puts "Number generated and stored."
