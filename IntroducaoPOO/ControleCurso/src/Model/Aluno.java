package Model;

public class Aluno extends Pessoa {
    //atributos (encapsulamento)
    private String matricula;
    private double nota;
    //Métodos
    // construtor (para criar o objeto da classe, o construtor sempre terá o mesmo nome da classe )
    public Aluno(String nome, String cpf, String matricula, double nota) {
        super(nome, cpf);
        this.matricula = matricula;
        this.nota = nota;
    }
  //getters and setters
    public String getMatricula() {
        return matricula;
    }
    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }
    public double getNota() {
        return nota;
    }
    public void setNota(double nota) {
        this.nota = nota;
    }
    //ExibirInformações
    @Override
  public void exibirInformacoes(){ 
    super.exibirInformacoes();
    System.out.println("Matricula: "+matricula);
    System.out.println("Nota: "+nota);

  }
}
