Perro = [13,  "Puppy",  "12/12/2012", "Macho", "123"]
print (Perro)
for x in range (len(Perro)):
    if Perro[x] == "12/12/2012":
       Perro[x] = "13/12/2012"
      
print (Perro)

for x in range(len(Perro)):
    if Perro[x] == "123":
       Perro[x] = "28957346"    
print (Perro)
