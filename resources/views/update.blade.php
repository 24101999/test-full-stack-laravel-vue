@extends('header')

<div id="api">
    <div class="formulario-up" >
        <div class="form-up" class="">
            <form action="{{route('up', [$update[0]->id])}}" method="POST">
                @csrf
                @method("put")
                <input type="text" id="cep" onblur="pesquisacep(this.value);" name="cep" placeholder="{{$update[0]->CEP}}">
                <input type="text" id="uf" name="estado" placeholder="{{$update[0]->estado}}">
                <input type="text" id="cidade" name="cidade" placeholder="{{$update[0]->cidade}}">
                <input type="text" id="bairro" name="bairro" placeholder="{{$update[0]->bairro}}">
                <input type="text" id="rua" name="endereco" placeholder="{{$update[0]->endereco}}">
                <input type="text" name="numero" placeholder="{{$update[0]->numero}}">
                <input type="text" name="nomecontato" placeholder="{{$update[0]->nomeContato}}">
                <input type="text" name="emailcontato" placeholder="{{$update[0]->emailContato}}">
                <input type="text" name="telefonecontato" placeholder="{{$update[0]->telefoneContato}}">
                <button class="button" name="button" type="submit">atualizar</button>
            </form>
        </div>
    </div>
</div>
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