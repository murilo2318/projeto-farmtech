CREATE TABLE Cultura (
    id_cultura NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    tipo VARCHAR2(50)
);

CREATE TABLE Sensor (
    id_sensor NUMBER PRIMARY KEY,
    tipo VARCHAR2(50),
    unidade_medida VARCHAR2(20)
);

CREATE TABLE Plantacao (
    id_plantacao NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    localizacao VARCHAR2(100),
    id_cultura NUMBER,
    FOREIGN KEY (id_cultura) REFERENCES Cultura(id_cultura)
);

CREATE TABLE Leitura_Sensor (
    id_leitura NUMBER PRIMARY KEY,
    data_hora TIMESTAMP,
    valor NUMBER(10,2),
    id_sensor NUMBER,
    id_plantacao NUMBER,
    FOREIGN KEY (id_sensor) REFERENCES Sensor(id_sensor),
    FOREIGN KEY (id_plantacao) REFERENCES Plantacao(id_plantacao)
);

CREATE TABLE Aplicacao_Produto (
    id_aplicacao NUMBER PRIMARY KEY,
    data_hora TIMESTAMP,
    quantidade NUMBER(10,2),
    tipo_produto VARCHAR2(50),
    id_plantacao NUMBER,
    FOREIGN KEY (id_plantacao) REFERENCES Plantacao(id_plantacao)
);
