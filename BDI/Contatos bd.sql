USE bd_agenda;

Create table Contatos(
numero INT PRIMARY KEY auto_increment,
nome_contato varchar(50),
telefone_contato varchar(20),
email_contato varchar(50)
);

select * FROM Contatos;

INSERT into Contatos(nome_contato, telefone_contato, email_contato)
	Values('Kelvin', '94988073731', 'kelvin.martins@sempreceub.com');
    
INSERT into Contatos(nome_contato, telefone_contato, email_contato)
	Values('Claudia', '94988073394', 'Claudia.martins@sempreceub.com');
    
INSERT into Contatos(nome_contato, telefone_contato, email_contato)
	Values('Joyce', '94988078197', 'Joyce.martins@sempreceub.com');
    
Select * from Contatos order by email_contato ASC;

update Contatos set email_contato = 'Kelvin.martins5@sempreceub.com' where numero = 1;

delete from Contatos where numero = 2;