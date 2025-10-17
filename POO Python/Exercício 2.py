from abc import ABC, abstractmethod

class Heroi(ABC):
  
    def __init__(self, nome : str):
        self.nome = nome
        
    @abstractmethod
    def usar_ultimate(self):
        pass
class Tanque(Heroi):
  
    def __init__(self, nome : str):
        super().__init__(nome)

    def usar_ultimate(self):
      
        print(f"{self.nome} usou a ult do Tanque")
class Dano(Heroi):
  
    def __init__(self, nome : str):
        super().__init__(nome)

    def usar_ultimate(self):
        print(f"{self.nome} usou a ult do Dano")

if  __name__ == "__main__":
    herois = [Tanque("Rendrik"), Dano("Ichigo"), Tanque("Aizen"), Dano("Sasaki")]

    for heroi in herois:
        heroi.usar_ult()
