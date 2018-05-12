<dm-gauge2>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 20">
        <g id="layer1">
            <rect class="inactive" data-inactive="inactive" data-active="active" x="0" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="2" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="4" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="6" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="8" width="1" height="20" />

            <rect class="inactive" data-inactive="inactive" data-active="active" x="10" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="12" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="14" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="16" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="18" width="1" height="20" />

            <rect class="inactive" data-inactive="inactive" data-active="active" x="20" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="22" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="24" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="26" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="28" width="1" height="20" />

            <rect class="inactive" data-inactive="inactive" data-active="active" x="30" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="32" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="34" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="36" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="38" width="1" height="20" />

            <rect class="inactive" data-inactive="inactive" data-active="active" x="40" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="42" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="44" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="46" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="48" width="1" height="20" />

            <rect class="inactive" data-inactive="inactive" data-active="active" x="50" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="52" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="54" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="56" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="58" width="1" height="20" />

            <rect class="inactive" data-inactive="inactive" data-active="active" x="60" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="62" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="64" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="66" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active" x="68" width="1" height="20" />

            <rect class="inactive" data-inactive="inactive" data-active="active-middle" x="70" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active-middle" x="72" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active-middle" x="74" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active-middle" x="76" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active-middle" x="78" width="1" height="20" />

            <rect class="inactive" data-inactive="inactive" data-active="active-middle" x="80" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active-middle" x="82" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active-middle" x="84" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active-middle" x="86" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active-middle" x="88" width="1" height="20" />

            <rect class="inactive" data-inactive="inactive" data-active="active-high" x="90" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active-high" x="92" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active-high" x="94" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active-high" x="96" width="1" height="20" />
            <rect class="inactive" data-inactive="inactive" data-active="active-high" x="98" width="1" height="20" />
        </g>
    </svg>

    <style>
        :scope {
            display: block;
        }

        svg {
            width: 100%;
            height: 100%;
        }

        .inactive {
            fill: #333;
        }

        .active {
            fill: #668aff;
        }

        .active-middle {
            fill: #d9e021
        }

        .active-high {
            fill: #c1272d
        }
    </style>

    <script>
        // 値は 0 ～ 100 の範囲が有効。それ以上はエラーにしないけど意味がない。

        // 値の更新処理
        this.setValue = function (value) {
            let list = this.root.querySelector('#layer1').children;

            for (let i = 0; i < list.length; ++i) {
                let item = list[i];
                // edge だと dataset が取れないようなので。
                let inactive = item.dataset ? item.dataset.inactive : item.getAttribute('data-inactive')
                let active = item.dataset ? item.dataset.active : item.getAttribute('data-active')
                if (i < (value / 2)) {
                    item.classList.remove(inactive);
                    item.classList.add(active);
                } else {
                    item.classList.remove(active);
                    item.classList.add(inactive);
                }
            }
        }.bind(this)

        // 初期値をセット
        this.on('mount', function () {
            this.setValue(opts.dataValue || 0);
        }.bind(this));

        // 属性値の更新による自動更新
        var observer = new MutationObserver(function (mutationRecords, mutationObserver) {
            this.setValue(mutationRecords[0].target.dataset.value);
        }.bind(this));
        observer.observe(this.root, {
            attributes: true,
            attributeFilter: ['data-value']
        });
    </script>
</dm-gauge2>