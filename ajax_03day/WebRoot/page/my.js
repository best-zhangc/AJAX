
function getXhr(){
	var xhr = null ; 
	if (window.XMLHttpRequest) {
		xhr = new XMLHttpRequest();
	} else {
		xhr = new  ActiveXobject("Microsoft.XMLHttp"); /* 针对IE5 */
	}
	return xhr ; 
}
