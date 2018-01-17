/**
 * Check If element exists in a table cell 
 *    this Element is inside certain table row with string template that has a variable.
 * @param  {String}   elementToCheck element to check.
 * @param  {String}   element Element selector with template variable.
 * @param  {String}   row     selector for an element appear in the desired row
 */

module.exports = function(elementToCheck, element, row) {
    const regex = /^(.*)(\(\$\w+\))(.*)$/g;
    let m = regex.exec(row);

    if (m !== null && m[2] != null) {
        let key = m[2]
        if (this[key] != null) {
            let rowSelector = element.replace(m[2], this[key])
            let rowElement = $(rowSelector).$('//ancestor::tr[1]')
            expect(rowElement.$(element).$(elementToCheck).isVisible()).to
                .equal(true, 'Expected the element (' + elementToCheck + ') to be visible but its not');
        }
        else{
            throw Error ('Template variable is not intialized')
        }
    }
    else{
        throw Error ('Template must have a variable defined by ($ )')
    }
};
