extends Node



func _on_Finish_body_entered(body):
	$CanvasLayer/Control.visible = true


func _on_Finish_body_exited(body):
	$CanvasLayer/Control.visible = false
