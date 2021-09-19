nrblonde = {}

$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })

    $("#nrblonde").click(function () {
        let inputValue = $("#nrblonde").val() 
        return;
    })
})

$(document).on('keydown', function() {
    switch(event.keyCode) {
        case 27:
            nrblonde.Close();
            break;
    }
});

nrblonde.Close = function() {
    $("#container").fadeOut(175);
    $.post('http://nrb-neon/close');
}

$("#neonsol").click(function() {
    $.post('https://nrb-neon/Neonsol', JSON.stringify({}));
});

$("#neonsag").click(function() {
    $.post('https://nrb-neon/Neonsag', JSON.stringify({}));
});

$("#neonon").click(function() {
    $.post('https://nrb-neon/Neonon', JSON.stringify({}));
});

$("#neonarka").click(function() {
    $.post('https://nrb-neon/Neonarka', JSON.stringify({}));
});

$("#neonhepsiac").click(function() {
    $.post('https://nrb-neon/Neonhepsiac', JSON.stringify({}));
});

$("#neonhepsikapat").click(function() {
    $.post('https://nrb-neon/Neonhepsikapat', JSON.stringify({}));
});

$("#neonkirmizi").click(function() {
    $.post('https://nrb-neon/Neonkirmizi', JSON.stringify({}));
});

$("#neonsari").click(function() {
    $.post('https://nrb-neon/Neonsari', JSON.stringify({}));
});

$("#neonyesil").click(function() {
    $.post('https://nrb-neon/Neonyesil', JSON.stringify({}));
});

$("#neonturuncu").click(function() {
    $.post('https://nrb-neon/Neonturuncu', JSON.stringify({}));
});

$("#neonpembe").click(function() {
    $.post('https://nrb-neon/Neonpembe', JSON.stringify({}));
});

$("#neonmor").click(function() {
    $.post('https://nrb-neon/Neonmor', JSON.stringify({}));
});