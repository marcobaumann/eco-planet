module.exports = {
    dev: {
        options: {
            sourceMap: true,
            sourceMapIncludeSources: true,
            sourceMapName: 'dist/js/application.map',
            beautify: false,
            compress: true
        },
        files: {
            'dist/js/application.js': [
                'src/js/**/*.js',
                '!**/vendor/**'
            ]
        }
    },
    build: {
        options: {
            sourceMap: true,
            sourceMapIncludeSources: true,
            sourceMapName: 'dist/js/application.map',
            beautify: false,
            compress: true
        },
        files: {
            'dist/js/application.js': [
                'src/js/**/*.js',
                '!**/vendor/**'
            ]
        }
    }
}