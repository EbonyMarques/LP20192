class Veiculo():
    def __init__(self, tipo):
        self.__tipo = None
        self.__qtde_rodas = None
        
        self.set_tipo(tipo)

    def get_qtde_rodas(self):
        return self.__qtde_rodas

    def set_qtde_rodas(self, qtde_rodas):
        self.__qtde_rodas = qtde_rodas

    def get_tipo(self):
        return self.__tipo

    def set_tipo(self, tipo):
        self.__tipo = tipo

        if self.get_tipo() == "carro":
            self.set_qtde_rodas(4)

        elif self.get_tipo() == "moto":
            self.set_qtde_rodas(2)

    def imprime(self):
        print("Este veículo, " + self.get_tipo() + ", possui " + str(self.get_qtde_rodas()) + " rodas!")
    

carro = Veiculo("carro")
carro.imprime()

moto = Veiculo("moto")
moto.imprime()
