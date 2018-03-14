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
    A   INTEGER;
    B   INTEGER;
    C   INTEGER;
    D   INTEGER;    
    E   INTEGER;
    F   INTEGER;    
    G   INTEGER;
    H   INTEGER;
BEGIN
    sec := trunc( ano / 100 );
    A := ano - 19 * (trunc( ano / 19 ) );
    B := trunc( (sec - 17) / 25 );
    C := sec - trunc( sec / 4 ) - trunc( (sec - B) / 3) + 19 * A + 15;
    D := C - 30 * (trunc( C / 30 ) );
    E := D - ( trunc( D / 28 ) ) * (1 - ( trunc( 1 / 28 ) ) * ( trunc(29 / (D + 1) ) ) * ( trunc( (21 - A) / 11) ) );
    F := ano + trunc( ano / 4 ) + E + 2 - sec + trunc( sec / 4 );
    G := F - 7 * ( trunc( F / 7 ) );
    H := E - G;
    mes := 3 + trunc( (H + 40) / 44 );
    dia := H + 28 - 31 * ( trunc( mes / 4 ) );

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