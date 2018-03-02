<?php 

function getcomputador($pdo){
	$sql = "SELECT *  FROM computador ";
	$stmt = $pdo->prepare($sql);
	$stmt->execute();
	return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function getcomputadorByIds($pdo, $ids) {
	$sql = "SELECT * FROM computador WHERE id IN (".$ids.")";
	$stmt = $pdo->prepare($sql);
	$stmt->execute();
	return $stmt->fetchAll(PDO::FETCH_ASSOC);
}
