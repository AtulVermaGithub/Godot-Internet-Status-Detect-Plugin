extends Node

var socket: StreamPeerTCP
var status:bool
var time:= 0.0
signal has_internet
signal no_internet
func _ready():
	socket = StreamPeerTCP.new()
	socket.set_no_delay(true)
	socket.connect_to_host("8.8.8.8", 53)


func _process(delta: float) -> void:
	time = time + delta
	socket.poll()
	print(socket.get_status())
	if socket.get_status() == 2:
		status = true
		emit_signal("has_internet")
		socket.disconnect_from_host()
		set_process(false)
	else:
		if time >= 5.0:
			status = false
			socket.disconnect_from_host()
			emit_signal("no_internet")
			set_process(false)
	pass


func get_status():
	set_process(true)
	time = 0.0
	socket.connect_to_host("8.8.8.8", 53)
