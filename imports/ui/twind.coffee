import {apply, create} from 'twind'
import typography from '@twind/typography'
import {css} from 'twind/css'

options =
  plugins: {
    'scroll-snap': (parts) -> 'scroll-snap-type': parts.join ' '
    'snap': (parts) -> 'scroll-snap-align': parts[0]
    typography()...
  }
  theme:
    extend:
      colors:
        primary:
          DEFAULT: '#991D85'
        danger:
          DEFAULT: '#DC6B2F'
        ok:
          DEFAULT: 'rgb(120, 190, 32)'
  preflight: (preflight, {theme}) -> {
    preflight...
    '*': apply 'focus:outline-none'
    h1: apply 'text-2xl font-bold leading-tight text-gray-900'
    h2: apply 'text-xl font-bold leading-tight text-gray-800'
    a: apply 'text-blue-500 no-underline hover:underline'
    form: apply 'm-3'
    'form > div': apply 'my-4'
    label: apply 'text-sm font-light first-child:block'
    'input + label': apply 'ml-2 inline'
    'div[required] > label': apply"after:#{css"content: '*'"}"
    'input': apply"border border-gray-300 rounded bg-white text-gray-800 w-full #{css"padding: .25rem 1rem !important"}" #workaround for px-1 py-2
    'input[type="submit"]': apply"rounded bg-blue-500 text-white w-auto"
    button: apply"rounded bg-gray-300 #{css"padding: .25rem 1rem"}"
    '.u-nested': apply 'border border-gray-100 rounded p-2 m-2'
    '.u-show-error': apply 'border border-red-500 bg-red-100'
    '.u-error-list': apply 'p-2 bg-red-200 text-white w-full'
    '.Toastify__toast--default': apply 'bg-white text-black'
    '.Toastify__toast--info': apply 'bg-blue-300'
    '.Toastify__toast--success': apply 'bg-green-300'
    '.Toastify__toast--warning': apply 'bg-yellow-300'
    '.Toastify__toast--error': apply 'bg-red-300'
    '.fnord': apply 'px-1 py-4 bg-blue-100'
  }

  
export default create(options).tw