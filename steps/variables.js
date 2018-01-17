import { defineSupportCode } from 'cucumber';

import templateParse from '../support/variables/templateParse';
import templateVisible from '../support/variables/templateVisible';
import clickElementWithTemplate from '../support/variables/clickElementWithTemplate';

defineSupportCode(function({ Then, When }) {
    Then(
        /^I should see the following string template "([^"]*)?"$/,
        templateParse
    );

    Then(
        /^I expect that element with string template "([^"]*)?" is( not)* visible$/,
        templateVisible
    );

    When(
        /^I (click|doubleclick) on the (link|button|element) with string template "([^"]*)?"$/,
        clickElementWithTemplate
    );
});
