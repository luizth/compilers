/*
    Specification for simple utilization of JFlex.

    Defines a form and look for the following information on input file:
    1. CPF
    2. CNPJ
    3. Birth date
    4. Salary
    5. Car Plate (Old and New format)
*/

%%

%public
%class Form
%standalone

%unicode

%{
  String cpf;
  String cnpj;
  String nascimento;
  String salario;
  String placa_carro;
%}

%%

"CPF " ([0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2})  {
    cpf = yytext().substring(4).trim();
    System.out.println(cpf + " é um CPF válido!");
}

"CNPJ " ([0-9]{2}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}-[0-9]{2})  {
    cnpj = yytext().substring(5).trim();
    System.out.println(cnpj + " é um CNPJ válido!");
}

"NASCIMENTO " ([0-9]{2}\/[0-9]{2}\/[0-9]{4})  {
    nascimento = yytext().substring(11).trim();
    System.out.println(nascimento + " é uma data de nascimento válida!");
}

"SALARIO " ([R]?[$][0-9]+\.[0-9]{2})  {
    salario = yytext().substring(8).trim();
    System.out.println(salario + " é um salário válido!");
}

"PLACA " ([A-Z]{3}[0-9]{4}|[A-Z]{3}[0-9]{1}[A-Z]{1}[0-9]{2})  {
    placa_carro = yytext().substring(6).trim();
    System.out.println(placa_carro + " é uma placa válida!");
}
