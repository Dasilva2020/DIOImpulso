# public    -  Podem ser acessados por qualquer método em qualquer objeto
# private   -  Só podem ser chamados dentro de sua própria instância. Não é possível acessar
#              Métodos privados de outras instâncias.
# protected -  Podem ser chamados por qiaçqier instância de for da mesma Classe/SuperClasse

class MinhaClasse
    def m1
        puts "Método 1"
        m2
        m3
    end

    private 

    def m2
        puts "Método 2"
    end

    def m3
        puts "Método 3 privado"
    end

    protected

    def m5
        puts "Método 5"
    end
end

class MinhaSubClasse < MinhaClasse
    def m4
        m3
        outro_obj = MinhaSubClasse.new
        puts "Método 4"
        outro_obj.m5
    end
end
## a partir daqui, é um outro contexto

obj = MinhaSubClasse.new
obj.m4
#obj.m2
#obj.m3