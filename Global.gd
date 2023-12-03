extends Node

func _unhandled_input(_event):
	if Input.is_action_just_pressed("menu"):
		get_tree().quit()
		
func shoot():
	var player = get_node_or_null("/root/Game/Player")
	if player != null:
		player.shoot()
	var zombie = get_node_or_null("/root/Game/Zombie")
	if zombie != null:
		zombie.die()
