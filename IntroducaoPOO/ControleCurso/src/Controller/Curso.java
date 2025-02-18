package Controller;

import java.util.ArrayList;
import java.util.List;

import Model.Aluno;
import Model.Professores;

public class Curso {
    //atributos 
    private String nomeCurso;
    private Professores professores;
    private List<Aluno> alunos ;
    //construtor
    public Curso(String nomeCurso, Professores professores) {
        this.nomeCurso = nomeCurso;
        this.professores = professores;
        alunos = new ArrayList<>();
    }   
    //métodos
    //adicionaralunos
    public void adicionaralunos(Aluno Aluno){
        alunos.add(Aluno); 

    }
    //exibir informaçõesCurso
    public void exibirInformacoesCurso(){ 
        System.out.println("Nome do Curso: "+nomeCurso);
        System.out.println("Nome Professor: "+professores.getNome());
    
        //foreach
        int contador = 0;
        System.out.println("xxxxxxxxxxxxxxxxxxx");
     for (Aluno Aluno : alunos) { contador++;
        System.out.println("contador: "+Aluno.getNome());    
     }
     System.out.println("xxxxxxxxxxxxxxxxxxx");
    }
}

//modelagem de software = arquitetura de software
