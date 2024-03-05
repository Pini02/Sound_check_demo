extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer.playing=true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $AudioStreamPlayer.is_playing() == true and $ZeroSound.overlaps_body($RigidBody2D)==true:
		print("SAFE new commit")
		$AudioStreamPlayer.set_volume_db(-10.0)
	elif $AudioStreamPlayer.is_playing() == true and $ZeroSound.overlaps_body($RigidBody2D)==false:
		print("NOT SAFE")
	else:
		print("No sound")
