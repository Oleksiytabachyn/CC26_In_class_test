extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass

func _draw() -> void:
	draw_face(true)
	pass
	
func draw_face(happy):
	var r=get_viewport_rect().size
	var pos=Vector2(randi_range(0,r.x),randi_range(0,r.y))
	var size=randi_range(20,150)
	var color=Color.from_hsv(randf(),1,1)
	draw_circle(pos,size,color,false)
	draw_circle(pos,5,color,false)
	var eyes=randi_range(2,6)
	print(eyes)
	for i in range(2,eyes+2):
		var x=pos.x-size+(i-1)*2*size/(eyes+1)
		print(i)
		draw_circle(Vector2(x,pos.y-5-size/5),5,color,false)
	
	draw_line(Vector2(pos.x-size/2,pos.y+5+size/5),Vector2(pos.x+size/2,pos.y+5+size/5),color)
	draw_line(Vector2(pos.x-size/2,pos.y+5+size/5),Vector2(pos.x-3*size/4-5,pos.y+5+size/2),color)
	draw_line(Vector2(pos.x+3*size/4+5,pos.y+5+size/2),Vector2(pos.x+size/2,pos.y+5+size/5),color)
	
	pass
	
