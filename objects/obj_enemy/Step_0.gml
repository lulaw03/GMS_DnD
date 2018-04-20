/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 21DFB410
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "ae885b78-27ef-4216-8de1-352cbff5c1b9"
var l21DFB410_0 = false;
l21DFB410_0 = instance_exists(obj_player);
if(l21DFB410_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 583DD40F
	/// @DnDParent : 21DFB410
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0DC416FE
	/// @DnDParent : 21DFB410
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 526647F0
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E5F36C5
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03F92E23
	/// @DnDApplyTo : 68ba7187-5cd1-41a8-8370-1adb07a65754
	/// @DnDParent : 2E5F36C5
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(obj_score) {
	thescore += 5;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 731FF516
	/// @DnDParent : 2E5F36C5
	/// @DnDArgument : "sound" "snd_death"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "sound" "1dd45670-47d7-4be5-8798-fc8cdd71c754"
	audio_sound_pitch(snd_death, random_range(0.8,1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2639EFFE
	/// @DnDParent : 2E5F36C5
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "1dd45670-47d7-4be5-8798-fc8cdd71c754"
	audio_play_sound(snd_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3A0FB71D
	/// @DnDParent : 2E5F36C5
	instance_destroy();
}