// ==UserScript==
// @name         Redirect URLs
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Redirect specific URLs
// @author       You
// @match        *://*/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';
    var currentUrl = window.location.href;
    if ((currentUrl.includes("https://item.taobao.com/item.htm") && currentUrl.includes("id=")) ||
        (currentUrl.includes("https://detail.1688.com/offer/") && currentUrl.includes(".html")) ||
        (currentUrl.includes("https://weidian.com/item.html") && currentUrl.includes("itemID=")) ||
        (currentUrl.includes("https://detail.tmall.com/item.htm") && currentUrl.includes("id=")) ||
        (currentUrl.includes("https://m.intl.taobao.com/detail/detail.html") && currentUrl.includes("id="))) {
        // Encode the original URL
        let encodedUrl = encodeURIComponent(currentUrl);
        // Create the new URL
        let newUrl = `https://www.pandabuy.com/product?ra=267&url=${encodedUrl}&utm_source=url&utm_medium=pdb&utm_campaign=normal`;
        // Redirect to the transformed URL
        window.location.href = newUrl;
    } else if (currentUrl.includes("https://shop") && currentUrl.includes(".v.weidian.com/item.html") && currentUrl.includes("itemID=")) {
        let encodedUrl = encodeURIComponent(currentUrl);
        let newUrl = `https://www.pandabuy.com/product?ra=460&url=${encodedUrl}&utm_source=url&utm_medium=pdb&utm_campaign=normal`;
        window.location.href = newUrl;
    }
})();
