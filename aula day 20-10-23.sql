use bd_vsconnect;

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Jessica Silva",
    "jessica@email.com",
    "senai@134",
    "Rua Amadis, 50 - Diadema/SP",
    "04221000",
	0
);


INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Thiago Nascimento",
    "thiago@email.com",
    "senai@134",
    "Rua Carol, 50 - Diadema/SP",
    "04331000",
    0

);


INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Amanda Souza",
    "amanda@email.com",
    "senai@134",
    "Rua Carol, 50 - Diadema/SP",
    "04245000",
	0
);

INSERT INTO tb_tech VALUES ( UUID_TO_BIN(UUID()), "html" );
INSERT INTO tb_tech VALUES ( UUID_TO_BIN(UUID()), "css" );

/*SELECT * FROM tb_usuario*/



SELECT * FROM tb_usuario WHERE id = UUID_TO_BIN("dd9ea694-6ed3-11ee-8ca0-601895503df2");

DELETE FROM tb_usuario WHERE id = UUID_TO_BIN("dd9ea694-6ed3-11ee-8ca0-601895503df2");

UPDATE tb_usuario SET tipo_usuario = 1 WHERE id = UUID_TO_BIN("cf4f329b-6f95-11ee-9c28-b445067b86ae");



SELECT * FROM tb_usuario;

select BIN_TO_UUID(id), nome, tipo_usuario from tb_usuario;

INSERT INTO tb_servico VALUES
    (UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("cf4f329b-6f95-11ee-9c28-b445067b86ae"), NULL),
    (UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("cf4f329b-6f95-11ee-9c28-b445067b86ae"), NULL),
    (UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("cf4f329b-6f95-11ee-9c28-b445067b86ae"), NULL);




SELECT BIN_TO_UUID(id), nome FROM tb_tech;
SELECT BIN_TO_UUID(id), titulo FROM tb_servico;

SELECT * FROM tb_tech_servico;


INSERT INTO tb_tech_servico VALUES(
	UUID_TO_BIN("e03bae3b-6f95-11ee-9c28-b445067b86ae"), UUID_TO_BIN("27ae193e-6f98-11ee-9c28-b445067b86ae")
);


INSERT INTO tb_tech_servico VALUES(
	UUID_TO_BIN("e03bae3b-6f95-11ee-9c28-b445067b86ae"), UUID_TO_BIN("27ae1ea7-6f98-11ee-9c28-b445067b86ae")
);


INSERT INTO tb_tech_servico VALUES(
	UUID_TO_BIN("e03bae3b-6f95-11ee-9c28-b445067b86ae"), UUID_TO_BIN("27ae1fbf-6f98-11ee-9c28-b445067b86ae")
);



SELECT BIN_TO_UUID(id), nome, tipo_usuario FROM tb_usuario;
SELECT BIN_TO_UUID(id), nome FROM tb_tech;

SELECT * FROM tb_dev_tech;

INSERT INTO tb_dev_tech VALUES(
	UUID_TO_BIN("cf4f329b-6f95-11ee-9c28-b445067b86ae"), UUID_TO_BIN("dc46aec4-6f95-11ee-9c28-b445067b86ae")
);


SELECT BIN_TO_UUID(id), nome, tipo_usuario FROM tb_usuario;
SELECT BIN_TO_UUID(id), titulo FROM tb_servico;
SELECT * FROM tb_cotacao;

INSERT INTO tb_cotacao VALUES(
UUID_TO_BIN(UUID()), 
UUID_TO_BIN("cf4f329b-6f95-11ee-9c28-b445067b86ae"),
UUID_TO_BIN("27ae1fbf-6f98-11ee-9c28-b445067b86ae"),
5000.00
);

