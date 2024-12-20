package model;

public class Cliente {
	private String nome;
	private String cpf;
	private String senha;
	private String email;
	private int id;
	private String dataNasc;
	
	
	public Cliente() {
		
	}

	public Cliente(String nome, String cpf, String email, String senha) {
		super();
		this.nome = nome;
		this.cpf = cpf;
		this.senha = senha;
		this.email = email;
	}

	public Cliente(String cpf, String nome) {
		this.cpf = cpf;
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getDataNasc() {
		return dataNasc;
	}

	public void setDataNasc(String dataNasc) {
		this.dataNasc = dataNasc;
	}


		
}
