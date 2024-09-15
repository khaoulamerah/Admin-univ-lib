<?php
 require 'rb.php';
 R::setup(); 

 $opts = getopt( '', [ 'add:', 'list' ] );
  if ( isset( $opts['add'] ) ) {
    $w = R::dispense( 'whisky' );
    $w->name = $opts['add'];
    $id = R::store( $w );
    die( "OK.\n" );
    }
    if ( isset( $opts['list'] ) ) {
        $bottles = R::find( 'whisky' );
        if ( !count( $bottles ) )
          die( "The cellar is empty!\n" );
        foreach( $bottles as $b ) {
          echo "* #{$b->id}: {$b->name}\n";
        }
    exit;
  }
?>