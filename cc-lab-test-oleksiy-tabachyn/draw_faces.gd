extends Node2D


var faces = preload("res://faces.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.text="Happy: "+str(counts.happy_count)
	$Label2.text="Sad: "+str(counts.sad)
	$Label3.text="Reversed: "+str(counts.reversed)
	pass





func _on_button_button_down() -> void:
	add_child(faces.instantiate())
	
	
	
	
