const {Then} = require('cucumber');
const chai = require('chai');
const chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
const expect = chai.expect;

Then('Page title is equal to {string}', (title) => {
    return expect(browser.getTitle()).to.eventually.equal(title);
});

Then('History {string} is equal to {int}', (locator, result) => {
    return expect(element.all(by.repeater(locator)).count()).to.eventually.equal(result);
});

Then('Result {string} is equal to {string}', (locator, result) => {
    browser.sleep(2000)
    return element(by.css(locator)).getText().then(function (text) {
        return expect(text).to.equal(result);
    });
});Then('Go button{string} is displayed', (locator)=> {
    const elem = element(by.css(locator));
return expect(elem.isDisplayed()).to.eventually.equal(true);
});
Then('GO button {string} contains {string} text',(locator,text)=> {
const  elem= element (by.css(locator));
return expect(elem.getText('foobar')).to.eventually.contains('foo');
});