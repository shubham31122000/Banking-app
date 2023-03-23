function activeLink(linkId) {
	document.getElementById(linkId).style.color='green';
}

function checkLimit() {
	if(document.getElementById('amount').value>15000) {
		document.getElementById('msg').innerHTML='Dear user, maximum 15000 is allowed per transaction';
		return false;
	}
	return true;
}

function checkNo() {
	if(document.getElementById('accno').innerHTML==document.getElementById('accountno').value) {
		document.getElementById('msg').innerHTML='Dear user, you cannot transfer into your own account';
		return false;
	}
	return true;
}