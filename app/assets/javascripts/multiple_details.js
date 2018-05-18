$(document).ready(function () {

    $('#q_details_contains_input').append($('<a class="pointer details-contains-or">OR</a>'));
    $('textarea[name="q[details_contains]"]')[0].name += '[]';

    $(document).delegate('.details-contains-or', 'click', function () {
        var identifier = Date.now() % 1000;
        var $parent = $(this).parents('div[id^=q_details_contains_input]');
        var $element = $parent.clone().attr('id', 'q_details_contains_input' + identifier);
        $element.find('textarea').attr({'name': 'q[details_contains][]', 'id': 'q_details_contains' + identifier }).val('').html('');
        $parent.after($element);
        $(this).parent().append($(this).html());
        $(this).remove();

    });

    var params = getUrlParameters();

    if (params.has("q[details_contains][]")) {
        var detailsParams = params.get("q[details_contains][]");

        for (var i = 0; i < detailsParams.length; i++) {
            if (i > 0) $('.details-contains-or').click();
            $('textarea[name="q[details_contains][]"]').eq(i).val(detailsParams[i]).html(detailsParams[i]);
        }


    }

});
function getUrlParameters() {
    var pageParamString = decodeURIComponent(window.location.search.substring(1));
    var paramsArray = pageParamString.split('&');
    var paramsHash = new Map();
    for (var i = 0; i < paramsArray.length; i++) {
        var singleParam = paramsArray[i].split('=');

        if (paramsHash.has(singleParam[0])) {
            paramsHash.get(singleParam[0]).push(singleParam[1]);
        } else {
            paramsHash.set(singleParam[0], [singleParam[1]]);
        }
    }

    return paramsHash
}
