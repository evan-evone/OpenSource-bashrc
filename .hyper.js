// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    updateChannel: 'canary',
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates

    fontSize: 12,                                                                           // 12 in HyperTerm correlates with 11 in Terminal
    fontFamily: 'Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    fontWeight: 'normal',
    fontWeightBold: 'bold',

    cursorColor: '#929292',
    cursorAccentColor: '#000000',
    cursorShape: 'BLOCK',                                                                   // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorBlink: false,
    scrollbarColor: 'grey',
    scrollbarOpacity: 0.0,

    foregroundColor: '#fff',
    backgroundColor: '#000',
    selectionColor: 'rgba(172,213,255,0.3)',
    borderColor: '#333',

    // custom CSS to embed in the main window
    // NOTE: "hyperline" div has class `jsx-1196914242` `line`
    css: `
      .line.jsx-1196914242 {
        font: 11px monospace;
        height: 30px;
        justify-content: space-around;
      }
    `,

    termCSS: '',                                                                            // custom CSS to embed in the terminal window
    padding: '12px 14px 37px',                                                              // last padding - 37 - accounts for "hyperline"
    windowSize: [848, 536],

    showHamburgerMenu: '',                                                                  // default: `true` on Linux, `true` on Windows, ignored on macOS
    showWindowControls: '',                                                                 // default: `true` on Windows and Linux, ignored on macOS

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#000000',
      red: '#C51E14',
      green: '#1DC121',
      yellow: '#AAAA00',
      blue: '#0A2FC4',
      magenta: '#C839C5',
      cyan: '#00BCBC',
      white: '#C7C7C7',
      lightBlack: '#686868',
      lightRed: '#FD6F6B',
      lightGreen: '#67F86F',
      lightYellow: '#E6E500',
      lightBlue: '#6A76FB',
      lightMagenta: '#FD7CFC',
      lightCyan: '#00E7E7',
      lightWhite: '#FFFFFF',
    },

    verminal: {
      fontFamily: 'Menlo',
      backgroundColor: 'rgba(0, 0, 0, 0.25)'
    },

    hyperline: {
        plugins: [
            "hostname",
            "ip",
            "memory",
            "cpu",
            "network",
            "battery",
        ],
    },

    shell: '',
    shellArgs: ['--login'],
    env: {},

    bell: 'SOUND',
    copyOnSelect: false,
    defaultSSHApp: true,

    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    // quickEdit: true,

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  plugins: [
    "hypercwd",
    "hyper-search",
    "hyper-fading-scrollbar",
    "hyper-tabs-enhanced",
    "verminal",
    "hyper-pane",
    "hyperline"
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },
};
