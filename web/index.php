<?php 

$config = array();
switch($_SERVER['HTTP_HOST']){

    case 'localhost':
    case 'localhost:8888':
    case 'localhost:8080':
        $config['debug'] = true;
        $config['db_host'] = 'localhost';
        $config['db_name'] = 'web-doc-crack';
        $config['db_user'] = 'root';
        $config['db_pass'] = '';
        break;

};

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Validator\Constraints\Length;

error_reporting(E_ALL);
ini_set('display_errors', 1);

// Require dependendies
$loader = require_once __DIR__.'/../vendor/autoload.php';
$loader->addPsr4('Site\\', __DIR__.'/../src/');

// Init Silex
$app = new Silex\Application();
$app['config'] = $config;
$app['debug'] = $app['config']['debug'];

// Services
$app->register(new Silex\Provider\TwigServiceProvider(), array(
    'twig.path' => __DIR__.'/../views',
));

$app->register(new Silex\Provider\DoctrineServiceProvider(), array(
    'db.options' => array (
        'driver'    => 'pdo_mysql',
        'host'      => $app['config']['db_host'],
        'dbname'    => $app['config']['db_name'],
        'user'      => $app['config']['db_user'],
        'password'  => $app['config']['db_pass'],
        'charset'   => 'utf8'
    ),
));

$app['db']->setFetchMode(PDO::FETCH_OBJ);

// Create routes
$app->get('/', function() use ($app){

    return $app['twig']->render('pages/home.twig');

})->bind('home');

$app->get('/map', function() use ($app){

    return $app['twig']->render('pages/map.twig');

})->bind('map');

$app->get('/chapter/{id}', function($id) use ($app){
    
    $data = array();

    $chaptersModel = new Site\Models\Chapter($app['db']);
    $data['chapter'] = $chaptersModel->getChapterById($id);

    if(!$data['chapter'])
    {
        $app->abort(404);
    }

    $data['slides'] = $data['chapter']->slides;

    return $app['twig']->render('pages/chapter.twig', $data);

})->assert('id', '\d+')->bind('chapter');

$app->error(function() use ($app)
            {
                $data = array();
                $data['title'] = 'Manque de crack';

                return $app['twig']->render('pages/error.twig', $data);
            });

// Run Silex NE PAS OUBLIER
$app->run();
