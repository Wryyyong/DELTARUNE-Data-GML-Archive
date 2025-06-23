if (teacupTarget == -1)
	teacupTarget = obj_teacup;

with (teacupTarget) {
	if (other.rideEnd == 1)
		endPos[other.partyMember] = [other.x, other.y];
	else
		startPos[other.partyMember] = [other.x, other.y];
}

instance_destroy();
