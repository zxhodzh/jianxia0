extends StaticBody2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer



func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.name == "武器Area2D":
		animation_player.play("destroy")
		await animation_player.animation_finished
		queue_free()
