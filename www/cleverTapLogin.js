/*global cordova, module*/

module.exports = {
    sendInfo: function (email, CTid, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "CleverTapLogin", "profileInfo", [email,CTid]);
    }
};
