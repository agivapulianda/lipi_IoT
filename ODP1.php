<?php
//cara menggunakan

    $mcrypt = new Aes(); //#Encrypt
    $pravename='ODP';
    $major = 2025;
    $minor = 2025;
    $text = $pravename.'−'.$major.'−'.$minor; 
        //dimana : xx = major dg range 0−65535 
        //	yy = minor dg range 0−65535
        // contoh : $text = "ODP−0−0"
    $encrypted = $mcrypt−>encrypt($text); //#Decrypt
    $decrypted = $mcrypt−>decrypt($encrypted);

    echo 'Encrypted: '.$encrypted; 
    echo '</br>';
    echo 'Decrypted: '.$decrypted; 
    echo '</br></br>';

    echo 'UUID: '.substr($encrypted,0,8).'−'.substr($encrypted,8,8).'−'.substr($encrypted,16,8).'−'.substr(
    $encrypted,24,8); 
    echo '</br>';
    echo 'Major: '.dechex($major); 
    echo '</br>';
    echo 'Minor: '.dechex($minor);

    
class Aes
{
    private static $iv = '20dcID98cov42020'; //Jangan diganti 
    private static $key = '19cov20ID9120512'; //Jangan diganti

public static function encrypt($data)
{
    return bin2hex(mcrypt_encrypt( MCRYPT_RIJNDAEL_128,
    self::$key, self::pkcs5_pad($data), MCRYPT_MODE_CBC,
    self::$iv
    ));
}

public static function decrypt($data)
{
    $str = mcrypt_decrypt( MCRYPT_RIJNDAEL_128,
    self::$key, hex2bin($data), MCRYPT_MODE_CBC,
    self::$iv
    );
    return self::pkcs5_unpad($str);
}

private static function pkcs5_pad($text)
{
    $blocksize = mcrypt_get_block_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
    $pad = $blocksize − (strlen($text) % $blocksize); return $text . str_repeat(chr($pad), $pad);
}

private static function pkcs5_unpad($text)
{
    $block = mcrypt_get_block_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
    $pad = ord($text[($len = strlen($text)) − 1]);
    $len = strlen($text);
    $pad = ord($text[$len−1]);
    return substr($text, 0, strlen($text) − $pad);
    }
    
protected function hex2bin($hexdata) {
    $bindata = '';
    for ($i = 0; $i < strlen($hexdata); $i += 2) {
    $bindata .= chr(hexdec(substr($hexdata, $i, 2)));
    }
        return $bindata;
    }
}
?>
    
 
