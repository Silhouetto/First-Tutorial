class_name State extends Node

# stores a reference for the player this state belongs to
static var player: Player

# what happens when a player enters this state.
func Enter() -> void:
	pass

# what happens when a players exits this state.
func Exit() -> void:
	pass

# what happens in the _process update for this state.
func Process( _delta: float ) -> State:
	return null

# what happens to the _physics_process update in this state.
func Physics( _delta: float ) -> State:
	return null

# what happens with the input events in this state.
func HandleInput( _event: InputEvent ) -> State:
	return null
