$ ->
  defLat = 55.7185054
  defLng = 52.3721038
  defZm = 12
  locationInfo = document.getElementById('location')
  DG.then ->
    map = undefined
    marker = undefined
    map = DG.map('map',
      center: [
        defLat
        defLng
      ]
      zoom: defZm)
    marker = DG.marker([
      defLat
      defLng
    ], draggable: true).addTo(map)
    marker.on 'drag', (e) ->
      lat = e.target._latlng.lat.toFixed(3)
      lng = e.target._latlng.lng.toFixed(3)
      locationInfo.innerHTML = lat + ', ' + lng
