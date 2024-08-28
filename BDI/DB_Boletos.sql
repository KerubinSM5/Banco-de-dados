Drop table TB_boletos;
#1
create database DB_Boletos;
use DB_Boletos;

#2
create table TB_Boletos(
	idt_boleto int primary key auto_increment,
	codigo_barras char(44) not null,
    valor decimal(7,2) not null,
    data_venc datetime not null,
    data_pag datetime not null);
    
#3
insert into TB_Boletos values
	(default, 65132168513, '550', '2024-08-25', '2024-08-25'),
    (default, 65955654542, '889.23', '2024-04-26', '2024-04-23'),
    (default, 65233212315, '995.66', '2024-10-08', '2024-10-09'),
    (default, 65513215465, '54623.69', '2024-12-09', '2025-01-02'),
    (default, 65231354651, '1254.54', '2024-08-26','2024-08-12');
    
#4
Select * from TB_boletos where datediff(data_venc, data_pag) < 0;
    
#5
select codigo_barras,
	Date_format(data_venc, '%d/%m/%Y') as vencimemto,
	Date_format(data_pag, '%d/%m/%Y') as pagamento,
    timestampdiff(day, data_pag, data_venc) as em_dia
    FROM TB_boletos;