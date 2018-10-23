const { environment } = require('@rails/webpacker');
const vue =  require('./loaders/vue');

environment.loaders.append('vue', vue);
environment.config.resolve.alias = { 'vue$': 'vue/dist/vue.esm.js' };
environment.loaders.append('vue', vue)
module.exports = environment
