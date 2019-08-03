const glob = require('glob')
const ejs = require('ejs')
const path = require('path')
const mkdirDir = require('make-dir')
const fs = require('fs')

const baseTemplate = 'templates/index.ejs'
const srcDir = 'templates/pages'
const distDir = 'dist'

const entries = [
    { src: 'about.ejs', title: 'あばうと' },
    { src: 'aa/aa1.ejs', title: 'aa1' }
]

for (const entry of entries) {
    const options = {
        page: path.resolve(srcDir, entry.src),
        title: entry.title
    }

    ejs.renderFile(baseTemplate, options, (err, str) => {
        if (err) {
            console.log(err)
            return
        }

        const distFile = path.join(distDir, entry.src)
        mkdirDir(path.dirname(distFile)).then(() => {
            const distPath = path.format({
                dir: path.dirname(distFile),
                name: path.basename(distFile, ".ejs"),
                ext: ".html"
            })
            fs.writeFile(distPath, str, () => { })
        })
    })
}
