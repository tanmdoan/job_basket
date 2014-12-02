$ ->
  $("button[data-remote]").on "ajax:success", (e, data, status, xhr) ->
    alert "Job was favorited."
