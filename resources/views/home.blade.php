@extends('header')

<style>
form{
    display: flex;
    flex-direction: column;
}
</style>

<div id='app'>
    
    <div class="formulario" >
        <div class="form" id="form" :class="op">
            <button @@click='fechar()'>FECHAR</button>
            <form method="POST">
                @csrf
                    <input type="text" id="cep" name="cep" onblur="pesquisacep(this.value);" placeholder="CEP">
                    <input type="text" id="uf" name="estado" placeholder="Estado">

                    <input type="text" id="cidade" name="cidade" placeholder="Cidade">
                    <input type="text" id="bairro" name="bairro" placeholder="Bairro">
                    <input type="text" id="rua" name="endereco" placeholder="Endereço">
                    <input type="text" name="numero" placeholder="Numero">
                    <input type="text" name="nomecontato" placeholder="Nome do contato">
                    <input type="text" name="emailcontato" placeholder="E-mail docontato">
                    <input type="text" name="telefonecontato" placeholder="Telefone do contato">
                    <button type="submit" class="button" id="buttonInsert">CADASTRAR</button>
            </form>
        </div>
    </div>
    <button @@click="opened()">CADASTRAR</button>
    <div class="infos">
        <div class="dados" v-for="(dado , i) in dados" >
            <p>CEP: @{{dado.CEP}} </p>
            <p>Estado:@{{dado.estado}}</p>
            <p>Cidade:@{{dado.cidade}}</p>
            <p>Bairro:@{{dado.bairro}}</p>
            <p>Endereço:@{{dado.endereco}}</p>
            <p>Numero:@{{dado.numero}}</p>
            <p>Nome do contato:@{{dado.nomeContato}}</p>
            <p>E-mail docontato:@{{dado.emailContato}}</p>
            <p>Telefone do contato:@{{dado.telefoneContato}}</p>
            <div class="buttons">
                <a :href="urlup+dado.id">
                    <button>atualizar</button>
                </a>
                <a :href="url+dado.id">
                    <button>deletar</button>
                </a>
            </div>
        </div>
    </div>
</div>

{{-- codigo vue --}}
<script type="module">

const input = document.querySelectorAll(".input")


    import {createApp} from 'https://unpkg.com/vue@3/dist/vue.esm-browser.js'
createApp({
    data() {
        return {
            dados:[],
            op:'',
            url:'http://127.0.0.1:8000/delete',
            urlup:'http://127.0.0.1:8000/update',
        }
    },
    methods: {
        fechar(){
            this.op = ''
        },
        opened(){
this.op = 'open'
        },
        get(){
const th = this
axios.get('http://127.0.0.1:8000/api').then(function(res){
    th.dados = res.data
    console.log(th.dados)
})
},
    },
    mounted() {
        // setInterval(this.get, 1000)
        this.get()
    },
}).mount("#app")

</script>

{{-- codigo vue --}}

{{-- api cep --}}
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
    {{-- api cep --}}