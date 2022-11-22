/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!******************************!*\
  !*** ./resources/js/home.js ***!
  \******************************/
function limpa_formulário_cep() {
  //Limpa valores do formulário de cep.
  document.getElementById('rua').value = "";
  document.getElementById('bairro').value = "";
  document.getElementById('cidade').value = "";
  document.getElementById('uf').value = "";
  document.getElementById('ibge').value = "";
}
function meu_callback(conteudo) {
  if (!("erro" in conteudo)) {
    //Atualiza os campos com os valores.
    document.getElementById('rua').value = conteudo.logradouro;
    document.getElementById('bairro').value = conteudo.bairro;
    document.getElementById('cidade').value = conteudo.localidade;
    document.getElementById('uf').value = conteudo.uf;
    document.getElementById('ibge').value = conteudo.ibge;
  } //end if.
  else {
    //CEP não Encontrado.
    limpa_formulário_cep();
    alert("CEP não encontrado.");
  }
}
function pesquisacep(valor) {
  //Nova variável "cep" somente com dígitos.
  var cep = valor.replace(/\D/g, '');

  //Verifica se campo cep possui valor informado.
  if (cep != "") {
    //Expressão regular para validar o CEP.
    var validacep = /^[0-9]{8}$/;

    //Valida o formato do CEP.
    if (validacep.test(cep)) {
      //Preenche os campos com "..." enquanto consulta webservice.
      document.getElementById('rua').value = "...";
      document.getElementById('bairro').value = "...";
      document.getElementById('cidade').value = "...";
      document.getElementById('uf').value = "...";
      document.getElementById('ibge').value = "...";

      //Cria um elemento javascript.
      var script = document.createElement('script');

      //Sincroniza com o callback.
      script.src = 'https://viacep.com.br/ws/' + cep + '/json/?callback=meu_callback';

      //Insere script no documento e carrega o conteúdo.
      document.body.appendChild(script);
    } //end if.
    else {
      //cep é inválido.
      limpa_formulário_cep();
      alert("Formato de CEP inválido.");
    }
  } //end if.
  else {
    //cep sem valor, limpa formulário.
    limpa_formulário_cep();
  }
}
;

// var allowDelete = function (req, res, next) {
//     res.append("Access-Control-Allow-Methods", "DELETE");
//     res.append("Access-Control-Allow-Origin", "*");
//     res.append("Access-Control-Allow-Methods", "GET, PUT, POST, DELETE");
//     res.append(
//       "Access-Control-Allow-Headers",
//       "Origin, X-Requested-With, Content-Type, Accept, Authorization"
//     );
//     next();
//   };

// let cep = document.querySelector('#cep').value
// let button = document.querySelector('.button')
// const  consultarendereco = ()=>{

// //     if(cep.length !== 8){
// // // return;
// //     }
// let urls = `https://cep.awesomeapi.com.br/json/${cep}` 
//     let url = `https://viacep.com.br/ws/${cep}/json/`

//     fetch(urls).then((res)=>{
//         res.json().then((data)=>{
// console.log(data)
//         })
//     })
// }

// button.addEventListener('click',(e)=>{
//     e.preventDefault()
//     consultarendereco()
// })
/******/ })()
;