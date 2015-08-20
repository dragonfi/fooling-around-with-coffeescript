module.exports.sum = (ns...) -> ns.reduce (a, b) -> a + b
module.exports.avg = (ns...) -> (module.exports.sum ns...) / ns.length
