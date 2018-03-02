<?php 

if(!isset($_SESSION['carrinho'])) {
	$_SESSION['carrinho'] = array();
}

function addCart($id, $quantidade) {
	if(!isset($_SESSION['carrinho'][$id])){ 
		$_SESSION['carrinho'][$id] = $quantidade; 
	}
}

function deleteCart($id) {
	if(isset($_SESSION['carrinho'][$id])){ 
		unset($_SESSION['carrinho'][$id]); 
	} 
}

function updateCart($id, $quantidade) {
	if(isset($_SESSION['carrinho'][$id])){
		if($quantidade > 0) {
			$_SESSION['carrinho'][$id] = $quantidade;
		} else {
		 	deleteCart($id);
		}
	}
}

function getContentCart($pdo) {
	
	$results = array();
	
	if($_SESSION['carrinho']) {
		
		$cart = $_SESSION['carrinho'];
		$computador =  getcomputadorByIds($pdo, implode(',', array_keys($cart)));

		foreach($computador as $computador) {

			$results[] = array(
							  'id' => $computador['id'],
							  'foto' => $computador['foto'],
							  'name' => $computador['nome'],
							  'preco' => $computador['preco'],
							  'quantidade' => $cart[$computador['id']],
							  'subtotal' => $cart[$computador['id']] * $computador['preco'],
						);
		}
	}
	
	return $results;
}

function getTotalCart($pdo) {
	
	$total = 0;

	foreach(getContentCart($pdo) as $computador) {
		$total += $computador['subtotal'];
	} 
	return $total;
}