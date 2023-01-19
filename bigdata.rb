require_relative("./liste.rb")
#Combien il y a de handle dans le tableau
def combien
    puts "Il  y a #{list.length} @ dans le tableau"
end
# combien

#quel est le handle le plus court du tableau

def small 
  puts "le handle le plus court est #{list.min_by { |i| i.length}}"
end
# small

#Combien de handle a 5 caractères
def count
    puts "#{list.count {|blase|blase.length == 6}} handles font 5 caractères de long"
end
# count

#Combien commencent pas une majuscule
def maj
    n=0
    list.map {|blase| if blase.match(/[@][A-Z]/) then n +=1 end}
    puts "#{n} handle commencent par une majuscule"
end
# maj

#Tirer la liste par ordre alphabétique
def alpha
    puts list.sort_by{|blase| blase[1]}   
end
# alpha

#Trier par taille 
def size
    puts list.sort_by {|blase| blase.length}
end
# size

#Position de epenser dans la liste
def position 
    puts "#{list.index("@epenser")+1} est la position de @epenser"
end

#Répartition des handle
def play
    a = 0 
    while a < (list.max_by {|blase| blase.length}.length)+1 do
        n = list.count {|blase|blase.length == a}
        if n > 0
        puts "il y a #{n} handle avec #{a} charactères"
        a+=1
        else
        a+=1
        end
    end
end


def choice
    puts "Choisissez ce que vous voulez faire :"
    puts "Pour savoir combien de handle dans l'array tapez : 1"
    puts "Pour savoir quel est le handle le plus court tapez : 2"
    puts "Pour savoir combien de handle ont 5 caractères tapez : 3"
    puts "Pour savoir combien de handle commencent par une majuscule tapez : 4"
    puts "Pour tirer la liste par ordre alphabétique tapez : 5"
    puts "Pour trier les handles par taille tapez : 6"
    puts "Pour savoir la position de @epenser tapez : 7"
    puts "Pour avoir une répartition des handles tapez : 8"
    puts ">"
    choix = gets.chomp.to_i
    case choix
    when 1
        combien
    when 2 
        small
    when 3
        count
    when 4
         maj
    when 5
        alpha
    when 6
        size
    when 7
        position
    when 8 
        play
    else
        puts "Vous n'avez pas tapé le bon chiffre"
    end


end

choice