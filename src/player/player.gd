class_name Player
extends CharacterBody2D

@export var speed: float = 100


func _physics_process(_delta: float) -> void:
	var direction := Input.get_axis("move_left", "move_right")
	print(direction)
	if direction != 0:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	move_and_slide()
