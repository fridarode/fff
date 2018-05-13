require 'rest-client'
// require 'mime-types'
// require 'netrc'
// require 'http-accept'
// require 'http-cookie'
// require 'rest-client'



//function data() {
const date = RestClient.get('https://api.otreeba.com/v1/strains/', headers= {api_key: '1bce534a28b2525634033e2e5dba639414801ff0'});
//.then(response => {
//   if(response.ok){
//     return response.json();
//   }
//   throw new Error('Request Failed!');
// }, networkError => console.log(networkError.message)).then(jsonResponse => {
//   return jsonResponse;
// }).then(console.log)

//};
console.log(date);
