# Repositório de Inteligência Artificial

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

