extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "GreenShip"):
		print("[Warning] Pesawat kamu jatuh")
		print("[Failed] Misi gagal :(")
		print()
		get_tree().reload_current_scene()
