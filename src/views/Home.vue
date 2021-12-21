<template>
  <div class="home">
    <div
      style="
        font-size: 2em;
        display: flex;
        height: 4em;
        justify-content: center;
        align-items: center;
      "
    >
      コンピュータ × 楽
    </div>
    <BasicFrame
      avatar="商い"
      style="display: flex; align-items: center; justify-content: center"
      >ビジネス</BasicFrame
    >
    <BasicFrame
      avatar="研究所"
      style="display: flex; align-items: center; justify-content: center"
      >ラボ</BasicFrame
    >
    <BasicFrame>交わる/カフェ</BasicFrame>

    <h3>雇わないITシステム担当者</h3>
    <h1>男メイド</h1>
    <h3>その情熱をITで支援します!!</h3>
    <p>
      貴社の経営理念に基づき、IT専門家の知識や経験を元に支援します。貴社の情熱を熱く語っていただくだけでOKです。3歩下がってついて行きます。
    </p>

    <h3>
      まずはご連絡ください。
      <a href="mailto:yamada@danmaid.com" target="_blank">email</a>
      <a
        href="https://twitter.com/messages/compose?recipient_id=4772061553"
        target="_blank"
        >twitter</a
      >
    </h3>
    <div>完全成果主義</div>
    <ul>
      <li>弊社発の何某に関し、費用は発生しません。</li>
      <p>
        何某の結果生じた貴社の利益に対し、利益分配をしていただきます。ex.
        Webの活用による顧客獲得案を立案させていただく場合、立案コスト、Web関連開発費用、Web関連維持費用、SEO等の対策費用等不要です。その代わり、Webの活用によって得られた顧客に対する利益を配分していただきます。
      </p>
      <li>貴社発の何某に関し、費用が発生します。</li>
      <p>
        その何某によってどんな利益が生じるのかわかりませんので、利益が生じると考えているかたに経費として計上していただく必要があると考えます。ex.
        「メール送っといて」とか「資料用意しといて」とか「会議参加して」とか「ホームページのココ気に食わないから直して」とか。
      </p>
    </ul>
    <div>基本契約</div>
    <ul>
      <li>機密保持契約の締結</li>
    </ul>
    <div></div>
    <div>経費精算</div>
    <ul>
      <li>交通費</li>
      <li>通信費</li>
    </ul>
    <div>よくある質問</div>
    <ul>
      <li>
        Q. コンサルタントですか？
        <p>A. もっと気軽に、従業員と思ってください。</p>
      </li>
      <li>
        Q. SIerやシステム開発会社ですか？
        <p>A. もっと気軽に、従業員と思ってください。</p>
      </li>
      <li>
        Q. 既にITシステム担当者がいるのだけど？
        <p>A. 一緒にやりましょう。</p>
      </li>
      <li>
        Q. 既にシステム関係の商流があるから間に入れられないけどいいの？
        <p>
          A.
          全く問題ありません。システムを作ったり管理したりすることをビジネスとしているわけではなく、システムを使ってお客様のビジネスを支援することが我々のビジネスです。
        </p>
      </li>
    </ul>
    <h3>
      まずはご連絡ください。
      <a href="mailto:yamada@danmaid.com" target="_blank">email</a>
      <a
        href="https://twitter.com/messages/compose?recipient_id=4772061553"
        target="_blank"
        >twitter</a
      >
    </h3>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import BasicFrame from '@/components/BasicFrame.vue'

export default Vue.extend({
  name: 'Home',
  components: { BasicFrame },
})
</script>
