/**
 * Check if the text in element is equal to certain value, 
 *    this Element is inside certain table row with string template that has a variable.
 * @param  {String}   value value to check against.
 * @param  {String}   element Element selector with template variable.
 * @param  {String}   row     selector for an element appear in the desired row
 */

module.exports = function(value, element, row) {
    const regex = /^(.*)(\(\$\w+\))(.*)$/g;
    let m = regex.exec(row);

    if (m !== null && m[2] != null) {
        let key = m[2]
        if (this[key] != null) {
            let rowSelector = element.replace(m[2], this[key])
            let rowElement = $(rowSelector).$('//ancestor::tr[1]')
            browser.waitUntil(function(){
                return rowElement.$(element).getText() == value
            }, 10000, 'Expected the element (' + element + ') to be ' + value + ', but its ' + rowElement.$(element).getText());
        }
        else{
            throw Error ('Template variable is not intialized')
        }
    }
    else{
        throw Error ('Template must have a variable defined by ($ )')
    }
};
