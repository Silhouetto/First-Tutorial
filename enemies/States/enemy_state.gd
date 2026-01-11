class_name EnemyState extends Node

var enemy : Enemy
var state_machine : EnemyStateMachine


func init() -> void:
	pass
# what happens when a player enters this state.
func enter() -> void:
	pass

# what happens when a players exits this state.
func exit() -> void:
	pass

# what happens in the _process update for this state.
func process( _delta: float ) -> EnemyState:
	return null

# what happens to the _physics_process update in this state.
func physics( _delta: float ) -> EnemyState:
	return null
