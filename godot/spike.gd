extends Area3D


func collision(body: Node3D):
	if body.name == "Player":
		get_tree().call_deferred("reload_current_scene")
