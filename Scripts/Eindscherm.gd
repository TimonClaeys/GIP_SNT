extends Control



func _on_btnOpniew_button_down():
	get_tree().reload_current_scene()


func _on_btnSluiten_button_down():
	get_tree().quit()
