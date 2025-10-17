class Personagem:
  
  def __init__(self, vida: int, resist: int):
    
      self._vida = vida
      self._resist = resist

  def getVida(self):
    
      return self._vida

  def setVida(self, vida):
    
      self._vida = vida

  def __str__(self):
    
      return f"Personagem com {self._vida} de vida e {self._resist} de resistência"

class Cavaleiro(Personagem):
  
  def __init__(self, vida: int, resist: int, armadura_pesada: bool):
    
      super().__init__(vida, resist)
      self.armadura_pesada = armadura_pesada

  def __str__(self):
    
      return (f"Cavaleiro com {self._vida} de vida, {self._resist} de resistência e armadura pesada: {self.armadura_pesada}")


if  __name__ == "__main__":
  
    p = Personagem(100, 50)
    print(p)
    p.setVida(120)
    print(p)

    c = Cavaleiro(120, 70, True)
    print(c)
    c.setVida(150)
    print(c)
