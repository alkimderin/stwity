<?php
		$siteAdi = $_SERVER['HTTP_HOST'];
		$siteAdi = str_replace( 'www.', '', $siteAdi );
		$a = md5( sha1( md5( $siteAdi ) ) );
		$b = sha1( md5( sha1( $siteAdi ) ) );
		$c = sha1( $a . $b );
		$sonuc = substr( $c, 0, 4 ) . '.' . substr( $c, 8, 4 ) . '.' . substr( $c, 16, 4 ) . '.' . substr( $c, 24, 4 );
	echo "$sonuc"
?>