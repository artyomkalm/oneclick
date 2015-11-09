$ ->
  defLat = 55.7185054
  defLng = 52.3721038
  handler = Gmaps.build('Google')
  markers_options = draggable: true

  $('#appartment_street_id').addClass('select').addClass('optional').addClass('form-control')
  $('#appartment_lq_id').addClass('select').addClass('optional').addClass('form-control')


  listenToDragDrop = (marker) ->
    google.maps.event.addListener marker.getServiceObject(), 'dragend', ->
      updateFormLocation marker.getServiceObject().getPosition()

  # Other functions
  # Update form attributes with given coordinates
  updateFormLocation = (latLng) ->
    $('#appartment_latitude').val latLng.lat()
    $('#appartment_longitude').val latLng.lng()
    
  # Add a marker with an open infowindow
  placeMarker = (latLng) ->
    marker = handler.addMarker({
      lat: latLng.lat()
      lng: latLng.lng()
      infowindow: '<div class="popup"><h2>Awesome!</h2><p>Drag me and adjust the zoom level.</p>'
    }, markers_options)
    Gmaps.markers.push marker
    # Set and open infowindow
    google.maps.event.trigger marker.getServiceObject(), 'click'
    listenToDragDrop marker

  # // Removes the overlays from the map, including the ones loaded with the map itself
  clearOverlays = ->
    handler.removeMarkers Gmaps.markers
    Gmaps.markers = []
  
  handler.buildMap {
    provider: {}
    internal: id: 'map'
  }, ->
    markers_json = [ {
      'lat': defLat
      'lng': defLng
    } ]
    Gmaps.markers = handler.addMarkers(markers_json, markers_options)
    handler.bounds.extendWith Gmaps.markers
    handler.fitMapToBounds()
    handler.getMap().setZoom(16)
    # Callback function
    _.each Gmaps.markers, listenToDragDrop
    # On click, clear markers, place a new one, update coordinates in the form
    google.maps.event.addListener handler.getMap(), 'click', (event) ->
      clearOverlays()
      placeMarker event.latLng
      updateFormLocation event.latLng

  $('#appartment_street_id').change ->
    curLat = $(this.selectedOptions[0]).data('lat')
    curLng = $(this.selectedOptions[0]).data('lng')
    clearOverlays()
    setMarker(curLat, curLng)
    $('#appartment_latitude').val curLat
    $('#appartment_longitude').val curLng

   $('#appartment_lq_id').change ->
    curLat = $(this.selectedOptions[0]).data('lat')
    curLng = $(this.selectedOptions[0]).data('lng')
    clearOverlays()
    setMarker(curLat, curLng)
    $('#appartment_latitude').val curLat
    $('#appartment_longitude').val curLng

  setMarker = (curLat, curLng) ->
    marker = handler.addMarker({
      lat: curLat
      lng: curLng
      infowindow: '<div class="popup"><h2>Отлично!</h2><p>Теперь уточните местонахождение.</p>'
    }, markers_options)
    Gmaps.markers.push marker
    # Set and open infowindow
    google.maps.event.trigger marker.getServiceObject(), 'click'
    listenToDragDrop marker
