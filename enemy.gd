extends Area2D

@export var bullet_scene : PackedScene
@export var speed = 150
@export var rotation_speed = 120
@export var health = 3

var follow = PathFollow2D.new()
var target = null

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D.frame = randi() % 3
	var path = $EnemyPaths.get_children() [randi() % $EnemyPaths.get_child_count()]
	path.add_child(follow)
	follow.loop = false

func _physics_process(_delta):
	rotation += deg_to_rad(rotation_speed) * _delta
	follow.progress += speed * _delta
	position = follow.global_position
	if follow.progress_ratio >= 1:
		queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_gun_cooldown_timeout():
	pass # Replace with function body.
