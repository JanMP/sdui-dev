s = "123/test1/test2"
# regex = /^(.+?)(?=\/)/g
# console.log s.match regex
# console.log regex.test s

# regex2 = /(?<=\/)(.+)/g
# console.log s.match regex2

console.log s.match?(/^.+?\/(.+?)/g)
console.log /^.+?\/(.+)/g.exec s
