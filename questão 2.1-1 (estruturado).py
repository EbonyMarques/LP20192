def informa_qtde_rodas(tipo):
    if tipo == "carro":
        qtde_rodas = 4

    elif tipo == "moto":
        qtde_rodas = 2

    print("Este veículo, chamado " + tipo + ", possui " + str(qtde_rodas) + " rodas!")

informa_qtde_rodas("carro")
informa_qtde_rodas("moto")
