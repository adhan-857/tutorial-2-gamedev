extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Reached objective!")
		print("Saatnya kamu menjalankan misi perdana~")
		print()
		get_tree().change_scene_to_file("res://scenes/LevelBaru.tscn")
