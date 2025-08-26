class_name Collector2D
extends Area2D
## A simple component to make anything a collector.

#region VARIABLES
## The identifiers for the collectables this collector can collect.
@export var collectable_identifiers: Array[String] = []

## The collision shape for the collector.
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
## The audio stream player respoinsible to play the specific audio for a collected collectable.
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
#endregion

#region FUNCTIONS
func _ready() -> void:
	area_entered.connect(func(area: Area2D):
		if area is Collectable2D:
			if area.identifier in collectable_identifiers:
				area.collect()
				play_audio(area)
	)

## Used to play the audio fetched from the collectable when collected.
func play_audio(collectable: Collectable2D) -> void:
	audio_stream_player_2d.stream = collectable.get_audio()
	if audio_stream_player_2d.stream != null:
		audio_stream_player_2d.pitch_scale = randf_range(0.9, 1.1)
		audio_stream_player_2d.play()
#endregion
