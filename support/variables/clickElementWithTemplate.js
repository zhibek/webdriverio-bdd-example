import clickElement from '../action/clickElement';

/**
 * Perform an click action on the given element with string template that has a variable.
 *   The variable will be replaced with its value before calling clickElement.
 * @param  {String}   action  The action to perform (click or doubleClick)
 * @param  {String}   type    Type of the element (link or selector)
 * @param  {String}   element Element selector with template variable.
 */
module.exports = function(action, type, element) {
    const regex = /^(.*)(\(\$\w+\))(.*)$/g;
    let m = regex.exec(element);

    if (m !== null && m[2] != null) {
        let key = m[2]
        if (this[key] != null) {
            let elementSelector = element.replace(m[2], this[key])
            let visibleCheckSeletor = (type === 'link') ? `=${elementSelector}` : elementSelector;
            browser.waitForVisible(visibleCheckSeletor)
            clickElement(action, type, elementSelector)
        }
        else{
            throw Error ('Template variable is not intialized')
        }
    }
    else{
        throw Error ('Template must have a variable defined by ($ )')
    }
};
