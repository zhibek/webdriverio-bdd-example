import { defineSupportCode } from 'cucumber';

import checkElementValue from '../support/forms/checkElementValue';

defineSupportCode(function({ Then }) {
    Then(
        /^I should see the value "([^"]*)?" in element "([^"]*)?"$/,
        checkElementValue
    );
});
