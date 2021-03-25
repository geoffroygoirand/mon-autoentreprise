// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
// [...]


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initFlatpickr } from '../plugins/flatpickr.js';
import { birthFlatpickr } from '../plugins/flatpickr.js';
// import { invoiceFlatpickr } from '../plugins/flatpickr.js';
import { initSelect2 } from '../plugins/init_select2';
import { myChart } from '../plugins/init_chart';
import { myPieChart } from '../plugins/init_chart';
import { myDoughnutChart } from '../plugins/init_chart';
import { myChart2 } from '../plugins/init_chart';
<<<<<<< HEAD
import { prevScrollpos } from '../components/navbar';

// [...]


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
=======
import { monthTurnover, yearTurnover, exerciseTurnover } from '../plugins/chosenTurnoverDisplay';
import { monthNewClients, yearNewClients, exerciseNewClients } from '../plugins/chosenNewClientsDisplay';
>>>>>>> a4175b5cc829a1478718ed99cc19b8dbc7791460

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initFlatpickr();
  birthFlatpickr();
  //invoiceFlatpickr();
  initSelect2();
  prevScrollpos();
  if (document.getElementById("myChart2") != null) {
    //  myChart();
    //  myPieChart();
    myChart2();
    myDoughnutChart();
  }

});

monthTurnover();
yearTurnover();
exerciseTurnover();

monthNewClients();
yearNewClients();
exerciseNewClients();



