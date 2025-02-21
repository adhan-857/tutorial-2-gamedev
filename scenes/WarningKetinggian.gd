extends Area2D

var timer = 0.0

func _process(delta):
	var green_ship_present = false
	for body in get_overlapping_bodies():
		if body.name == "GreenShip":
			green_ship_present = true
			break
	if green_ship_present:
		timer -= delta
		if timer <= 0:
			print("[Warning] Pesawat kamu terlalu tinggi")
			timer = 1.0
	else:
		timer = 0.0
