/**
 * Created by Vidailhet on 17/11/15.
 */

(function (ionic) {
    angular.module('ionic.closePopup', ['ionic'])
        .service('IonicClosePopupService', [
            function () {
                let currentPopup;
                let htmlEl = angular.element(document.querySelector('html'));
                htmlEl.on('click', function (event) {
                    if (event.target.nodeName === 'HTML') {
                        if (currentPopup) {
                            currentPopup.close();
                        }
                    }
                });

                this.register = function (popup) {
                    currentPopup = popup;
                }
            }
        ]);
})(window.ionic);