#
# * GET home page.
#

exports.index = (req, res) ->
  res.render "index",
    libJsDir: "public/js/lib"
    clientJsDir: "public/js"
