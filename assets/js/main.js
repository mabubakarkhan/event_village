(function($) {

    var form = $("#signup-form");
    form.validate({
        errorPlacement: function errorPlacement(error, element) {
            element.before(error);
        },
        rules: {
            username: {
                required: true,
            },
            email: {
                required: true,
                email : true
            }
        },
        messages : {
            email: {
                email: 'Not a valid email address <i class="zmdi zmdi-info"></i>'
            }
        },
        onfocusout: function(element) {
            $(element).valid();
        },
    });
    form.steps({
        headerTag: "h3",
        bodyTag: "fieldset",
        transitionEffect: "slideLeft",
        labels: {
            previous: 'Previous',
            next: 'Next',
            finish: 'Submit',
            current: ''
        },
        titleTemplate: '<div class="title"><span class="number">#index#</span>#title#</div>',
        onStepChanging: function(event, currentIndex, newIndex) {
            form.validate().settings.ignore = ":disabled,:hidden";
            // console.log(form.steps("getCurrentIndex"));
            return form.valid();
        },
        onFinishing: function(event, currentIndex) {
            form.validate().settings.ignore = ":disabled";
            return form.valid();
        },
        onFinished: function(event, currentIndex) {
            /*SUBMIT FORM */
            $action = form.attr('action'); 
            $.post($action, {data: form.serialize()}, function(resp) {
                resp = $.parseJSON(resp);
                if (resp.status == true) {
                    $('#auction_submission_modal .modal-body').html('<div class="text-center mb-3"><i class="far fa-check-circle fa-size"></i></div><p class="text-center">ThankYou! You have Submited Auction. Please wait we\'\ll check and notified you when live.</p>');
                }else{
                    $('#auction_submission_modal .modal-body').html('<div class="text-center mb-3"><i class="far fa-close-circle fa-size danger"></i></div><p class="text-center">Something Went Wrong Check Again.</p>');
                }
                $('#auction_submission_modal').modal('show');
            });
        },
        // onInit : function (event, currentIndex) {
        //     event.append('demo');
        // }
    });

    jQuery.extend(jQuery.validator.messages, {
        required: "",
        remote: "",
        url: "",
        date: "",
        dateISO: "",
        number: "",
        digits: "",
        creditcard: "",
        equalTo: ""
    });
})(jQuery);