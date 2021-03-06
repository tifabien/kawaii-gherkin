set -x
if [ "$TRAVIS_PHP_VERSION" = '7.0' ] ; then
    ./vendor/bin/phpunit --disallow-test-output --report-useless-tests --coverage-clover ./clover.xml
    wget https://scrutinizer-ci.com/ocular.phar
    php ocular.phar code-coverage:upload --format=php-clover ./clover.xml
fi
