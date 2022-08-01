# s = "123/test1/test2"
# regex = /^(.+?)(?=\/)/g
# console.log s.match regex
# console.log regex.test s

# regex2 = /(?<=\/)(.+)/g
# console.log s.match regex2

# console.log s.match?(/^.+?\/(.+?)/g)
# console.log /^.+?\/(.+)/g.exec s

# strings = ['fnord.png.thumbnail.png', 'fnord.thumbnail.png.hailEris.png']

# console.log strings.map (s) -> s.replace /\.thumbnail\.png$/, ''


# range = (from, to) ->
#   [Symbol.iterator]: ->
#     value= from
#     next: ->
#       done = value >= to
#       value += 1 unless done
#       {done, value}

# console.log [range(20, 30)...]
