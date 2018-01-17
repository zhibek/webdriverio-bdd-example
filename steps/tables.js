import { defineSupportCode } from 'cucumber';

import clickElementOnRow from '../support/tables/clickElementOnRow';
import checkElementValueInTable from '../support/tables/checkElementValueInTable';
import checkElementVisibleInTable from '../support/tables/checkElementVisibleInTable';

defineSupportCode(function({ When, Then }) {
    When(
        /^I click on the element "([^"]*)?" on the table row contains "([^"]*)?"$/,
        clickElementOnRow
    );

    Then(
        /^I should see "([^"]*)?" in element "([^"]*)?" on the table row contains "([^"]*)?"$/,
        checkElementValueInTable
    );

    Then(
        /^I should see the element "([^"]*)?" in element "([^"]*)?" on the table row contains "([^"]*)?"$/,
        checkElementVisibleInTable
    );
});
