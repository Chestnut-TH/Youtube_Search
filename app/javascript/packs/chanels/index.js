// 追加
$('#plus').on('click', function(){
    var inputCount = $('#demo-area .unit').length;
    if (inputCount < maxCount){
      var element = $('#demo-area .unit:last-child').clone(true);// 末尾をイベントごと複製
      // 複製したinputのクリア
      var inputList = element[0].querySelectorAll('input[type="text"], textarea');
      for (var i = 0; i < inputList.length; i++) {
        inputList[i].value = "";
      }
      $('#demo-area .unit').parent().append(element);// 末尾追加
    }
  });
  // 削除
  $('.demo-minus').on('click', function(){// イベントごと複製しているのでonのselectorは未設定
    var inputCount = $('#demo-area .unit').length;
    if (inputCount > minCount){
      $(this).closest('.unit').remove();
    }
  });