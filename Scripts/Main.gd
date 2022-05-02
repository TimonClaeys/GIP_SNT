extends Node

var time = 0
var stopped = false

func _on_Finish_body_entered(body):
	$CanvasLayer/Eindscherm.visible = true


func _on_Finish_body_exited(body):
	$CanvasLayer/Eindscherm.visible = false
