<?php
	class authModel{

		function checkauth($username, $password){
			$adminobj = M('admin');
			$auth = $adminobj -> findOne_by_username($username);
			if((!empty($auth))&&$auth['password']==$password){
				return $auth;
			}else{
				return false;
			}
		}
		function register($username, $password) {
			$adminobj = M('admin');
			$data = array(
				'username' => $username,
				'password' => $password
			);
			$adminobj -> insert($data);
		}

	}

?>
