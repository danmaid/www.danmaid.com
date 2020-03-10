<!-- args: data = commits object -->
<dm-update-github>
    <div class="row" each="{ commit in opts.data }">
        <div class="date">{ (new Date(commit.commit.committer.date)).toLocaleDateString() }</div>
        <div class="message">{ commit.commit.message }</div>
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
</dm-update-github>

<!-- args: data = posts object -->
<dm-update-wordpress>
    <div class="row" each="{ post in opts.data }">
        <a href="{ post.link }">
            <div class="date">{ (new Date(post.modified_gmt)).toLocaleDateString() }</div>
            <div class="message">{ post.title.rendered }</div>
        </a>
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
</dm-update-wordpress>