# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

DEFAULT_SECTION = '.section-mission'
SECTIONS = ['.section-mission', '.section-members']

showSection = (shownSection) ->
    for section in SECTIONS
        $(section).hide()
    $(shownSection).show()

$(document).ready ->
    $('#btn-mission').click ->
        showSection('.section-mission')
    $('#btn-members').click ->
        showSection('.section-members')

    showSection(DEFAULT_SECTION)
