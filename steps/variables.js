import { defineSupportCode } from 'cucumber';

import templateParse from '../support/variables/templateParse';
import templateVisible from '../support/variables/templateVisible';

defineSupportCode(function({ Then, And }) {
    Then(
        /^I should see the following string template "([^"]*)?"$/,
        templateParse
    );

    Then(
        /^I expect that element with string template "([^"]*)?" is( not)* visible$/,
        templateVisible
    );
});
