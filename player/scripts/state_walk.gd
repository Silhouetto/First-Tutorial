class_name State_Walk extends State

var move_speed : float = 100.0

@onready var idle : State = $"../Idle"
@onready var attack : State = $"../Attack"


func Enter() -> void:
	player.UpdateAnimation("walk")
	pass

# what happens when a players exits this state.
func Exit() -> void:
	pass

# what happens in the _process update for this state.
func Process( _delta: float ) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	
	player.velocity = player.direction * move_speed
	
	if player.set_direction():
		player.UpdateAnimation("walk")
	return null

# what happens to the _physics_process update in this state.
func Physics( _delta: float ) -> State:
	return null

# what happens with the input events in this state.
func HandleInput( _event: InputEvent ) -> State:
	if _event.is_action_pressed("attack"):
		return attack
	return null
