import { defineSupportCode } from 'cucumber';

import fillForm from '../support/custom/fillForm';

defineSupportCode(({ When }) => {
    When(
        /^I fill in the following:$/,
        fillForm
    );
});
