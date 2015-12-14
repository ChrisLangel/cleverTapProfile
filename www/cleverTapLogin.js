/*global cordova, module*/

module.exports = {
    sendInfo: function (name, email, CTid, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "CleverTapLogin", "profileInfo", [name, email, CTid]);
    }
};
