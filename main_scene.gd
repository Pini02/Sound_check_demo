extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer.playing=true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $AudioStreamPlayer.is_playing() == true and $ZeroSound.overlaps_body($Character)==true:
		print("SAFE")
		$AudioStreamPlayer.set_volume_db(-10.0)
	elif $AudioStreamPlayer.is_playing() == true and $ZeroSound.overlaps_body($Character)==false:
		print("NOT SAFE")
	else:
		print("No sound")


func _on_key_body_entered(body):
	$Character.add_inventory("Key")
	print("chiave")
	$Key.queue_free()
