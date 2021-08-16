$(document).ready(function(){

    //Load Data
    var reviews = [
        { 'name': 'Enoch Josh',
          'company': 'Mouelet Medical Center',
          'jobPosition': 'Medical Chief Officer',
          'review': ' recommend this book to all my medical students because lessons, stories, advices from this artistic work applies both in engineering as well as in the medical field.'
        },
        { 'name': 'Lily Michele',
          'company': 'TOKO LLC',
          'jobPosition': 'Chief Data Scientist',
          'review': 'I wish I had a role mole like her to outline my goals and dreams in order to avoid the common mistakes of a young and enthusiastic engineer. Buy, read and offer a copy to someone younger than you!'
        },
        { 'name': 'Laidry Arian',
          'company': 'MabInvestment',
          'jobPosition': 'CEO',
          'review': 'This a classic GPS for this generation; it outlines what to do, what not to do, when to do it, how to do it, and why taking the risk is the greatest legacy you can ever give yourself.'
        }
    ];

    $.each(reviews, function(index, review) {
        appendReview(review);
    });

    function appendReview(review) {
        $('#reviewDiv').append(
            "<article><div><h4>" +
                                 review.name + ", " + 
                                 review.jobPosition + " at " +
                                 review.company + "</h4><p>" +
                                 review.review +
            "</p></div></article>"
        );
    }

    $("#feedbackForm").submit(function(event) {

        event.preventDefault();

        var newReview = 
        {
            name: $('#name').val(),
            email:  $('#email').val(),
            jobPosition: $('#jobPosition').val(),
            company: $('#company').val(),
            review: $('#message').val()
        };

        appendReview(newReview);

        $('#feedbackForm').trigger("reset");
        toastr.success('Thank you, ' + newReview.name + ', for review ',
                       'Feedback Submitted');

      });
})