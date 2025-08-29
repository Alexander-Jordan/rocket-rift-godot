class_name MusicPlayer
extends AudioStreamPlayer
## The games music player.

#region VARIABLES
## The main theme music.
@export var music_main_theme: AudioStream
## The home (menu) music.
@export var music_home: AudioStream

var volume_db_default: float = -10.0
var volume_db_low: float = -20.0
#endregion

#region FUNCTIONS
func _ready() -> void:
	GameManager.game_changed.connect(on_game_changed)

## To modify the music.[br]
## If track is set to null or the same track, the track won't change.[br]
## Volume will however always be set to whatever is provided.
func modify_music(track: AudioStream, volume: float = volume_db_default) -> void:
	self.volume_db = volume
	if track == null or track == self.stream:
		return
	self.stream = track
	self.play()

## What to do when the game state changes.
func on_game_changed(game: int) -> void:
	match game:
		GameManager.Game.NEW:
			modify_music(music_home, 0.0)
		GameManager.Game.OVER:
			modify_music(null, volume_db_low)
		GameManager.Game.PLAYING:
			modify_music(music_main_theme)
#endregion
