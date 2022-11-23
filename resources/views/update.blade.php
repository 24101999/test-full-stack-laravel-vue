@extends('header')

<div id="api">
    <div class="formulario-up" >
        <div class="form-up" class="">
            <form action="{{route('up', [$update[0]->id])}}" method="POST">
                @csrf
                @method("put")
                <input type="text" class="input" :class="inp" id="cep" onblur="pesquisacep(this.value);" name="cep" value="{{$update[0]->CEP}}">
                <input type="text" class="input" :class="inp" id="uf" name="estado" value="{{$update[0]->estado}}">
                <input type="text" class="input" :class="inp" id="cidade" name="cidade" value="{{$update[0]->cidade}}">
                <input type="text" class="input" :class="inp" id="bairro" name="bairro" value="{{$update[0]->bairro}}">
                <input type="text" class="input" :class="inp" id="rua" name="endereco" value="{{$update[0]->endereco}}">
                <input type="text" class="input" :class="inp" name="numero" value="{{$update[0]->numero}}">
                <input type="text" class="input" :class="inp" name="nomecontato" value="{{$update[0]->nomeContato}}">
                <input type="text" class="input" :class="inp" name="emailcontato" value="{{$update[0]->emailContato}}">
                <input type="text" class="input" :class="inp" name="telefonecontato" value="{{$update[0]->telefoneContato}}">
                <button class="button" name="button" @@click="forminput()" type="submit">atualizar</button>
            </form>
        </div>
    </div>
</div>

<script type="module">

import {createApp} from Vue

createApp({
data() {
    return {
        ok:'henrique'
    }
},

methods: {
    test(){
        console.log(this.ok)
    }
},
mounted() {
    this.test()
},
}).mount('#api')

</script>
<script>
    
    function limpa_formulário_cep() {
            //Limpa valores do formulário de cep.
            document.getElementById('rua').value=("");
            document.getElementById('bairro').value=("");
            document.getElementById('cidade').value=("");
            document.getElementById('uf').value=("");
            // document.getElementById('ibge').value=("");
    }

    function meu_callback(conteudo) {
        if (!("erro" in conteudo)) {
            //Atualiza os campos com os valores.
            document.getElementById('rua').value=(conteudo.logradouro);
            document.getElementById('bairro').value=(conteudo.bairro);
            document.getElementById('cidade').value=(conteudo.localidade);
            document.getElementById('uf').value=(conteudo.uf);
            // document.getElementById('ibge').value=(conteudo.ibge);
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
            if(validacep.test(cep)) {

                //Preenche os campos com "..." enquanto consulta webservice.
                document.getElementById('rua').value="...";
                document.getElementById('bairro').value="...";
                document.getElementById('cidade').value="...";
                document.getElementById('uf').value="...";
                // document.getElementById('ibge').value="...";

                //Cria um elemento javascript.
                var script = document.createElement('script');

                //Sincroniza com o callback.
                script.src = 'https://viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback';

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
    };

    </script>