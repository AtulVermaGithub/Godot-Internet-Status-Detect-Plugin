@tool
extends Node

var _http_request: HTTPRequest
@export var status: bool
func _ready() -> void:
	make_http_request()
	pass

func _process(delta: float) -> void:
	connection_status()
	
func get_status():
	status = false
	#get_tree().reload_current_scene()
	_http_request.queue_free()
	make_http_request()

func connection_status():
	#print("status")
	#var state = 0
	var state = _http_request.get_http_client_status()
	print(state)
	if state in [3, 5, 6, 7]:
		status = true
	
func make_http_request():
	_http_request = HTTPRequest.new()
	add_child(_http_request)
	_http_request.request("https://google.com")
