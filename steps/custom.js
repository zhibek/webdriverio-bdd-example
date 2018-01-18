/*
 * This file contains one utility step for filling forms, and the other step functions are wrappers 
*/
import { defineSupportCode } from 'cucumber';

import fillForm from '../support/custom/fillForm';
import clickElement from '../support/action/clickElement';
import checkMatchURLPath from '../support/custom/checkMatchURLPath';

defineSupportCode(({ When, Then }) => {
    When(
        /^I fill in the following:$/,
        fillForm
    );

    When(
        /^I press "([^"]*)?"$/,
        (element) => {
            clickElement('click', 'element', element)
        }
    );

    Then(
        /^The url should( not)* match "([^"]*)?"$/,
        checkMatchURLPath
    );
});
