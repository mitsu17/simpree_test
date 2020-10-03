$(document).on('turbolinks:load', function () {
  $(function () {
    // 画像をプレビュー表示させる.prev-contentを作成
    function buildHTML(clip) {
      var html =
        `
        <div class="preview-conrtent">
          <video src="${clip}", alt="preview" class="prev-clip">
        </div>
        `
      return html;
    }