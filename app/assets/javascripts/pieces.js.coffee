# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	$(".pc").draggable
		helper: 'clone',
		opacity: .8,
		revert: true,
		zIndex: 100

	$(".color_square").droppable
		accept: ".pc"
		drop: (e, ui) ->
			piece = ui.draggable
			data = {}
			data._method = "PUT"
			data.piece = {}
			data.piece.color = $(this).data("color")
			$.post "/pieces/" + piece.data("id") + ".json",data,(response) ->
				piece.removeClass(piece.data("color"))
				piece.addClass(response.color)
				piece.data("color",response.color)
			
	
