/**
 * Perform an click action on the given element inside certain table row with string template that has a variable.
 * @param  {String}   element Element selector with template variable.
 * @param  {String}   row     selector for an element appear in the desired row
 */
module.exports = function(element, row) {
    const regex = /^(.*)(\(\$\w+\))(.*)$/g;
    let m = regex.exec(row);

    if (m !== null && m[2] != null) {
        let key = m[2]
        if (this[key] != null) {
            let rowSelector = element.replace(m[2], this[key])
            browser.waitForVisible(rowSelector)
            let rowElement = $(rowSelector).$('//ancestor::tr[1]')
            let elem = rowElement.$(element)
            elem.waitForVisible()
            elem.click()
        }
        else{
            throw Error ('Template variable is not intialized')
        }
    }
    else{
        throw Error ('Template must have a variable defined by ($ )')
    }
};
