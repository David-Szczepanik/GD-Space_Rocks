extends Area2D

@export var speed = 1000

var velocity = Vector2.ZERO

func start(_transform):
	transform = _transform
	velocity = transform.x * speed

func _ready():
	pass # Replace with function body.


func _process(_delta):
	position += velocity * delta
