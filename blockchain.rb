require_relative("./valuebtc")
require_relative("./btcname")

#nom de value btc = value 
#nom de name = name
Value.map! {|valeur| valeur.to_f}
myhash = Hash[Name.zip(Value)]

#Crypto la plus grande
def max_value (myhash)
    puts "La crypto qui a la plus grande valeur est #{myhash.max_by{|nom,prix|prix}}"
end
# max_value(myhash)


# #Crypto la plus petite
def min_value (myhash)
    puts "La crypto qui a la plus petite valeur est #{myhash.min_by{|nom,prix|prix}}"
end
# min_value(myhash)

# Liste des crypto au dessus de 6000 $
def oversix (myhash)
    newhash =  myhash.select{|key,valeur| valeur < 6000}
    puts "Il y a #{newhash.length} de crypto inferieur a 6000"
    return newhash
end
# oversix(myhash)

#Crypto la plus grande dans l'intervalle des crypto en dessous de 6000

def maxsix (myhash)
    newhash =  myhash.select{|key,valeur| valeur < 6000}
    puts "La crypto qui vaut le plus cher et qui vaut moins de 6000 $ est #{newhash.max_by{|nom,prix|prix}}"

end

# maxsix(myhash)


def choice (myhash)
    puts "Choisissez ce que vous voulez faire :"
    puts "La Crypto qui vaut le plus cher : 1"
    puts "La Crypto qui vaut le moins cher : 2"
    puts "Le nombre de crypto inferieur à 6000$ : 3"
    puts "La crypto la plus cher dans l'interval 0-6000$ : 4"
    puts ">"
    choix = gets.chomp.to_i
    case choix
    when 1
        max_value(myhash)
    when 2 
        min_value(myhash)
    when 3
        oversix(myhash)
    when 4
        maxsix(myhash)
    end
end

choice(myhash)