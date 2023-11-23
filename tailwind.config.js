module.exports = {
  mode: 'jit',
  content: [
    './app/views/**/*.{slim,erb,jbuilder,turbo_stream,js}',
    './app/decorators/**/*.rb',
    './app/helpers/**/*.rb',
    './app/inputs/**/*.rb',
    './app/assets/javascripts/**/*.js',
    './config/initializers/**/*.rb',
    './lib/components/**/*.rb',
  ],
  safelist: [
    {
      pattern: /bg-(red|green|blue|orange)-(100|200|400)/,
    },
    {
      pattern: /text-(red|green|blue|orange)-(100|200|400)/,
    },
    'pagy-*',
  ],
  variants: {
    extend: {
      overflow: ['hover'],
    },
  },
  theme: {
    listStyleType: {
      none: 'none',
      disc: 'disc',
      decimal: 'decimal',
      square: 'square',
    },
    screens: {
      sm: '800px',
      md: '1160px',
      lg: '1024px',
    },
  },
  plugins: [require('@tailwindcss/typography'), require('daisyui')],
  daisyui: {
    themes: [
      {
        dark: {
          primary: '#793ef9', // primary color i.e. buttons and input fields
          'primary-focus': '#793ef9',
          'primary-content': '#ffffff', // text color for primary color i.e. buttons and input fields
          'base-100': '#1E232A',
          'base-200': '#2a2e37', // footer background
          'base-300': '#16181d',
          'base-content': '#f5f5f5', // text color
          info: '#66c6ff',
          success: '#87d039',
          warning: '#e2d562',
          error: '#ff6f6f',
        },
      },
      'light',
    ],
  },
};
