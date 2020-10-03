// function previewImage(obj)
// {
// 	var fileReader = new FileReader();
// 	fileReader.onload = (function() {
// 		document.getElementById('preview').src = fileReader.result;
// 	});
// 	fileReader.readAsDataURL(obj.files[0]);
// }




















// $(document).on(function () {
//   $(function () {
//     // 画像をプレビュー表示させる.prev-contentを作成
//     function buildHTML(clip) {
//       var html =
//         `
//         <div class="prev-content">
//           <video preload="none" controls="controls" src="${clip}" class="clip-image"></video>
//         </div>
//         `
//       return html;
//     }

//     // 画像が選択された時に発火します
//     $(document).on('change', '.hidden_file', function () {
//       // .file_filedからデータを取得して変数fileに代入します
//       var file = this.files[0];
//       // FileReaderオブジェクトを作成します
//       var reader = new FileReader();
//       // DataURIScheme文字列を取得します
//       reader.readAsDataURL(file);
//       // 読み込みが完了したら処理が実行されます
//       reader.onload = function () {
//         // 読み込んだファイルの内容を取得して変数imageに代入します
//         var clip = this.result;
//         // プレビュー画像がなければ処理を実行します
//         if ($('.prev-content').length == 0) {
//           // 読み込んだ画像ファイルをbuildHTMLに渡します
//           var html = buildHTML(clip)
//           // 作成した.prev-contentをiconの代わりに表示させます
//           $('.prev-contents').prepend(html);
//           // 画像が表示されるのでiconを隠します
//           $('.clipArea').hide();
//         } else {
//           // もし既に画像がプレビューされていれば画像データのみを入れ替えます
//           $('.prev-content .clip-image').attr({ src: image });
//         }
//       }
//     });
//   });
// });