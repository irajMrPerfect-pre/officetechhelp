@officetechhelp.lazy.controller 'prodCtrl', ($rootScope,$scope,$stateParams)->
    $scope.restCards = [{'name':'1','image':'1','price':1},{'name':'2','image':'2','price':2},{'name':'3','image':'3','price':3},{'name':'4','image':'4','price':4},{'name':'5','image':'5','price':3},{'name':'6','image':'6','price':3},{'name':'7','image':'7','price':7},{'name':'8','image':'8','price':8},{'name':'9','image':'9','price':9}]
    $rootScope.cartdata = 0
    $scope.addedCart = []
    $scope.plist = $stateParams.productname
    # $scope.prodDesc = [{'name':'html5','desc':'Development of web pages using HTML coding.'},{'name':'seo','desc':'online SEO & SEM development of web pages.'},{'name':'web-design','desc':'Creative development of websites domains at affordable prices.'},{'name':'application','desc':'Application development and support Android and IOS.'},{'name':'email-support','desc':'Email client and support for corporate or home users.'}]
    $scope.prodDesc = {'product':{'desc':'Development of product.'},'html5':{'desc':'Development of web pages using HTML coding.'},'seo':{'desc':'online SEO & SEM development of web pages.'},'web-design':{'desc':'Creative development of websites domains at affordable prices.'},'application':{'desc':'Application development and support Android and IOS.'},'email-support':{'desc':'Email client and support for corporate or home users.'}}
    
    $scope.description = $scope.prodDesc[$scope.plist].desc
    $scope.addToCart=(cart)->
        if $.inArray(cart, $scope.addedCart) == -1
            $rootScope.cartdata = $rootScope.cartdata + 1
            $scope.addedCart.push cart
    $scope.chackCart = (name) ->
        $.inArray(name, $scope.addedCart) > -1
    shuffle = (array) ->

        currentIndex = array.length
        temporaryValue = undefined
        randomIndex = undefined
        # While there remain elements to shuffle...
        while 0 != currentIndex
            # Pick a remaining element...
            randomIndex = Math.floor(Math.random() * currentIndex)
            currentIndex -= 1
            # And swap it with the current element.
            temporaryValue = array[currentIndex]
            array[currentIndex] = array[randomIndex]
            array[randomIndex] = temporaryValue
        array
        console.log array
    shuffle($scope.restCards)

