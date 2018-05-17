// $(document).on('turbolinks:load', () => {
//
//  // weed();
// });
//
// //
// // $('#menu').click((event) => {
// //   $('#menu-links').toggleSlide('slow');
// // });
// // var data = {};
//
// function weed() {
//   fetch('https://api.otreeba.com/v1/strains?count=50&sort=name')
//     .then(function(response) {
//       data = response.json();
//       console.log(data);
//
//      //  data.forEach(function(seed) {
//      //   $('.strain').append(seed.name);
//      //   console.log(seed.name);
//      // });
//
//     }).catch(function(err) {
//     	console.log(err);
//   })
   //  data.forEach(function(seed) {
   //   $('.strain').text(seed.name);
   // });
// };



// console.log(weed());
// function weed() {
// const apikey = '1bce534a28b2525634033e2e5dba639414801ff0';
// const url = 'https://api.otreeba.com/v1/strains/';
// fetch(url, {apikey }).then(response => {
//   if(response.ok){
//     // return response.json();
//     console.log( response );
//   }
//   throw new Error('Request Failed!');
// }, networkError => console.log(networkError.message)).then(jsonResponse => {
//   return jsonResponse;
// })
// };
