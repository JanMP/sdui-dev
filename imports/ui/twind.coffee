import {apply, override, create} from 'twind'
import * as colors from 'twind/colors'
# import typography from '@twind/typography'
import {css} from 'twind/css'


options =
  plugins: {
    'scroll-snap': (parts) -> 'scroll-snap-type': parts.join ' '
    'snap': (parts) -> 'scroll-snap-align': parts[0]
    # typography()...
  }
  theme:
    extend:
      colors:
        primary: colors.teal
        secondary: colors.warmGray
        danger: colors.red
        ok: colors.green
        warn: colors.orange
  preflight: (preflight, {theme}) -> {
    preflight...
    ':root':
      '*': apply"focus:outline-none"
      h1: apply"text-2xl font-bold leading-tight text-gray-800"
      h2: apply"text-xl font-bold leading-tight text-gray-800"
      ul: apply"list-disc!"
      a: apply"text-blue-500 no-underline hover:underline"
      form: apply"m-3"
      'form > div': apply"my-4"
      label: apply"text-sm font-light first-child:block"
      'input + label': apply"ml-2 inline"
      'div[required] > label': apply"after:#{css"content: '*'"}"
      'input': apply"border border-gray-300 rounded bg-white text-gray-800 w-full px-4 py-1"
      'input[type="submit"]': apply"rounded bg-primary-500 text-white w-auto"
      button: apply"rounded bg-secondary-400 text-white px-4 py-1"
      'button.primary': apply"bg-primary-400 text-white"
      'button.icon': apply"w-8 h-8 p-0 rounded-full"
      '.u-nested': apply"border border-gray-100 rounded p-2 m-2"
      '.u-show-error': apply"border border-danger-400 bg-danger-50 text-danger-600"
      '.u-error-list': apply"p-2 bg-danger-300 text-white w-full"
      '.Toastify__toast--default': apply"bg-secondary-300 text-black"
      '.Toastify__toast--info': apply"bg-primary-300 text-white"
      '.Toastify__toast--success': apply"bg-ok-300 text-white"
      '.Toastify__toast--warning': apply"bg-warn-300"
      '.Toastify__toast--error': apply"bg-danger-500 text-white"
      '.error-boundary': apply"bg-danger-400 text-white p-4"
      '.new-component': apply"m-4 rounded bg-blue-100"
    # '.content-display':
    #   h1: apply"text-red-400 text-3xl"
    }

export twind = create(options)
export tw = twind.tw