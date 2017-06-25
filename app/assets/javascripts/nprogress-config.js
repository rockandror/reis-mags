NProgress.configure({
  minimum: 0.08,
  easing: 'ease',
  positionUsing: '',
  speed: 200,
  trickle: true,
  trickleSpeed: 200,
  showSpinner: true,
  barSelector: '[role="bar"]',
  spinnerSelector: '[role="spinner"]',
  parent: 'body',
  template: '<div class="bar nprogress" role="bar"><div class="peg"></div></div><div class="spinner" role="spinner"><div class="spinner-icon"></div></div>'
});
