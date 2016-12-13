'use strict';

module.exports = {
  landingPage: {
    qanLink:  element(by.css('a[href*="/qan"]')),
    grafanaLink: element(by.css('a[href*="/graph"]')),
    orchLink: element(by.css('a[href*="/orchestrator/"]')),
    docsLink: element(by.linkText('Review the documentation')),
    downloadLink: element(by.linkText('Download User Manual')),
    forumLink: element(by.linkText('questions and discussions')),  
  },

  clickQan: function() {
    var landingPage = this.landingPage;
    landingPage.qanLink.isDisplayed();
    landingPage.qanLink.click();
  },
    
  clickGrafana: function() {
    var landingPage = this.landingPage;
    landingPage.grafanaLink.isDisplayed();
    landingPage.grafanaLink.click();
  },

  clickOrchestrator: function() {
    var landingPage = this.landingPage;
    landingPage.orchLink.isDisplayed();
    landingPage.orchLink.click();
  },

  clickDocs: function() {
    var landingPage = this.landingPage;
    landingPage.docsLink.isDisplayed();
    landingPage.docsLink.click();
  },

  clickDownload: function() {
    var landingPage = this.landingPage;
    landingPage.downloadLink.isDisplayed();
    landingPage.downloadLink.click();
  },
/*
  getDownloadlTitle: finction() {
    
  },*/
};