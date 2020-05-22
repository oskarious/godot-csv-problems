extends Node2D


func _ready():
	var fr := File.new()
	fr.open("res://world-cities.csv", fr.READ)
	
	while !fr.eof_reached():
		print(fr.get_csv_line())
		
	fr.close()
