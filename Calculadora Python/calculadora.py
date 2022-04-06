# Calculadora em Python

print("\n************ Python Calculator ************")

def some(x, y):
    return x + y

def subtraia(x, y):
    return x - y

def multiplique(x, y):
    return x * y

def divide(x, y):
    return x / y

print("\nSelecione o número da operação desejada: \n")
print("1 - Soma")
print("2 - Subtração")
print("3 - Multiplicação")
print("4 - Divisão")

escolha = input("\nDigite a opção (1/2/3/4): ")

num1 = int(input("\nDigite o primeiro número: "))
num2 = int(input("nDigite o segundo número: "))

if escolha == '1':
    print("\n")
    print(num1, "+", num2, "=", some(num1,num2))
    print("\n")

elif escolha == '2':
    print("\n")
    print(num1, "-", num2, "=", subtraia(num1,num2))
    print("\n")

elif escolha == '3':
    print("\n")
    print(num1, "*", num2, "=", multiplique(num1,num2))
    print("\n")

elif escolha == '4':
    print("\n")
    print(num1, "/", num2, "=", divide(num1,num2))
    print("\n")

else: 
    print("\nOpção Inválida!")