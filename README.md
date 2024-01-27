# Artificial Intelligence Repository 🇺🇲

Welcome to my repository dedicated to codes and projects related to artificial intelligence. Here, you will find implementations in various areas, covering fundamental concepts to practical applications. Feel free to explore different topics and experiment with the codes.

## Covered Topics

### Neural Networks

This directory contains implementations of neural networks.

#### Multilayer Perceptron (MLP)

The **Multilayer Perceptron** is a type of artificial neural network with at least three layers of nodes: an input layer, one or more hidden layers, and an output layer. This algorithm is a significant milestone in the field of neural networks, providing the ability to learn and represent complex relationships in data.

**Key Features:**

- **Layered Architecture:** MLP organizes neurons into layers, allowing the transformation of input data through multiple processing steps.
  
- **Supervised Learning:** It is typically trained using supervised methods, where the network is adjusted based on labeled examples.

- **Activation Functions:** Each node in a layer uses non-linear activation functions to introduce essential non-linearities for representing complex patterns.

- **Backpropagation:** The algorithm uses backpropagation to adjust the weights of the network, minimizing the error between predictions and actual labels.

**Practical Applications:**

- **Pattern Recognition:** MLP is widely used in tasks such as pattern recognition in images, voice, and text.

- **Prediction and Regression:** It can be applied to time series forecasting and regression problems.

- **Classification:** It is effective in classifying data into distinct categories.

### Neuro-Fuzzy

We present implementations that combine concepts of neural networks and fuzzy logic for modeling and controlling complex systems. Understand how these approaches can be integrated to improve adaptability and interpretability.

### Fuzzy

In this directory, you will find codes related to fuzzy logic. Explore the application of fuzzy sets and rules for handling uncertainties and decision-making in different contexts. 

For now, there are codes for water tank volume control and electrical current control for water heating.

### Regression and Classification

With algorithms dedicated to regression and classification, this directory covers techniques for data prediction and categorization. This is the only topic that utilizes pre-existing algorithms from Python language libraries.

### Greedy Search

Here, you will find implementations of greedy search algorithms, an efficient approach to solving optimization problems.

For now, there is only one implementation with greedy search for the missionaries and cannibals problem.

### Clustering Algorithms

Dedicated to clustering techniques, this directory covers algorithms that organize unlabeled data into meaningful groups. Experiment with different methods and evaluate their effectiveness on various datasets.

For now, only the C-means method has been used.

#### C-Means Clustering Algorithm

The C-Means clustering algorithm, also known as fuzzy k-means, is a clustering technique that aims to partition a dataset into groups or clusters, allowing members of the same cluster to share similar characteristics. Unlike traditional k-means, C-Means assigns each data point a probability of belonging to each cluster.

##### Key Steps:

1. **Initialization:** Define the desired number of clusters (k) and assign random initial centers to each cluster.

2. **Membership Assignment:** Calculate the probability of each data point belonging to each cluster based on the Euclidean distance between the point and the cluster centers.

3. **Centers Update:** Update the cluster centers weighted by the probability values calculated in the previous step.

4. **Iteration:** Repeat steps 2 and 3 until the membership assignment to clusters does not change significantly.

##### Applications:

- Pattern Analysis
- Pattern Recognition
- Image Segmentation

C-Means is effective in handling data that may belong to more than one cluster simultaneously, providing a more granular view of relationships between data points. However, the proper choice of the number of clusters (k) and sensitivity to initial center values can affect clustering results.

### Reactive Models

Explore implementations of reactive models, which are fundamental for systems based on emergent behavior. Understand how these models can simulate complex and adaptive behaviors.

### Prolog Chatbot

This directory contains a chatbot implemented in the Prolog language. Discover how declarative programming logic can be applied to create conversational agents.

---------------------------------------------------


# Repositório de Inteligência Artificial 🇧🇷

Bem-vindo ao meu repositório dedicado a códigos e projetos relacionados à inteligência artificial. Aqui, você encontrará implementações em diversas áreas, abordando desde conceitos fundamentais até aplicações práticas. Fique à vontade para explorar os diferentes tópicos e experimentar com os códigos.

## Tópicos Abordados

### Redes Neurais
Este diretório contém implementações de redes neurais.

#### Multilayer Perceptron (MLP)

O **Multilayer Perceptron** é um tipo de rede neural artificial com pelo menos três camadas de nós: uma camada de entrada, uma ou mais camadas ocultas e uma camada de saída. Este algoritmo é um marco importante no campo das redes neurais, proporcionando a capacidade de aprender e representar relações complexas nos dados.

**Principais Características:**

- **Arquitetura em Camadas:** O MLP organiza os neurônios em camadas, permitindo a transformação de dados de entrada através de múltiplas etapas de processamento.
  
- **Aprendizado Supervisionado:** Geralmente é treinado usando métodos supervisionados, onde a rede é ajustada com base em exemplos rotulados.

- **Funções de Ativação:** Cada nó em uma camada utiliza funções de ativação não-lineares para introduzir não-linearidades essenciais para a representação de padrões complexos.

- **Backpropagation:** O algoritmo utiliza o método de retropropagação (backpropagation) para ajustar os pesos da rede, minimizando o erro entre as previsões e os rótulos reais.

**Aplicações Práticas:**

- **Reconhecimento de Padrões:** MLP é amplamente utilizado em tarefas como reconhecimento de padrões em imagens, voz e texto.
  
- **Previsão e Regressão:** Pode ser aplicado para previsão de séries temporais e problemas de regressão.

- **Classificação:** É eficaz na classificação de dados em categorias distintas.

### Neuro-Fuzzy
Apresentamos implementações que combinam conceitos de redes neurais e lógica fuzzy para modelagem e controle de sistemas complexos. Entenda como essas abordagens podem ser integradas para melhorar a adaptabilidade e interpretabilidade.

### Fuzzy
Neste diretório, você encontrará códigos relacionados à lógica fuzzy. Explore a aplicação de conjuntos fuzzy e regras fuzzy para lidar com incertezas e tomada de decisões em diferentes contextos. 

Por hora, existem códigos para controle do volume de água em um tanque e da corrente elétrica passada para o aquecimento hídrico.

### Regressão e Classificação

Com algoritmos dedicados à regressão e classificação, este diretório abrange técnicas para previsão e categorização de dados. Este é o único tópico que utiliza algoritmos já prontos de bibliotecas da linguagem Python.

### Busca Gulosa
Aqui, você encontrará implementações de algoritmos de busca gulosa, uma abordagem eficiente para resolver problemas de otimização. 

Por hora, existe apenas uma implementação com busca gulosa, que é para o problema dos missionários e dos canibais.

### Algoritmos de Agrupamento (Clustering)

Dedicado a técnicas de agrupamento, este diretório aborda algoritmos que organizam dados não rotulados em grupos significativos. Experimente diferentes métodos e avalie sua eficácia em conjuntos de dados variados.

Por hora, apenas o método C-means foi usado.

#### Algoritmo de Clustering C-Means

O algoritmo de clustering C-Means, também conhecido como k-means fuzzy, é uma técnica de agrupamento que visa particionar um conjunto de dados em grupos ou clusters, permitindo que os membros de um mesmo cluster compartilhem características semelhantes. Diferentemente do k-means tradicional, o C-Means atribui a cada ponto de dados uma probabilidade de pertencer a cada cluster.

###### Passos Principais:

1. **Inicialização:** Definir o número desejado de clusters (k) e atribuir centros iniciais aleatórios para cada cluster.

2. **Atribuição de Membros:** Calcular a probabilidade de pertencimento de cada ponto a cada cluster com base na distância euclidiana entre o ponto e os centros dos clusters.

3. **Atualização dos Centros:** Atualizar os centros dos clusters ponderados pelos valores de probabilidade calculados na etapa anterior.

4. **Iteração:** Repetir os passos 2 e 3 até que a atribuição de membros aos clusters não mude significativamente.

###### Aplicações:

- Análise de Padrões
- Reconhecimento de Padrões
- Segmentação de Imagens

O C-Means é eficaz para lidar com dados que podem pertencer a mais de um cluster simultaneamente, proporcionando uma visão mais granular das relações entre os pontos de dados. No entanto, a escolha adequada do número de clusters (k) e a sensibilidade aos valores iniciais dos centros podem afetar os resultados do clustering.

### Modelos Reativos
Explore implementações de modelos reativos, que são fundamentais para sistemas baseados em comportamento emergente. Entenda como esses modelos podem simular comportamentos complexos e adaptativos.

### Chatbot em Prolog
Este diretório contém um Chatbot implementado na linguagem Prolog. Descubra como a lógica de programação declarativa pode ser aplicada na criação de agentes conversacionais.

