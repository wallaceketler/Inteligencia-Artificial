#PARTE DO LINK COM O FIREBASE--------------------------------------------------------------------------
import pyrebase

firebaseConfig = {
  "apiKey": "", #retirado por se tratar de chave de API,
  "authDomain": "thermostat-29c96.firebaseapp.com",
  "projectId": "thermostat-29c96",
  "storageBucket": "thermostat-29c96.appspot.com",
  "messagingSenderId": "122924989099",
  "appId": "1:122924989099:web:e4205a5d491aac05ebd5ee",
  "measurementId": "G-87BH15M2S6",
  "databaseURL": "https://thermostat-29c96-default-rtdb.firebaseio.com"
}
firebase = pyrebase.initialize_app(firebaseConfig)
dadosFirebase = firebase.database()
#PARA ATUALIZAR DADOS DO FIREBASE:       dadosFirebase.child().update({"corrente": "0"})
#PARA PUXAR DADOS DO FIREBASE:           requisicao = dadosFirebase.child("item").get() e print(requisicao.val())     

#PARTE DO FUZZY----------------------------------------------------------------------------------------
#importação de bibliotecas
import matplotlib.pyplot as plt
import skfuzzy as fuzz
import numpy as np
import random
import time
import math

#declaração de função triangular
def triangular(x,a,m,b):
    return max(min((x-a)/(m-a),(b-x)/(b-m)),0)


#criação do antecedente (erro)
x_erro = np.linspace(-50,50,100)

erro_ng =   []
erro_np =   []
erro_pp   = []
erro_pg   = []

for i in range(100):
  erro_ng.append(triangular(x_erro[i],-60,-50,-40))
  erro_np.append(triangular(x_erro[i],-45, -25, 0))
  erro_pp.append(triangular(x_erro[i],0, 25, 45))
  erro_pg.append(triangular(x_erro[i],40, 50, 60))

plt.plot(x_erro,erro_ng)
plt.plot(x_erro,erro_np)
plt.plot(x_erro,erro_pp)
plt.plot(x_erro,erro_pg)

#criação do consequetne (variação da corrente)
x_corrente = np.linspace(-2,2,100)

diminuir_muito =  []
aumentar_pouco  =  []
aumentar_muito  =  []

for i in range(100):
  diminuir_muito.append(triangular(x_corrente[i],-4,-2,0))
  aumentar_pouco.append(triangular(x_corrente[i],-2,2,4))
  aumentar_muito.append(triangular(x_corrente[i],1,2,4))

#declaração do limiar desejado
limiar = 35

temperatura_ambiente = 27
coeficiente_transferencia_termica = 0.0007
temperatura_atual = temperatura_ambiente  #inicialmente ambiente
corrente = 0                              #inicialmente nula
corrente_anterior = 0                     #salva a anterior pra saber se diminuiu ou não
ajustes = 0                               #quantidade de ajustes
resistencia = 5                       #resistencia fixa em 100 Ohms inicialmente
valoresAjustes = []
numero_de_ajustes = 100

while(ajustes<numero_de_ajustes):
  ajustes += 1
  if(corrente > 0):
    temperatura_atual += ((corrente**2)*resistencia*30)/1000*1 
  else:
    temperatura_atual = temperatura_ambiente + ((temperatura_atual - temperatura_ambiente)*2.71**(-(coeficiente_transferencia_termica*30)))
  erro_real = temperatura_atual - limiar
  erro = erro_real + 50

  agregacao = []
  c2 = []
  c3 = []
  c4 = []
  c5 = []

  for i in range(100):
    c2.append(min(erro_np[int(erro)],aumentar_pouco[i]))
    c3.append(min(erro_ng[int(erro)],aumentar_muito[i]))
    c4.append(min(erro_pg[int(erro)],diminuir_muito[i]))
    c5.append(min(erro_pp[int(erro)],diminuir_muito[i]))
    agregacao.append(max(c2[i],c3[i],c4[i],c5[i]))

  saida_defuzzy = fuzz.defuzz(np.array(x_corrente), np.array(agregacao), "centroid")
  print("SAÍDA DEFUZZY: " + str(saida_defuzzy))
  print("CORRENTE ATUAL: " + str(corrente))
  print("ERRO REAL: " + str(erro_real))
  print("ERRO: " + str(erro))
  print("TEMPERATURA ATUAL: " + str(temperatura_atual))  
  print("-----------------------------------")

  #define novo valor de corrente
  if(corrente + saida_defuzzy>2):
    corrente_anterior = corrente
    corrente = 2
  elif(corrente + saida_defuzzy < 0):
    corrente_anterior = corrente
    corrente = 0
  else:
    corrente_anterior = corrente
    corrente = corrente + saida_defuzzy

  valoresAjustes.append(temperatura_atual)