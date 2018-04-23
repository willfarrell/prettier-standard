<h1 align="center">
  <img src="https://raw.githubusercontent.com/willfarrell/prettier-standard/master/docs/imgs/header.png" alt="JavaScript Formatting & Standard Style Wrapper"></a>
  <br>
  JavaScript Formatting & Standard Style
  <br>
  <br>
</h1>

Just a simple wrapper around [Prettier](https://prettier.io/) & [Standard](https://standardjs.com/) with auto-fix enabled.

## Why
- Simplify `package.json` use
- Filter non-`js` file extensions from `standard`, thinks `json` is `js`
- Fix bash glob to be recursive, you must pass in a string to enable (See examples)

## Getting Started
```bash
npm i -D prettier-standard-cli
```

## Deployment
### cli
- `prettier 'styles/*.{json,js}'`
- `standard 'src/*.js'`
- `prettier-standard 'src/**/*.{css,json,js}'`

### package.json

```json
{
  "devDependencies": {
    "lint-staged":"*",
    "husky":"*",
    "prettier-standard-cli":"*"
  },
  "scripts": {
    "precommit":"lint-staged",
    "lint": "prettier-standard 'src/**/*.{css,json,js}'",
  },
  "lint-staged": {
    "src/**/*.{css,json,js}": [
      "prettier-standard",
      "git add"
    ],
  }
}
```

### package.json standalone equivalent
```json
{
  "devDependencies": {
    "lint-staged":"*",
    "husky":"*",
    "prettier":"*",
    "standard":"*"
  },
  "scripts": {
    "precommit":"lint-staged",
    "lint": "prettier --write --loglevel warn 'src/**/*.{css,json,js}' && standard --fix 'src/**/*.js'",
  },
  "lint-staged": {
    "src/**/*.{css,json}": [
      "prettier --write",
      "git add"
    ],
    "src/**/*.js": [
      "prettier --write",
      "standard --fix",
      "git add"
    ],
  }
}
```

## Built With
- [Prettier](https://prettier.io/)
- [Standard](https://standardjs.com/)
- [glob](https://github.com/isaacs/node-glob)

## Authors
- [willfarrell](https://github.com/willfarrell/)

## License
This project is licensed under the MIT License - see the LICENSE file for details

## Acknowledgments
- [sheerun/prettier-standard](https://github.com/sheerun/prettier-standard) for the insperation

