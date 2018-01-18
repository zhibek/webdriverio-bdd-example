# Okappy BDD Tests

Automated BDD tests covering Okappy functionality.

Uses **WebdriverIO** with **CucumberJS**, to run **BDD tests** on **NodeJS**. **Chromedriver** is instead of Selenium (no Selenium required) to drive a browser. Results are output in **junit format** to the build directory.


## Install
Make sure you have `NodeJS` v8+ and `Yarn` v1.3+ installed locally, then run:
```
yarn install
```

## Run
```
yarn test
```

## Notes
The `steps`/`support` are derived from the https://github.com/webdriverio/cucumber-boilerplate project. This project is Open Source (MIT license) - if this repository is publicly distrubted in the future, the MIT license should be included.
