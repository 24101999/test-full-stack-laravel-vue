<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class HomeController extends Controller
{
    public function index()
    {
        $get = DB::table('contatos')->get();

        \print_r(\json_encode($get));
    }

    public function insert()
    {

        $cep = \filter_input(\INPUT_POST, 'cep');
        $estado = \filter_input(\INPUT_POST, 'estado');
        $cidade = \filter_input(\INPUT_POST, 'cidade');
        $bairro = \filter_input(\INPUT_POST, 'bairro');
        $endereco = \filter_input(\INPUT_POST, 'endereco');
        $numero = \filter_input(\INPUT_POST, 'numero');
        $nomeContato = \filter_input(\INPUT_POST, 'nomecontato');
        $emailContato = \filter_input(\INPUT_POST, 'emailcontato');
        $telefonecontato = \filter_input(\INPUT_POST, 'telefonecontato');

        Mail::send('mail', ['test' => $emailContato], function ($m) {
            $m->from('xbox_2013@outlook.com.br', 'henrique');
            $m->subject('test de email');
            $m->to('henriquedasilvacosta@live.com');
        });

        if ($cep and $estado and $cidade and  $bairro and $endereco and $numero and $nomeContato and  $emailContato and  $telefonecontato) {
            $insert = DB::table('contatos')->insert(['CEP' => $cep, 'estado' => $estado, 'cidade' => $cidade, 'bairro' => $bairro, 'endereco' => $endereco, 'numero' => $numero, 'nomeContato' => $nomeContato, 'emailContato' => $emailContato, 'telefoneContato' => $telefonecontato]);
        }

        return \view('home', ['cep' => $cep, 'estado' => $estado, 'cidade' => $cidade, 'bairro' => $bairro, 'endereco' => $endereco, "numero" => $numero, 'nomeContato' => $nomeContato, 'emailContato' => $emailContato, 'telefoneContato' => $telefonecontato]);
    }
    public function delete($id)
    {

        $delete = DB::table('contatos')->where('id', $id)->delete();

        return \redirect('/');

        return \view('home', ['id' => $id, 'delete' => $delete]);
    }
    public function update($id)
    {
        $update = DB::table('contatos')->where('id', $id)->get();

        return view('update', ['id' => $id, 'update' => $update]);
    }
    public function up($id)
    {


        $update = DB::table('contatos')->where('id', $id)->get();

        $cep = \filter_input(\INPUT_POST, 'cep');
        $estado = \filter_input(\INPUT_POST, 'estado');
        $estadoselect = '';
        $cidade = \filter_input(\INPUT_POST, 'cidade');
        $bairro = \filter_input(\INPUT_POST, 'bairro');
        $endereco = \filter_input(\INPUT_POST, 'endereco');
        $numero = \filter_input(\INPUT_POST, 'numero');
        $nomeContato = \filter_input(\INPUT_POST, 'nomecontato');
        $emailContato = \filter_input(\INPUT_POST, 'emailcontato');
        $telefonecontato = \filter_input(\INPUT_POST, 'telefonecontato');

        if ($cep and $estado and $cidade and  $bairro and $endereco and $numero and $nomeContato and  $emailContato and  $telefonecontato) {
            $up = DB::table('contatos')->where('id', $id)->update(['CEP' => $cep, 'estado' => $estado, 'cidade' => $cidade, 'bairro' => $bairro, 'endereco' => $endereco, 'numero' => $numero, 'nomeContato' => $nomeContato, 'emailContato' => $emailContato, 'telefoneContato' => $telefonecontato]);
        }
        if (empty($cep) || empty($estado) || empty($cidade) || empty($bairro) || empty($endereco) || empty($numero) || empty($nomeContato) || empty($emailContato) || empty($telefonecontato)) {
            return \redirect('/');
        }
        return \redirect('/');

        // print_r($_POST['button']);


        return \view('home', ['id' => $id, 'update' => $update]);
    }
}