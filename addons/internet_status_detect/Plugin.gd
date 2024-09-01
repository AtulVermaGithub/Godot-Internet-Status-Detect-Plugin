@tool
extends EditorPlugin


func _enter_tree() -> void:
	add_custom_type("Internet", "Node2D", preload("res://addons/internet_status_detect/internet.gd"), preload("res://addons/internet_status_detect/icon.png"))
	pass


func _exit_tree() -> void:
	remove_custom_type("Internet")
	pass
