--
-- FUNCAO PARA CALCULAR A DATA DO DOMINGO DE PASCOA
-- USANDO O METODO DE CARTER
--
CREATE OR REPLACE FUNCTION data_pascoa( ano INTEGER ) 
RETURNS DATE AS
$BODY$
DECLARE
    A INTEGER;
    B INTEGER;
    C INTEGER;
    D INTEGER;
    dia INTEGER;
    mes INTEGER;
BEGIN
    IF (ano < 1900) OR (ano > 2099) THEN
        --O Metodo de Carter soh permite calcular a data
        --da pascoa entre os anos de 1900 e 2099
        RAISE EXCEPTION 'Ano invalido!'; 
    END IF;

    A := 255 - 11 * ( ano % 19 );
    B := ( (A - 21) % 30) + 21;

    IF( B > 38 ) THEN
        B := B - 1;
    END IF;

    C := ( ano + (ano / 4) + B + 1) % 7;
    D := B + 7 - C;

    IF( D < 32 ) THEN
        dia := D;
        mes := 3;
    ELSE
        dia := D - 31;
        mes := 4;
    END IF;

    RETURN to_date( to_char( dia, '00') || to_char( mes, '00') || to_char( ano,'0000'), 'DDMMYYYY');
END;
$BODY$
LANGUAGE plpgsql; 

--
-- TESTANDO A FUNCAO COM TODAS AS DATAS ENTRE 2016 e 2019
--
--SELECT
--    ano,
--    data_pascoa( ano )
--FROM
--    generate_series( 2016, 2019 ) AS ano
--ORDER BY
--    ano;

--ano   data_pascoa
--2016  2016-03-27
--2017  2017-04-16
--2018  2018-04-01
--2019  2019-04-21