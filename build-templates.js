const glob = require('glob')
const ejs = require('ejs')
const path = require('path')
const mkdirDir = require('make-dir')
const fs = require('fs')

const baseTemplate = 'templates/index.ejs'
const srcDir = 'templates/pages'
const distDir = 'dist'

const entries = [
    {
        src: 'about.ejs',
        page: path.resolve(srcDir, 'about.ejs'),
        title: '男メイドとは？',
        path: '/about'
    },
    {
        src: 'index.ejs',
        page: path.resolve(srcDir, 'index.ejs'),
        title: '男メイド',
        path: '/',
        bodyend: path.resolve(srcDir, 'index_bodyend.ejs'),
        headend: path.resolve(srcDir, 'index_headend.ejs')
    },
    {
        src: 'components/index.ejs',
        page: path.resolve(srcDir, 'components/index.ejs'),
        title: 'Components | 男メイド',
        path: '/components/',
        headend: path.resolve(srcDir, 'components/index_headend.ejs')
    },
    {
        src: 'components/dm-gauge2.ejs',
        page: path.resolve(srcDir, 'components/dm-gauge2.ejs'),
        title: 'Components | 男メイド',
        path: '/components/dm-gauge2',
        headend: path.resolve(srcDir, 'components/dm-gauge2_headend.ejs')
    },
    {
        src: 'components/dm-zawa.ejs',
        page: path.resolve(srcDir, 'components/dm-zawa.ejs'),
        title: 'Components | 男メイド',
        path: '/components/dm-zawa',
        headend: path.resolve(srcDir, 'components/dm-zawa_headend.ejs')
    }
]

for (const entry of entries) {
    ejs.renderFile(baseTemplate, entry, (err, str) => {
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
