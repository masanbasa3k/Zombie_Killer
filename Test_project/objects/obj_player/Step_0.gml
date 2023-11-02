// Get Player Inputs
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);

keyActivate = keyboard_check(ord("E"));
keyUse = mouse_check_button_pressed(mb_left);
keyRoll = keyboard_check(vk_space);
keyRun = keyboard_check(vk_shift);

inputDirection = point_direction(0, 0, keyRight-keyLeft, keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

if (!global.gamePaused) {script_execute(state);}