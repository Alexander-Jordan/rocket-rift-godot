class_name Player
extends CharacterBody2D
## The main script for the player.

#region CONSTANTS
## How much the force is increasing every frame * delta when flying.
const FLY_FORCE_INCREMENT_STEP:int = 4000
## Highest amount of force when flying.
const FLY_MAX_FORCE:int = 5000
## Highest fall speed.
const MAX_FALL_SPEED = 1200
#endregion

#region VARIABLES
## Basic fly particles.
@onready var fly_particles: GPUParticles2D = $fly_particles
## The destructable is responsible to take damage when colliding with destructors.
@onready var destructable_2d: Destructable2D = $Destructable2D
## The audio stream player for when the player runs.
@onready var stepping_audio: SteppingAudio = $SteppingAudio
## The audio stream player for when flying.
@onready var fly_audio_stream_player: AudioStreamPlayer2D = $fly_audio_stream_player

## Current fly force applied.[br]
## Can only be set between [param 0] and [constant FLY_MAX_FORCE].[br]
## It will be set to [param 0] if [member fly_activated] is set to [param false].
var fly_force:float = 0 :
	set(f):
		if f < 0 or f > FLY_MAX_FORCE:
			return
		fly_force = f
## Is the player flying?[br]
## If [param true]: [member fly_force] will be applied to the velocity, and [member fly_particles] will start emitting particles.[br]
## If [param false]: [member fly_force] will be set to [param 0].
var fly_activated:bool = false :
	set(a):
		if a == fly_activated:
			return
		
		fly_activated = a
		fly_particles.emitting = fly_activated
		if fly_activated:
			fly_audio_stream_player.play()
		else:
			fly_audio_stream_player.stop()
			fly_force = 0
var idle:bool = true :
	set(i):
		if i == idle:
			return
		idle = i
		if !idle and grounded:
			stepping_audio.start_playing()
		else:
			stepping_audio.stop_playing()
var grounded:bool = false :
	set(g):
		if g == grounded:
			return
		grounded = g
		if grounded and !idle:
			stepping_audio.start_playing()
		else:
			stepping_audio.stop_playing()
#endregion

#region FUNCTIONS
func _ready() -> void:
	GameManager.game_changed.connect(func(game:int):
		match game:
			GameManager.Game.NEW:
				reset()
			GameManager.Game.PLAYING:
				idle = false
	)
	
	destructable_2d.destroyed.connect(func(): GameManager.game = GameManager.Game.OVER)

## Used to handle input (only flying)
func _unhandled_input(event: InputEvent) -> void:
	if GameManager.game != GameManager.Game.PLAYING:
		return
	
	if event.is_action('fly'):
		fly_activated = Input.is_action_pressed('fly')

func _process(delta: float) -> void:
	# for now, just ignore all physics if the game is over
	if GameManager.game == GameManager.Game.OVER:
		return
	
	if fly_activated:
		fly_force += FLY_FORCE_INCREMENT_STEP * delta

func _physics_process(delta: float) -> void:
	# for now, just ignore all physics if the game is over
	if GameManager.game == GameManager.Game.OVER:
		return
	
	grounded = is_on_floor()
	
	if fly_activated:
		velocity.y = -fly_force
	if !fly_activated and not is_on_floor() and velocity.y < MAX_FALL_SPEED:
		velocity.y += get_gravity().y * delta

	move_and_slide()

## Reset the player.[br]
## Triggered by the [signal GameManagerGlobal.game] signal when set to [enum GameManagerGlobal.Game][param .NEW].
func reset():
	velocity = Vector2.ZERO
	fly_particles.restart()
	fly_particles.emitting = false
	fly_activated = false
	idle = true
	position = Vector2(600, 940)
#endregion
