function PlayerStateFree(){

PlayerCollision();

//Update sprite index
var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame = 0;


}