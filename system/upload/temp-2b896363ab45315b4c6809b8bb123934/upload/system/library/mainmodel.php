<?php
class MainModel extends Model{

	/**
	* Current module version
	* @var integer
	*/
	static protected $_module_version;

	/**
	* Get current module version
	* @return integer
	*/
	public static function getModuleVersion(){
		return self::$_module_version;
	}

	protected function canModify(){

		if( ! $this->registry->get( 'user' ) )
    		return false;
    	
    	if( empty( $this->request->get[ 'route' ] ) || empty( $this->request->get[ 'order_id' ] ) )
    	{
    		$this->debugLog->write( 'Permission was not checked - insufficient data' );
    		return false;
    	}

    	$route = explode( '/' , $this->request->get[ 'route' ] );

    	if( empty( $route[ 0 ] ) || empty( $route[ 1 ] ) )
    	{
    		$this->debugLog->write( 'Permission was not checked - invalid route format' );
    		return false;
    	}

    	if( $this->uset->hasPermissions( 'modify' , $route[ 0 ] . '/' . $route[ 1 ] ) )
    	{
    		return true;
    	}

    	return false;
    }

    protected function canAccess(){

    	if( ! $this->registry->get( 'user' ) )
    		return false;

    	if( empty( $this->request->get[ 'route' ] ) || empty( $this->request->get[ 'order_id' ] ) )
    	{
    		$this->debugLog->write( 'Permission was not checked - insufficient data' );
    		return false;
    	}

    	$route = explode( '/' , $this->request->get[ 'route' ] );

    	if( empty( $route[ 0 ] ) || empty( $route[ 1 ] ) )
    	{
    		$this->debugLog->write( 'Permission was not checked - invalid route format' );
    		return false;
    	}

    	if( $this->uset->hasPermissions( 'access' , $route[ 0 ] . '/' . $route[ 1 ] ) )
    	{
    		return true;
    	}

    	return false;
    }
}
?>