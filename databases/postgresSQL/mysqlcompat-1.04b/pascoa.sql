--
-- FUNCAO PARA CALCULAR A DATA DO DOMINGO DE PASCOA
-- USANDO O METODO de J.M. OUDIN 
-- http://www.pleacher.com/mp/puzzles/holip/easter.pdf
-- http://sqlfiddle.com/#!17/e5843/2
-- https://pt.stackoverflow.com/questions/280793/calculando-data-da-páscoa-em-postgresql
--
CREATE OR REPLACE FUNCTION data_pascoa( ano INTEGER ) 
RETURNS DATE AS
$BODY$
DECLARE
    mes   INTEGER;
    dia   INTEGER;
    sec   INTEGER;
    I   INTEGER;
    J   INTEGER;
    K   INTEGER;
    L   INTEGER;
    N   INTEGER;
BEGIN
    sec := trunc( ano / 100 );
    N := ano - 19 * (trunc( ano / 19 ) );
    K := trunc( (sec - 17) / 25 );
    I := sec - trunc( sec / 4 ) - trunc( (sec - K) / 3) + 19 * N + 15;
    I := I - 30 * (trunc( I / 30 ) );
    I := I - ( trunc( I / 28 ) ) * (1 - ( trunc( 1 / 28 ) ) * ( trunc(29 / (I + 1) ) ) * ( trunc( (21 - N) / 11) ) );
    J := ano + trunc( ano / 4 ) + I + 2 - sec + trunc( sec / 4 );
    J := J - 7 * ( trunc( J / 7 ) );
    L := I - J;
    mes := 3 + trunc( (L + 40) / 44 );
    dia := L + 28 - 31 * ( trunc( mes / 4 ) );

    RETURN to_date( to_char( dia, '00') || to_char( mes, '00') || to_char( ano,'0000'), 'DDMMYYYY');
END;
$BODY$
LANGUAGE plpgsql; 

--
-- TESTANDO A FUNCAO COM TODAS AS DATAS ENTRE 1900 e 2099
--
--SELECT
--    ano,
--    data_pascoa( ano )
--FROM
--    generate_series( 2016, 2018 ) AS ano
--ORDER BY
--    ano;

--ano   data_pascoa
--2016  2016-03-27
--2017  2017-04-16
--2018  2018-04-01