/**
 * Check if the given string (with wildcards) is matching the URL path
 * @param  {String}   falseCase       Whether to check if the given string is matching
 *                                    the URL path or not
 * @param  {String}   expectedUrlPart The string to check for
 */
module.exports = (falseCase, expectedUrlPart) => {
    /**
     * The URL of the current browser window
     * @type {String}
     */
    const currentUrl = browser.url().value;
    expectedUrlPart = expectedUrlPart.replace('?', '\\?')
    expectedUrlPart = expectedUrlPart.replace(/<\w*>/g, '.+')
    let reg = new RegExp(expectedUrlPart);

    if (falseCase) {
        expect(currentUrl).to.not
            .match(
                reg,
                `Expected URL "${currentUrl}" not to match ` +
                `"${expectedUrlPart}"`
            );
    } else {
        expect(currentUrl).to
            .match(
                reg,
                `Expected URL "${currentUrl}" to match "${expectedUrlPart}"`
            );
    }
};
