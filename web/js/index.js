var banner;    
            window.onload = function(){
                banner = document.getElementById('banner');
                banner.onmouseover = function(){
                    banner.setAttribute("src", "img/banner02.jpg");
                    };
                banner.onmouseout = function(){
                    banner.setAttribute("src", "img/banner01.jpg");
                    };
            };
