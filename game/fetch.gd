extends Button

onready var requester = $"../HTTPRequest"
onready var responseLabel = $"../Response"
var loading = false

func _ready():
	requester.connect("request_completed", self, "onRequestCompleted")

func setLabel(newText):
	responseLabel.text = newText

func onPressed():
	setLabel("LOADING")
	requester.request("https://jsonplaceholder.typicode.com/todos/1")

func onRequestCompleted(result, response_code, headers, body):
	setLabel(body.get_string_from_utf8())
