<dm-zawa>
    <template id="zawa-svg">
        <svg class="zawa" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 159.79 65.43">
            <g id="layer1">
                <path class="style" d="M19.47,17.54c-4.47,0-9.11,0-13.75,0C3.05,17.5.14,17.8.08,21s2.62,4.29,5.64,4.28c5.16,0,10.42.61,15.46-.15C30.57,23.7,33.77,31,40,36.6c-10.27,0-19.07,0-27.86,0-5.42,0-10.23,3.14-11.43,7.23C-1.21,50.39.91,59.72,5,62.34a7.48,7.48,0,0,0,3.71,1.23c13.15.1,26.3.06,39.46.09,2.15,0,3.59-.8,3.65-3.1.05-2-.78-3.64-2.87-4.12a18.13,18.13,0,0,0-4-.26q-14.48,0-29,0c-3.91,0-6.95-.8-6.8-5.76.14-4.66,1.63-6.23,6.86-6.25,10.32,0,20.65.06,31-.09,2.11,0,5,1.45,6.2-1.54s-.67-5.28-2.8-7.39c-2.86-2.84-6.1-5.38-8.85-9.58H49.3c2.71,0,3.89-1.48,4-4.06s-1.42-3.55-3.76-3.61c-1.16,0-2.34-.08-3.5,0-7.42.52-14.66.84-19-7.18a3.68,3.68,0,0,0-5.29-1.26c-2,1.18-3.24,2.9-2.44,5.4C19.55,15.62,20.06,16.33,19.47,17.54Z"></path>
                <path class="style" d="M88.35,25.45c1.48-5.7,0-7.63-5.81-7.7a13.58,13.58,0,0,0-2.49.11c-3.09.54-4.33-.67-3.92-3.79.44-3.33-.6-5.56-4.44-5.6-4,0-5.27,2.17-4.87,5.78.32,2.84-.47,4.49-3.77,4.13-2.85-.31-5.16.73-5.19,3.92,0,3.4,2.31,4.55,5.41,4.3,2.62-.22,3.4.92,3.48,3.48.22,7.23.07,14.25-4.43,20.51a50.74,50.74,0,0,0-4.12,8c-.73,1.53-1.31,3.27.26,4.6s4.08,1.72,5.49.17c2-2.23,3.32-1.11,5.29-.14,3.47,1.71,6.31-.13,6.46-4.07.16-4.16,0-8.33,0-12.49,0-5.89,5.11-11.88,10.62-12.58,7.12-.9,12.84,2.69,14.67,9.21,1.49,5.29-1.34,10.12-7.87,13.13-2.58,1.19-4.33,2.79-3.24,5.75s3.57,3.74,6.53,3.07c8-1.8,14.9-11.3,14.9-20.38,0-9.5-5.74-16.49-15.15-18.3C93.63,26,91,25.8,88.35,25.45Z"></path>
                <path class="style" d="M56.93,8.31c0-1.16,0-2.32,0-3.48C57,2.22,56.27,0,53.27,0c-2.76,0-4,2.1-4.08,4.73s-.08,5,0,7.45,1.24,4.26,3.88,4.29c3,0,3.86-2,3.81-4.68C56.9,10.63,56.92,9.47,56.93,8.31Z"></path>
                <path class="style" d="M46.67,8.5C46,5.4,48.45.08,42.7.16c-5,.07-3.85,4.92-3.83,8.23s-1.19,8,4.07,7.93C48,16.27,46.19,11.61,46.67,8.5Z"></path>
                <path class="style" d="M145.88,39.57c-.41-3.44-2.31-5.47-5.84-5.51s-5.64,2.29-5.65,5.65a5.29,5.29,0,0,0,5.75,5.62C143.53,45.27,145.59,43.19,145.88,39.57Z"></path>
                <path class="style" d="M148.34,39.68c.34,3.51,2.23,5.7,5.74,5.63s5.76-2.16,5.7-5.67S157.65,34,154,34,148.66,36.18,148.34,39.68Z"></path>
                <path class="style" d="M124.59,33.92c-3.66.31-5.79,2.28-5.84,5.72s2.23,5.66,5.65,5.68,5.65-2.09,5.64-5.65S127.95,34.26,124.59,33.92Z"></path>
            </g>
        </svg>
    </template>

    <style>
        :scope {
            display: block;
            position: relative;
            width: calc(120% - 50px);
            height: calc(120% - 20px);
            top: -10%;
            left: -10%;
            z-index: 1000;
            pointer-events: none;
        }

        .zawa {
            position: absolute;
            animation: zawa 3s forwards;
            animation-delay: 1s;
            width: 50px;
            height: auto;
        }

        @keyframes zawa {
            0% {
                opacity: 1;
            }
            100% {
                opacity: 0;
            }
        }

        .style {
            fill: #fff;
        }
    </style>


    <script>
        this.setValue = function (value) {
            clearInterval(this.worker)
            // インターバル
            let interval = parseInt(10000 / (parseInt(value) + 1))
            this.worker = setInterval(function () {
                // ざわ表示
                var zawa = this.root.querySelector('#zawa-svg').content.cloneNode(true).children[0]
                zawa.style.top = Math.floor(Math.random() * (101 - 1) + 1) + '%'
                zawa.style.left = Math.floor(Math.random() * (101 - 1) + 1) + '%'
                var tag = this.root
                tag.appendChild(zawa)
                // ざわ消去
                setTimeout((parent, child) => {
                    parent.removeChild(child)
                }, 2000, this.root, zawa)
            }.bind(this), interval)
        }.bind(this)

        // 初期値をセット
        this.on('mount', function () {
            this.setValue(opts.dataValue || 0)
        }.bind(this));

        // 属性値の更新による自動更新
        var observer = new MutationObserver(function (mutationRecords, mutationObserver) {
            this.setValue(mutationRecords[0].target.dataset.value)
        }.bind(this))
        observer.observe(this.root, {
            attributes: true,
            attributeFilter: ['data-value']
        })
    </script>
</dm-zawa>