module.exports = (grunt) ->

	grunt.initConfig

		clean: ["build"]

		copy:
			images:
				expand: true
				cwd: 'source/images/'
				src: ['**']
				dest: 'build/images/'

		jade:
			run:
				files:
					"build/index.html": "source/pages/index.jade"

		coffee:
			compile:
				files:
					'build/main.js': 'source/scripts/main.coffee'

		stylus:
			options:
				'include css': true
			compile:
				files:
					'build/main.css': 'source/styles/main.styl'

		connect:
			server:
				options:
					base: 'build'
					open: true

		watch:
			options:
				livereload: true
			files: ['source/**/*']
			tasks: ['clean', 'copy', 'jade', 'coffee', 'stylus']

	grunt.loadNpmTasks('grunt-contrib-clean')
	grunt.loadNpmTasks('grunt-contrib-copy')
	grunt.loadNpmTasks('grunt-contrib-jade')
	grunt.loadNpmTasks('grunt-contrib-coffee')
	grunt.loadNpmTasks('grunt-contrib-stylus')
	grunt.loadNpmTasks('grunt-contrib-connect')
	grunt.loadNpmTasks('grunt-contrib-watch')

	grunt.registerTask('default', ['clean', 'copy', 'jade', 'coffee', 'stylus', 'connect', 'watch'])
	