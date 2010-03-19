// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function moveEvent(event, dayDelta, minuteDelta, allDay){
    jQuery.ajax({
        data: 'id=' + event.id + '&title=' + event.title + '&day_delta=' + dayDelta + '&minute_delta=' + minuteDelta + '&all_day=' + allDay,
        dataType: 'script',
        type: 'post',
        url: "/events/move"
    });
}

function resizeEvent(event, dayDelta, minuteDelta){
    jQuery.ajax({
        data: 'id=' + event.id + '&title=' + event.title + '&day_delta=' + dayDelta + '&minute_delta=' + minuteDelta,
        dataType: 'script',
        type: 'post',
        url: "/events/resize"
    });
}

function showEventDetails(event){
    $('#event_desc').html(event.description);
    $('#edit_event').html("<a href = 'javascript:void(0);' onclick ='editEvent("+event.id+")'>Edit</a>");
    $('#delete_event').html("<a href = 'javascript:void(0);' onclick ='deleteEvent("+event.id+")'>Delete</a>");
    $('#desc_dialog').dialog({
        title: event.title,
        modal: true,
        width: 500,
        close: function(event, ui) { $('#desc_dialog').dialog('destroy') }

    });
    
}


function editEvent(event_id){
    jQuery.ajax({
        data: 'id=' + event_id,
        dataType: 'script',
        type: 'get',
        url: "/events/edit"
    });  
}

function deleteEvent(event_id){
    jQuery.ajax({
        data: 'id=' + event_id,
        dataType: 'script',
        type: 'post',
        url: "/events/destroy"
    });  
}
