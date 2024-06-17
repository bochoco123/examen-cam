extends CanvasLayer
var is_timer
var segundos = 55

var minutos = 0 
var decimales = 0
var formated_time = ''

func update_timer():
	decimales = decimales + 1
	
	if decimales > 9:
		segundos = segundos + 1
		decimales = 0
	if segundos > 59:
		minutos = minutos +1
		segundos = 0
		decimales = 0
	if minutos > 59:
		minutos = minutos + 1
	
	
	formated_time = '%02d:%02d:%02d'%[decimales,segundos,minutos]
	$Label.text = formated_time
	
func _on_button_pressed():
	$Timer.start()
func _on_timer_timeout():
	update_timer()
func _on_stop_pressed():
	if $Timer.stop()
	
()
	%Timer.restart()
func _on_restart_pressed():
	segundos = 0
	minutos = 0
	segundos = 0
	$Timer.start()
