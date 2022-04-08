#parametro de desempenho: o quanto limpou

import time
    
sujeiraA = 0         #1 ou 0  
sujeiraB = 0         #1 ou 0    
pos = 'B'            #A ou B
cont = 0

sujeiraA = int(input("Digite a sujeira na posição A"))
sujeiraB = int(input("Digite a sujeira na posição B"))
pos = str(input("Digite a posição inicial"))

def tempo():
    time.sleep(10)              #retorna 'fim' depois de 10 segundos
    return 'fim'

def aspira(pos, sujeiraA, sujeiraB, cont):
    fim = ''
    while(True):     
        if(pos == 'A'):
            if(sujeiraA == 1):
                print("Posição A está suja")
                sujeiraA = 0
                cont = cont+1
            pos = 'B'

        if(pos == 'B'):
            if(sujeiraB == 1):
                print("Posição B está suja")
                sujeiraB = 0
                cont = cont+1
            pos = 'A'
        fim = tempo()
        if(fim == "fim"):
            break
            
    if(cont == 2):
        print("Desempenho: limpou 2")
    elif(cont == 1):
        print("Desempenho: limpou 1")
    elif(cont == 0):
        print("Desempenho: limpou 0")
    

aspira(pos, sujeiraA, sujeiraB, cont)

