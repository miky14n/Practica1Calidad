angular.module('starter.services')
.factory('AppTools', function($sce, $ionicModal, $window ,$cordovaInAppBrowser, $ionicPlatform, $ionicPopup) {
  function createNewBrowser(options){
    let browserInstance = {
      title: '',
      destination: ''
    };
    $ionicModal.fromTemplateUrl('templates/in-app-browser-modal.html', options)
    .then(function(modal) {
      browserInstance.browser = modal;
      browserInstance.browser.hide();
    });

    browserInstance.openBrowser = function(link) {
      this.title = link;
      this.destination = $sce.trustAsResourceUrl(link);
      if(window.Connection) {
        if(navigator.connection.type == Connection.NONE)
        {
          let alertNotConnection = $ionicPopup.alert({
            title: 'Required Connection',
            template: "Internet access is required to view this page. Please check your internet settings and try again."
          });
    
        }
        else{
          console.log("show...");
          this.browser.show();
        }
        
      }
    };

    browserInstance.closeBrowser = function() {
      this.destination = '';
      this.browser.hide();
    };

      $ionicPlatform.onHardwareBackButton(function() {
         browserInstance.closeBrowser();
      });

    browserInstance.getUriLength = function(){
      return (($window.innerWidth * 0.9)/6)-3;
    };
    return browserInstance;
  }
  return {
    newBrowser: function(options){
      return createNewBrowser(options);
    }
  };
});