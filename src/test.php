<?php

file_put_contents("output/" . getenv("TRAVIS_PHP_VERSION") . "/" . time() . ".log", time() . " PHP Version: " . phpversion() );

?>
