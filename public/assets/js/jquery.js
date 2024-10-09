$(document).ready(function() {
    // Load header
    $("#header-container").load("/header");
  
    // Load tabs và gắn sự kiện sau khi tải xong
    $("#tab-container").load("/tabs", function() {
        console.log('Tabs loaded successfully');

        // Khởi tạo Swiper sau khi slider-news-container được load
        $("#slider-news-container").load("/news", function() {
            const swiper = new Swiper('.swiper', {
                direction: 'horizontal',
                loop: true,
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
            });

            // Xử lý chuyển sang trang news_detail
            $('#slider-news-container').on('click', '.larg-news-item img, .small-news-grid img', function(event) {
                event.preventDefault();
                $("#tab-content").hide();
                $("#news-detail-container").show().load("/news-detail");
            });
        });

        // Gắn sự kiện click cho các tab
        $('#tabs a').on('click', function(event) {
            event.preventDefault();
            $('#tabs a').removeClass('active');
            $(this).addClass('active');
            $('.tab-pane').removeClass('active');

            let tabId = $(this).attr('id');
            console.log('Tab clicked: ' + tabId);

            if (tabId === 'news-link') {
                $('#news').addClass('active');
            } else if (tabId === 'newsProject-link') {
                $('#newsProject').load('/newsProject').addClass('active');
            } else if (tabId === 'notificationPage-link') {
                $('#notificationPage').load('/notificationPage').addClass('active');
            }
        });
    });

    // Load footer
    $("#footer-container").load("/footer")
     

    // Xử lý scrollToTop
    // Kiểm tra nếu phần tử scrollToTop tồn tại
    if ($("#scrollToTop").length) {
        // Ẩn nút khi trang được tải
        $("#scrollToTop").hide();

        // Khi người dùng cuộn xuống 600px, hiển thị nút
        $(window).on('scroll',function() {
            if ($(this).scrollTop() > 600) {
                $("#scrollToTop").fadeIn();
            } else {
                $("#scrollToTop").fadeOut();
            }
        });

        // Khi người dùng nhấp vào nút, cuộn về đầu trang
        $("#scrollToTop").on('click',function() {
            $("html, body").animate({scrollTop: 0}, 600);
            return false;
        });
    }
});

