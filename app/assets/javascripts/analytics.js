this.GoogleAnalytics = (function() {
  function GoogleAnalytics() {}

  GoogleAnalytics.load = function() {
    var firstScript, ga;
    window._gaq = [];
    window._gaq.push(["_setAccount", GoogleAnalytics.analyticsId()]);
    ga = document.createElement("script");
    ga.type = "text/javascript";
    ga.async = true;
    ga.src = ("https:" === document.location.protocol ? "https://ssl" : "http://www") + ".google-analytics.com/ga.js";
    firstScript = document.getElementsByTagName("script")[0];
    firstScript.parentNode.insertBefore(ga, firstScript);
    if (typeof Turbolinks !== 'undefined' && Turbolinks.supported) {
      return document.addEventListener("page:change", (function() {
        return GoogleAnalytics.trackPageview();
      }), true);
    } else {
      return GoogleAnalytics.trackPageview();
    }
  };

  GoogleAnalytics.trackPageview = function(url) {
    if (!GoogleAnalytics.isLocalRequest() && !GoogleAnalytics.isTestingRequest() && !GoogleAnalytics.isStagingRequest()) {
      if (url) {
        window._gaq.push(["_trackPageview", url]);
      } else {
        window._gaq.push(["_trackPageview"]);
      }
      return window._gaq.push(["_trackPageLoadTime"]);
    }
  };

  GoogleAnalytics.isLocalRequest = function() {
    return GoogleAnalytics.documentDomainIncludes("local") || GoogleAnalytics.documentDomainIncludes("192.168.1");
  };

  GoogleAnalytics.isTestingRequest = function() {
    return GoogleAnalytics.documentDomainIncludes("127.0.0.1");
  };

  GoogleAnalytics.isStagingRequest = function() {
    return GoogleAnalytics.documentDomainIncludes("xxxxxxx-staging");
  };

  GoogleAnalytics.documentDomainIncludes = function(str) {
    return document.domain.indexOf(str) !== -1;
  };

  GoogleAnalytics.analyticsId = function() {
    return 'UA-84607147-1';
  };

  return GoogleAnalytics;

})();

GoogleAnalytics.load();