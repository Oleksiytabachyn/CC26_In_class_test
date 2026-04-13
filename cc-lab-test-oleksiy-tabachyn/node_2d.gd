extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	queue_redraw()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(counts.happy_count)
	pass

func _draw() -> void:
	draw_faces()
	pass
	
func draw_face(happy):
	var r=get_viewport_rect().size
	var size=randi_range(20,150)
	var pos=Vector2(randi_range(size,(r.x-size)),randi_range(size,r.y-size))
	
	var color=Color.from_hsv(randf(),1,1) 
	draw_circle(pos,size,color,false)
	draw_circle(pos,5,color,false)
	var eyes=randi_range(2,6)
	
	for i in range(2,eyes+2):
		var x=pos.x-size+(i-1)*2*size/(eyes+1)
		
		draw_circle(Vector2(x,pos.y-5-size/5),5,color,false)
	
	draw_line(Vector2(pos.x-size/2,pos.y+5+size/5),Vector2(pos.x+size/2,pos.y+5+size/5),color)
	if happy:
		draw_line(Vector2(pos.x-size/2,pos.y+5+size/5),Vector2(pos.x-3*size/4-5,pos.y),color)
		draw_line(Vector2(pos.x+3*size/4+5,pos.y),Vector2(pos.x+size/2,pos.y+5+size/5),color)
		

	else:
		draw_line(Vector2(pos.x-size/2,pos.y+5+size/5),Vector2(pos.x-3*size/4-5,pos.y+5+size/2),color)
		draw_line(Vector2(pos.x+3*size/4+5,pos.y+5+size/2),Vector2(pos.x+size/2,pos.y+5+size/5),color)
		
	
	pass

func draw_face_reversed(happy):
	var r=get_viewport_rect().size
	var size=randi_range(20,150)
	var pos=Vector2(randi_range(size,(r.x-size)),randi_range(size,r.y-size))
	
	var color=Color.from_hsv(randf(),1,1) 
	draw_circle(pos,size,color,false)
	draw_circle(pos,5,color,false)
	var eyes=randi_range(2,6)
	
	for i in range(2,eyes+2):
		var x=pos.x-size+(i-1)*2*size/(eyes+1)
		
		draw_circle(Vector2(x,pos.y+5+size/5),5,color,false)
	
	draw_line(Vector2(pos.x-size/2,pos.y-5-size/5),Vector2(pos.x+size/2,pos.y-5-size/5),color)
	if happy:
		draw_line(Vector2(pos.x-size/2,pos.y-5-size/5),Vector2(pos.x-3*size/4-5,pos.y),color)
		draw_line(Vector2(pos.x+3*size/4+5,pos.y),Vector2(pos.x+size/2,pos.y-5-size/5),color)
		

	else:
		draw_line(Vector2(pos.x-size/2,pos.y-5-size/5),Vector2(pos.x-3*size/4-5,pos.y-5-size/2),color)
		draw_line(Vector2(pos.x+3*size/4+5,pos.y-5-size/2),Vector2(pos.x+size/2,pos.y-5-size/5),color)
		
	
	pass

func draw_faces():
	for i in range(randi_range(1,10)):
		if randi_range(0,1)==0:
			if randi_range(0,1)==0:
				draw_face_reversed(true)
				counts.happy_count+=1
			else:
				draw_face_reversed(false)
				counts.sad+=1
			counts.reversed+=1
		else:
			if randi_range(0,1)==0:
				draw_face(true)
				counts.happy_count+=1
			else:
				draw_face(false)
				counts.sad+=1
			
	



	
	
	
