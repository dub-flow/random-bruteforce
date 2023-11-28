require 'time'

def brute_force_secret(secret_number)
    # Go back 10 seconds and use all numbers from 10 sec ago till now as seeds
    (Time.now.to_i - 10).upto(Time.now.to_i) do |seed|
        random_generator = Random.new(seed)

        # Check if the generated number matches the secret number
        if random_generator.rand == secret_number
            return true
        end
    end

    return false
end

secret = File.read('secret.txt').to_f

found = brute_force_secret(secret)

if found
    puts "Successfully brute-forced the secret number: #{secret}"
else
    puts "Failed to brute-force the secret number."
end
