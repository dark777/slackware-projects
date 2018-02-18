<?php
/**
* Robô para capturar informações de telefones públicos (orelhões) no país.
* Estas informações são públicas. :D
*
* @author Lucas Fernando Vasconcelos de Arruda Amorim <lf.amorim@yahoo.com.br>
* Mais informações em http://www.lfamorim.com
*
* Recomendo a utilização via linha de comando:
* php -q orelhao.php > orelhao.json
*/

ini_set('memory_limit','60M'); /* Este script consome muita memória, fique esperto. */

/* Para encodar os erros em JSon. */
function erro_fnc($errno,$errstr,$errfile,$errline){
	echo json_encode(array('erro' => compact("errno","errstr","errfile","errline")))."\r\n";
	die(1);
}
set_error_handler('erro_fnc');

/* URL do Obj. de Consulta da SGMU -> TUP */
$url = 'http://sistemas.anatel.gov.br/SGMU/TUP/Lista/objConsulta.asp';

/* Get - Não preciso explicar, preciso? */
$get = array(
	'periodoReferencia' => '01/10/2008', //Referência, sempre dois meses defasado.
	'opcao' => 10, //Opção número 10 (CEP)
);
/* For You, I live forever. - Se você for mudar essa quantidade de números, mude str_pad logo abaixo. */
for($i=100;$i<=9999;$i++){
	if(isset($simple_xml))
		unset($simple_xml);

	set_time_limit(5); /* I try live forever. */

	$get['CEPIni'] = str_pad($i,4,'0',STR_PAD_LEFT).'0000'; /* CEP Inicial */
	$get['CEPFim'] = str_pad($i,4,'0',STR_PAD_LEFT).'9999'; /* CEP Final */

	/* Ao invés de ler o XML, você pode fazer um POG também! Pode ser bem útil. */

	/* SimpleXML e um file_pog_contents, se você não entender releia o manual do PHP até criar calos nos olhos. */
	$string_xml = file_get_contents($url.'?'.http_build_query($get)) or die(1); //We\'re All Gonna Die

	/* XML deles não é sempre válido, vamos limpar ele se você ter o PHP-Tidy. */

	if(function_exists('tidy_parse_string'))
		$string_xml = tidy_parse_string($string_xml,array('input-xml'=>TRUE));

	if(($simple_xml = simplexml_load_string($string_xml)) === false) continue; //Just a little pog.
	unset($string_xml); /* Shouriuken em string_xml */

	if($simple_xml->getName() !== 'root') continue; /* Não é isso que procuramos. */

	foreach($simple_xml->children() as $children){ /* Foreach nas rows :D. */
		if($children->getName() !== 'row') continue; /* Não é isso que procuramos. */
		echo json_encode((array)$children->attributes())."\r\n"; /* @attributes do inferno! Dexa ele queto! */
	} unset($children); /* Apaga children. */

	sleep(1); /* Não queremos pacotar a Anatel, queremos? */
} unset($simple_xml,$get,$url,$i);
?>
