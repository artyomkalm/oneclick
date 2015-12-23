$ ->
  $('#region').hide()
  $('#lq').hide()
  $('#houses-grid').hide()

  $("#city").select2
    theme: "bootstrap"

  $('#city').change ->
    url = '/get_regions?city_id=' + $(this).val()
    $.get url, (data) ->
      $('#region').removeOption /./
      $('#lq').removeOption /./
      data.forEach (a) ->
      	$('#region').append(a)
      $("#region").select2
        theme: "bootstrap"
        placeholder: "Выберите район"
        width: '100%'
      $('#region').show( "slow" )
      
  $('#region').change ->
    url = '/get_lqs?region_id=' + $(this).val()
    $.get url, (data) ->
      $('#lq').removeOption /./
      data.forEach (a) ->
      	$('#lq').append(a)
      $("#lq").select2
        theme: "bootstrap"
        placeholder: "Выберите комплекс"
        width: '100%'
      $('#lq').show( "slow" )     

  $('#lq').change ->
    url = '/get_houses?lq_id=' + $(this).val()
    $.get url, (data) ->      
      data.forEach (a) ->
      	$('#houses-grid').append(a)
      $('#houses-grid').show( "slow" ) 

