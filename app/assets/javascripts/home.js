// This uses an undocumented internal Instagram API, so we don't have any
// guarantees that it won't break at any time.
// But it doesn't need authentication, a Facebook developer account, or server-
// side logic, so it's much simpler than the official solution.

function getPhotoSrc(callback) {
  var apiUrl = 'https://www.instagram.com/graphql/query/?query_hash=2c5d4d8b70cad329c4a6ebe3abb6eedd&variables=%7B%22id%22%3A%228483831097%22%2C%22first%22%3A1%7D'
  var xhr = new XMLHttpRequest()
  xhr.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      var json = JSON.parse(this.responseText)
      var url = json.data.user.edge_owner_to_timeline_media.edges[0].node.display_url
      callback(url)
    }
  }
  xhr.open("GET", apiUrl, true)
  xhr.send()
}

function updateImgSrc(src) {
  document.getElementById('intagram-latest').src = src
}

$(document).on('turbolinks:load', function() {
  getPhotoSrc(updateImgSrc)
})
