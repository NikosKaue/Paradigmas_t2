--Exercícios Práticos: Programação funcional com Haskell
--Nome: Nikollas Kauê Soares Gomes
--Matrícula: 201020867

-- Parte 1: List comprehension

--1) Escreva uma função geraPotencias :: Int -> [Int], que gere uma lista com as potências de 2, com expoente de n até 0, onde n é o argumento para a função. 
--Use a sintaxe de list comprehension.

geraPotencias :: Int -> [Int]
geraPotencias 0 = [1]
geraPotencias n = [2^x | x <- [n,n-1..0]]


--2) Escreva uma função addSuffix :: String -> [String] -> [String] usando list comprehension, para adicionar um sufixo às strings contidas numa lista.

addSuffixufixo :: String -> [String] -> [String]
addSuffix x y = [(y++x) | y <- y] 

--3) Escreva uma função anosDeNascimento :: [Int] -> [Int] que receba uma lista de idades, selecione as que são maiores que 20 e, para cada uma das selecionadas, calcule o ano de nascimento correspondente (aproximado). Use a sintaxe de list comprehension.

anosDeNascimento :: [Int] -> [Int]
anosDeNascimento [] = [] 
anosDeNascimento i = [(2015-x) | x <- i, x>20]