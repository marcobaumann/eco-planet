module.exports = {
    dev: {
        bsFiles: {
            src : [
                'dist/css/*.min.css',
                'dist/js/**/*.js',
                {
                    match: ['*.php', 'templates/**/*.php', 'template-pages/**/*.php', '**/*.php', '!node_modules/**/*.php'],
                    fn: function (event, file) {
                        this.reload('*.php');
                    }
                }
            ]
        },
        options: {
            watchTask: true,
            proxy: "ecoplanet.localhost",
            logPrefix: 'BS',
            open: false,
            reloadOnRestart: true,
            reloadDelay: 0
        }
    }
};