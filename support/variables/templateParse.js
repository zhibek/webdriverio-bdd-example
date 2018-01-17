/**
 * Check if the template string is exiting with a variable value formated as ($VariableName)
 *     then store the value represented by the variable. This function works only with selectors contians *=
 * @param  {Type}     expectedTemplate     template to search for.
 */

module.exports = function(expectedTemplate) {
    const regex = /^((.*)=(.*))(\(\$\w+\))(.*)$/g;
    let m = regex.exec(expectedTemplate);

    let templateFound = false

    if (m !== null && m[2] != null) {
        browser.waitForVisible(m[1])
        let text = browser.getText(m[1])
        this[m[4]] = text.replace(m[3],'')
        this[m[4]] = this[m[4]].replace(m[5],'')
        console.log(this[m[4]])
        templateFound = true
    }
    else{
        throw Error ('Template must have a variable defined by ($ )')
    }

    expect(templateFound).to
            .equal(true, 'Expected to find the element ' + m[1] + ' to be found, but its not');
};
