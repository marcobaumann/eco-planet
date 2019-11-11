module.exports = {
    dev: {
        options: {
            shorthandCompacting: false,
            roundingPrecision: -1
        },
        files: [{
            expand: true,
            cwd: 'dist/css',
            src: ['*.css', '!*.min.css'],
            dest: 'dist/css',
            ext: '.min.css'
        }]
    },
    build: {
        options: {
            shorthandCompacting: false,
            roundingPrecision: -1
        },
        files: [{
            expand: true,
            cwd: 'dist/css',
            src: ['*.css', '!*.min.css'],
            dest: 'dist/css',
            ext: '.min.css'
        },
        {
            expand: true,
            cwd: 'dist/css/vendor',
            src: ['*.css', '!*.min.css'],
            dest: 'dist/css/vendor',
            ext: '.css'   
        },
        {
            expand: true,
            cwd: 'dist/css/vendor/revolution',
            src: ['*.css', '!*.min.css'],
            dest: 'dist/css/vendor/revolution',
            ext: '.css'   
        },
        {
            expand: true,
            cwd: 'dist/css/vendor/colors',
            src: ['*.css', '!*.min.css'],
            dest: 'dist/css/vendor/colors',
            ext: '.css'   
        }]
    }
}