defineClass('ViewController', {
    testValueForKey: function(key) {
        //    double retValue = [[self testDict][key] doubleValue];
        //    return retValue;
        console.log('---------------startContainer');
        var retValue = 0;
        console.log(self.testDict());

        var obj = self.testDict().objectForKey(key);
        console.log(obj);
        if (obj) {
            retValue = obj.doubleValue();
        } else {
            var obj1 = self.testDict().objectForKey("key2");
            console.log(obj1);
            retValue = obj1.doubleValue();
        }
        console.log('---------------endContainer');
        return retValue;
    },
});