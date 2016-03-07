#!/bin/bash
case $LANG in 
	[nN][lL]*)
		LANGUAGE=nl exec ruby /opt/desinfect/dc3dd-hpa-starter.rb 
	;;
	[dD][eE]*)
		LANGUAGE=de exec ruby /opt/desinfect/dc3dd-hpa-starter.rb 
	;;
	*)
		LANGUAGE=en exec ruby /opt/desinfect/dc3dd-hpa-starter.rb 
	;;
esac
