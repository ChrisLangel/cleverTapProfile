/*global cordova, module*/

module.exports = {
    sendInfo: function (name, email, ctId, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "CleverTapLogin", "profileInfo", [name, email, ctId]);
    }
};
