/**
 * Check if the value of an element is equal to value
 * @param  {Type}     value     expected value.
 * @param  {Type}     element     element selector.
 */

module.exports = function(value, element) {
    let valueRead = browser.getValue(element)

    expect(valueRead).to
            .equal(value, 'Expected the element (' + element + ') to be ' + value + ', but its current value is ' + valueRead);
};
