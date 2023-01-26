
function write_confirm(){
    var title = document.getElementById('title');
    var contents = document.getElementById('contents');

    if(title.value == ''){
        alert('제목을 작성해주세요');
        return false;
    }

    if(contents.value == ''){
        alert('내용을 작성해주세요');
        return false;
    }

    return true;
}

function delete_confirm(num){
    var result = confirm('글을 삭제하시겠습니까?');
    if(result == true)
        location.href='board_delete?board_num='+num
}