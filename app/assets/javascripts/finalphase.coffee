# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
	$('.picture-finalphase').hover ->
		$('#image-big-finalphase').attr 'src', $(this)[0].src
		return

document.addEventListener 'dragstart', (event) ->
	event.dataTransfer.setData 'id', event.target.id
	event.dataTransfer.setData 'src', event.target.src
	event.target.style.opacity = '0.4'
	return

# Output some text when finished dragging the p element and reset the opacity
document.addEventListener 'dragend', (event) ->
	event.target.style.opacity = '1'
	return

# When the draggable p element enters the droptarget, change the DIVS's border style
document.addEventListener 'dragenter', (event) ->
	if event.target.className == 'finalphase-choice'
		event.target.style.opacity = '0.5'
	return

# By default, data/elements cannot be dropped in other elements. To allow a drop, we must prevent the default handling of the element
document.addEventListener 'dragover', (event) ->
	event.preventDefault()
	return

# When the draggable p element leaves the droptarget, reset the DIVS's border style
document.addEventListener 'dragleave', (event) ->
	if event.target.className == 'finalphase-choice'
		event.target.style.opacity = '1'
	return

checkButton = ->
	primo = document.getElementById('first-choice').alt
	secondo = document.getElementById('second-choice').alt
	terzo = document.getElementById('third-choice').alt
	if primo != '0' and secondo != '0' and terzo != '0'
		document.getElementById('confirm-choice').disabled = false
	else
		document.getElementById('confirm-choice').disabled = true
	return

checkPresence = (id, element) ->
	primo = document.getElementById('first-choice').alt
	if primo == id
		document.getElementById('first-choice').src = element.src
		document.getElementById('first-choice').alt = element.alt
	secondo = document.getElementById('second-choice').alt
	if secondo == id
		document.getElementById('second-choice').src = element.src
		document.getElementById('second-choice').alt = element.alt
	terzo = document.getElementById('third-choice').alt
	if terzo == id
		document.getElementById('third-choice').src = element.src
		document.getElementById('third-choice').alt = element.alt
	return


document.addEventListener 'drop', (event) ->
	event.preventDefault()
	if event.target.className == 'finalphase-choice'
		id = event.dataTransfer.getData('id')
		src = event.dataTransfer.getData('src')
		checkPresence(id, event.target)
		event.target.alt = id
		event.target.src = src
		event.target.style.opacity = '1'
		checkButton()
	return
	