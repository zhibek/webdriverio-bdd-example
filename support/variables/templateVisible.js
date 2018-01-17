/**
 * Check if the template string is (not) visible after replacing the variable ($VariableName) with its stored value
 *     This function expects the variable value is already stored. After replacing the value it calls waitForVisible function
 * @param  {Type}     expectedTemplate     template to search for.
 */

import waitForVisible from '../action/waitForVisible';

module.exports = function(element, falseCase) {
    const regex = /^(.*)(\(\$\w+\))(.*)$/g;
    let m = regex.exec(element);

    if (m !== null && m[2] != null) {
        let key = m[2]
        if (this[key] != null) {
            let text = element.replace(m[2], this[key])
            waitForVisible(text, falseCase)
        }
        else{
            throw Error ('Template variable is not intialized')
        }
    }
    else{
        throw Error ('Template must have a variable defined by ($ )')
    }
};
