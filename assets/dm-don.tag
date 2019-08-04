<!-- args: data = timeline object -->
<dm-don-timeline>
    <article each="{ toot in data }" class="toot">
        <div class="avatar" style="background-image: url({ toot.account.avatar })"></div>
        <dm-don-content class="content" content="{ toot.content }"></dm-don-content>
    </article>

    <style>
        .toot {
            padding: 8px;
            padding-left: calc(8px + 32px + 8px);
            position: relative;
            min-height: 32px;
            border-bottom: 1px solid rgb(57, 57, 63);
            background-color: rgb(38, 38, 42);
            color: rgb(209, 209, 231);
            font-size: 0.8em;
            line-height: 1.4;
        }

        .toot:last-child {
            border-bottom: inherit;
        }

        .toot .content {
            height: calc(100% - 8px - 4px - 24px);
            background-color: rgb(38, 38, 42);
            color: rgb(209, 209, 231);
            overflow-y: auto;
            overflow-x: hidden;
            display: unset;
        }


        .toot .avatar {
            height: 32px;
            width: 32px;
            background-size: 32px;
            border-radius: 4px;
            position: absolute;
            left: 8px;
        }

        .toot p {
            margin: 0;
        }

        .toot .invisible {
            display: none;
        }
    </style>

    <script>
        fetch('https://don.danmaid.com/api/v1/timelines/public')
            .then(r => r.json())
            .then(x => {
                this.data = x
                this.update()
            })
    </script>
</dm-don-timeline>

<dm-don-content>
    this.root.innerHTML = opts.content
</dm-don-content>