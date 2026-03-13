extends Node

@export var frame_count:int=0
signal  on_frame_count_changed(new_count_value:int)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Hello World")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	frame_count +=1
	on_frame_count_changed.emit(frame_count)
	
