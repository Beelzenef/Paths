extends Node2D

var isFull

func _ready():
	isFull = false

func fullSlot():
	isFull = true