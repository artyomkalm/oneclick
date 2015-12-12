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
  
  $("#appartment_city_region_id").select2
    placeholder: "Выберите район",
    theme: "bootstrap"
  $("#appartment_lq_id").select2
    placeholder: "Выберите комплекс"
    theme: "bootstrap",
    allowClear: true
  $("#appartment_house_id").select2
    placeholder: "Выберите дом",
    theme: "bootstrap",
    allowClear: true
  $(".select_2").select2
    placeholder: "Выберите значение",
    theme: "bootstrap",
    allowClear: true


  $('#appartment_city_region_id').change ->
    url = '/get_lqs_by_city_region?city_region_id=' + $(this).val()
    $('#appartment_lq_id').removeOption /./
    $.get url, (data) ->
      data.forEach (a) -> 
        $('#appartment_lq_id').append(a)

  $('#appartment_lq_id').change ->
    curLat = $(this.selectedOptions[0]).data('lat')
    curLng = $(this.selectedOptions[0]).data('lng')
    clearOverlays()
    setMarker(curLat, curLng)
    $('#appartment_latitude').val curLat
    $('#appartment_longitude').val curLng
    url = '/get_houses_by_lq?lq_id=' + $(this).val()
    $('#appartment_house_id').removeOption /./
    $.get url, (data) ->
      data.forEach (a) -> 
        $('#appartment_house_id').append(a)

  $('#appartment_house_id').change ->
    curLat = $(this.selectedOptions[0]).data('lat')
    curLng = $(this.selectedOptions[0]).data('lng')
    clearOverlays()
    setMarker(curLat, curLng)
    $('#appartment_latitude').val curLat
    $('#appartment_longitude').val curLng
    url = '/get_street_address?house_id=' + $(this).val()
    $.get url, (data) ->
      console.log data
      $('h5#street').text(data)

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

$ ->
  if $('#all-apps').data('list')
    $('#all-apps').data('list').forEach (l) ->
      marker = handler.addMarker({
        lat: l.lat
        lng: l.lng
      }, markers_options)
      Gmaps.markers.push marker