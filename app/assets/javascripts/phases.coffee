# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery(document).ready ->
	jQuery('#zoom_01').elevateZoom
		zoomType: 'lens'
		lensShape: 'round'
		lensSize: 500
		scrollZoom : true
		imageCrossfade: true
	return