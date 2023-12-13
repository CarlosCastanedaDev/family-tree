module.exports = {
  // mode: 'jit',
  content: [
    './app/views/**/*.{slim,erb,jbuilder,turbo_stream,js}',
    './app/decorators/**/*.rb',
    './app/helpers/**/*.rb',
    './app/inputs/**/*.rb',
    './app/assets/javascripts/**/*.js',
    './config/initializers/**/*.rb',
    './lib/components/**/*.rb',
    './public/*.html',
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
          success: '#2dd4bf',
          warning: '#f43f5e',
          error: '#ff6f6f',
        },
        light: {
          primary: '#570df8',
          'primary-content': '#ffffff',
          secondary: '#f000b8',
          'secondary-content': '#ffffff',
          accent: '#37cdbe',
          'accent-content': '#163835',
          neutral: '#3d4451',
          'neutral-content': '#ffffff',
          'base-100': '#ffffff',
          'base-200': '#94a3b8',
          'base-300': '#E5E6E6',
          'base-content': '#000',
        },
      },
    ],
  },
};
