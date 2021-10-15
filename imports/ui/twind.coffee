import {create} from 'twind'

options =
  plugins:
    'scroll-snap': (parts) -> 'scroll-snap-type': parts.join ' '
    'snap': (parts) -> 'scroll-snap-align': parts[0]
  theme:
    extend:
      colors:
        primary:
          DEFAULT: '#991D85'
        danger:
          DEFAULT: '#DC6B2F'
        ok:
          DEFAULT: 'rgb(120, 190, 32)'
  
export default create(options).tw