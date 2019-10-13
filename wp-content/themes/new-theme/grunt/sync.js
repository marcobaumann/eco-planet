module.exports = {
    fonts:{
        files: [{
            cwd: 'assets/fonts',
            src: [
                '*'
            ],
            dest: 'dist/fonts',
            expand: true
        }],
        pretend: false
    },
    images:{
        files: [{
            cwd: 'assets/img',
            src: [
                '**/*'
            ],
            dest: 'dist/img',
        }],
        pretend: false,
        verbose: true
    },
    vendorcss:{
        files: [{
            cwd: 'src/css',
            src: [
                '**'
            ],
            dest: 'dist/css',
        }],
        pretend: false,
        verbose: true
    },
    vendorjs:{
        files: [{
            cwd: 'src/js/vendor',
            src: [
                '**'
            ],
            dest: 'dist/js/vendor',
        }],
        pretend: false,
        verbose: true
    }
}