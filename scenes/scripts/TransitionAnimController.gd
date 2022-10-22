extends Node2D

signal screen_covered

func emit_sreen_covered() -> void:
	emit_signal("screen_covered")
