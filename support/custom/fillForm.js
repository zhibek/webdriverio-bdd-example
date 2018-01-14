import checkIfElementExists from '../lib/checkIfElementExists';

/**
 * Fill in a form
 * NOTE: Work in progress...
 * @param  {String}   table  The data table to process
 */
module.exports = (table) => {
    table.rows().forEach(row => {
      const element = row[0];
      const value = row[1];

      checkIfElementExists(element, false, 1);
      browser.setValue(element, value);
    })
};
