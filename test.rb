wine = ["Caviar", 5, "Poulpe", "ether"]
cheese = [1, 2, 3, 4]
combined_hash = Hash[wine.zip(cheese)]
p combined_hash.values.select{|nom| nom == 4}