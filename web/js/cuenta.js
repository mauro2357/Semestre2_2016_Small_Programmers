var banner;    
            window.onload = function(){
                banner = document.getElementById('banner');
                banner.onmouseover = function(){
                    banner.setAttribute("src", "img/mujer.jpg");
                    };
                banner.onmouseout = function(){
                    banner.setAttribute("src", "img/descarga.jpg");
                    };
            };

