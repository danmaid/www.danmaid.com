<raw>
    this.root.innerHTML = opts.content
</raw>

<!-- args: data = timeline object -->
<dm-don-timeline>
    <a href="https://don.danmaid.com/">
        <header class="title">
            <img alt="Mastodon" src="https://don.danmaid.com/packs/logo_full-96e7a97fe469f75a23a74852b2478fa3.svg" class="logo">
            <i class="fas fa-comments mark"></i>最近の話題
        </header>
    </a>
    <section class="toots">
        <div each="{ toot in opts.data }" class="toot">
            <div class="avatar" style="background-image: url({ toot.account.avatar })"></div>
            <raw class="content" content="{ toot.content }"></raw>
        </div>
    </section>

    <style>
        .title {
            padding-left: 8px;
            padding-right: calc(8px + 98px + 8px);
            padding-top: 4px;
            padding-bottom: 4px;
            height: 24px;
            position: relative;
        }

        .title .logo {
            max-height: 24px;
            max-width: 98px;
            position: absolute;
            right: 8px;
        }

        .toots {
            max-height: calc(100% - 4px - 4px - 24px);
            overflow-y: auto;
            overflow-x: hidden;
        }

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
    </script>
</dm-don-timeline>

<!-- args: data = commits object -->
<dm-update>
    <div class="row" each="{ commit in opts.data.values }">
        <div class="date">{ (new Date(commit.date)).toLocaleDateString() }</div>
        <div class="message">{ commit.message }</div>
    </div>

    <style>
        .row {
            position: relative;
            font-size: 0.8em;
        }
        .date {
            position: absolute;
        }
        .message {
            padding-left: calc(72px + 8px);
        }
    </style>
    <script>
    </script>
</dm-update>