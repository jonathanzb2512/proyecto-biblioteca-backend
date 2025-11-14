<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Paths
    |--------------------------------------------------------------------------
    |
    | Aquí defines las rutas donde se aplicará la política CORS.
    | Incluimos las rutas API y la de Sanctum para el manejo de cookies CSRF.
    |
    */

   'paths' => ['api/*', 'sanctum/csrf-cookie', 'login', 'logout'],

    /*
    |--------------------------------------------------------------------------
    | Allowed Methods
    |--------------------------------------------------------------------------
    |
    | Puedes especificar qué métodos HTTP se permiten. Usar ['*'] permite todos.
    |
    */

    'allowed_methods' => ['*'],

    /*
    |--------------------------------------------------------------------------
    | Allowed Origins
    |--------------------------------------------------------------------------
    |
    | Aquí defines los dominios desde donde se permiten las solicitudes.
    | Debe coincidir exactamente con la URL de tu proyecto React.
    |
    */

    'allowed_origins' => ['http://localhost:5174'],

    /*
    |--------------------------------------------------------------------------
    | Allowed Headers
    |--------------------------------------------------------------------------
    |
    | Define qué cabeceras pueden incluirse en las solicitudes.
    | Usar ['*'] permite todas.
    |
    */

    'allowed_headers' => ['*'],

    /*
    |--------------------------------------------------------------------------
    | Exposed Headers
    |--------------------------------------------------------------------------
    |
    | Define qué cabeceras pueden ser expuestas al navegador.
    | Generalmente se deja vacío.
    |
    */

    'exposed_headers' => [],

    /*
    |--------------------------------------------------------------------------
    | Max Age
    |--------------------------------------------------------------------------
    |
    | Define cuánto tiempo (en segundos) el navegador puede cachear la respuesta
    | de la solicitud de preflight (OPTIONS).
    |
    */

    'max_age' => 0,

    /*
    |--------------------------------------------------------------------------
    | Supports Credentials
    |--------------------------------------------------------------------------
    |
    | Si tu frontend envía cookies o encabezados de autenticación,
    | esta opción debe estar en true.
    |
    */

    'supports_credentials' => true,
];
