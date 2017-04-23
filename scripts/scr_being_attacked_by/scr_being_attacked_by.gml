var attacker = argument0;

if(attacker.x > x and !attacker.facing_right and attacker.state == attacking){
	return true;
}

if(attacker.x < x and attacker.facing_right and attacker.state == attacking){
	return true;
}

return false;