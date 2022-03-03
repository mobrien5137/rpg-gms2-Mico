/// @description movement
///code that runs every frame


keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);
keyDash = keyboard_check_pressed(vk_alt);
inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0)
//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);
PlayerStateFree();
PlayerAnimateSprite();

if dash
{
	dashing = true;
}
if dashing
{
	dashTimer -= 1/room_speed;
	if dashTimer <= 0;
	{
		dashing = false
		dashTimer = 0.3;
	}
	if (!place_empty(x + xVector, y))
	{
		xVector = 0:
	}
