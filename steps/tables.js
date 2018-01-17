import { defineSupportCode } from 'cucumber';

import clickElementOnRow from '../support/tables/clickElementOnRow';

defineSupportCode(function({ When }) {
    When(
        /^I click on the element "([^"]*)?" on the table row contains "([^"]*)?"$/,
        clickElementOnRow
    );
});
