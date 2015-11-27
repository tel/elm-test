
module.exports = function(source) {
    console.log("LOADING");
    var callback = this.async();
    callback(null, source);
}
