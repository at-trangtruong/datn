# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rests = [
   { name: "Hải sản Bà Thôi", 
     address: "96 - 98 -100 Lê Đình Dương - Q.Hải Châu",
     description: "Với trên hơn 30 năm kinh nghiệm về lĩnh vực hải sản, và với giá cả luôn ổn định và hợp lý sẽ luôn chiếm cảm tình cao đối với mỗi người chúng ta. Đến với Quán Hải Sản Bà Thôi 1 và 2 bạn sẽ thật sự hài lòng và thoải mái bởi một không gian thoáng rộng, mát mẻ, và đặc biệt Bạn được đón tiếp và phục vụ chu đáo và thân thiện. Chúng tôi phục vụ cho mọi đối tượng thực khách. Ngoài ra, Quán Hải Sản Bà Thôi 1 và 2 còn là nơi thường xuyên tổ chức các buổi tiệc liên hoan, sinh nhật, những buổi chiêu đãi khách hàng...",
     picture: "hai-san-ba-thoi.jpg",
     hotline: "05113 825 384",
     status: 1,
     category_id: 2,
     user_id: 1,
     district_id: 6
    },
      { name: "LA MAISON 1888", 
     address: "Bãi Bắc, Bán đảo Sơn Trà",
     description: "Tọa lạc tại Intercontinental Đà Nẵng Sun Peninsula Resort , La Maison 1888 xứng đáng được liệt kê trên đầu danh sách. La Maison 1888  được xếp hạng thứ 4 trong số 10 nhà hàng đẹp nhất thế giới do hai tờ báo trực tuyến uy tín : The New York Daily News và The Daily Meal . Các thiết kế của nhà hàng này phản ánh thiết kế biệt thự Pháp cổ, sẽ đem đến cho bạn một bầu không khí rất lãng mạn để thưởng thức bữa ăn tối hoặc ăn trưa tuyệt vời ở đây .",
     picture: "LAMAISON.jpg",
     hotline: "0511 393 8888",
     status: 1,
     category_id: 2,
     user_id: 1,
     district_id: 6
    },
    { name: "THE BEACH HOUSE", 
     address: "Đường Trường Sa, Phường Hòa Hải, Quận Ngũ Hành Sơn",
     description: "Nếu bạn yêu thích biển và muốn tìm một nhà hàng Đà Nẵng có tầm nhìn ra biển thì The Beach House là sự lựa chọn hoàn hảo của bạn . Nằm tại một nơi lý tưởng trên bãi biển với tầm nhìn tuyệt vời, Beach House , là một phần của Hyatt Regency Đà Nẵng Resort and Spa, là nơi lý tưởng để thưởng thức các món ăn hải sản Việt Nam được chế biến theo phong cách phương Tây.",
     picture: "nha-hang-da-nang.jpg",
     hotline: "0511 398 1234",
     status: 1,
     category_id: 2,
     user_id: 1,
     district_id: 5
    },
      { name: "Nhà hàng Lâm Viên", 
     address: "88 Đường Trần Văn Dư, quận Ngũ Hành Sơn",
     description: "Nếu bạn được thưởng thức bữa tối tại một nhà hàng Đà Nẵng với không gian xanh của cây cối xung quanh , nhà hàng Lâm Viên là sự lựa chọn của bạn. Nhà hàng là một khu vườn xinh đẹp với nhà hàng thiết kế theo phong cách Tây Nguyên. Bên ngoài là khu vườn xinh đẹp, mang lại cho bạn cảm giác gần gũi với thiên nhiên. Nhìn chung, nơi đây rất lãng mạn, yên tĩnh, lý tưởng cho một buổi hẹn hoặc thậm chí là một cuộc họp kinh doanh. Nhà hàng phục vụ rất nhiều các món ăn cả Việt Nam và phương Tây rất tuyệt vời. Các loại thực phẩm chất lượng, tươi ngon nhất đều được lựa chọn bởi các đầu bếp lành nghề của nhà hàng.",
     picture: "lamvien.jpg",
     hotline: "0511 3959 171",
     status: 1,
     category_id: 2,
     user_id: 1,
     district_id: 5
    },
      { name: "Mì Quảng Bà Mua", 
     address: "19 Trần Bình Trọng, Hải Châu",
     description: "Mì Quảng được xem là món ăn đặc trưng của Quảng Nam - Đà Nẵng và là món đặc sản mà bất cứ du khách nào cũng muốn được thưởng thức khi đặt chân đến vùng đất này. Nếu ai có dịp ghé qua Đà Nẵng, có thể thưởng thức đặc sản này ở quán Mì quảng Bà Mua. Quán nằm ngay số 19 Trần Bình Trọng – Đà Nẵng, gần trung tâm thành phố, có vị trí thuận tiện cộng với không gian quán rộng rãi, lịch sự nên thu hút rất đông khách.",
     picture: "myquang_bamua.jpg",
     hotline: "09850.00.075",
     status: 1,
     category_id: 3,
     user_id: 1,
     district_id: 2
    },
      { name: "Nhà hàng Chim Hồng Hạc", 
     address: "145 Nguyễn Tất Thành, Thanh Khê",
     description: "Là người thành đạt, bạn hãy tìm không gian ẩm thực thật lý tưởng để thư giản và trút bỏ đi những căng thẳng ngày thường! Ở đâu có thể lý tưởng hơn Chim Hồng Hạc?",
     picture: "nha-hang-chim-hong-lac-1.jpg",
     hotline: "05113.838.168",
     status: 1,
     category_id: 2,
     user_id: 1,
     district_id: 7
    },
      { name: "Bánh xèo Bà Dưỡng", 
     address: "Kiệt 11 - Hoàng Diệu",
     description: "Muốn thử hết món ngon Đà Nẵng không thể quên điểm mặt món bánh xèo. Và quán “đinh” cho món này phải kể đến “bánh xèo Bà Dưỡng”.",
     picture: "banh-xeo-ba-duong.jpg",
     hotline: "",
     status: 1,
     category_id: 2,
     user_id: 1,
     district_id: 2
    },
      { name: "Nhà Hàng Mỹ Hạnh", 
     address: "Lô 18 Hoàng Sa, P. Phước Mỹ, Quận Sơn Trà",
     description: "Không gian lý tưởng, cảnh quan thoáng đãng hướng ra biển. Ngồi ở tầng 2,3 của nhà hàng, bạn có thể thỏa thích thưởng thức gió biển. Thực đơn của nhà hàng cũng rất phong phú, đặc biệt là các món hải sản tươi ngon như: tôm Hùm, mực, nghêu, cá mú….",
     picture: "myhanh.jpg",
     hotline: "(0511) 3 831 494",
     status: 1,
     category_id: 2,
     user_id: 1,
     district_id: 6
    },
      { name: "Bún Bò Huế MỆ MUI", 
     address: "63B Lê Hồng Phong, Hải Châu",
     description: "Nằm ngay trung tâm thành phố, quán thuận tiện cho bạn khi muốn thưởng thức một tô BÚN BÒ HUẾ nóng hổi mang đậm chất truyền thống HUẾ. Đặc biệt, quán BÚN BÒ HUẾ MỆ MUI lưu giữ hương vị truyền thống vốn có của món ăn đặc sản này. Bên cạnh tô bún đậm đà hương vị, quán còn làm phong phú thêm bằng các loại rau, gia vị đặc trưng không thể thiếu dùng kèm với BÚN BÒ HUẾ.",
     picture: "bun-bo-hue-me-mui-5.jpg",
     hotline: "05113. 835. 873",
     status: 1,
     category_id: 2,
     user_id: 1,
     district_id: 2
    },
      { name: "Quán Cỏ", 
     address: "02 Hải Phòng, ",
     description: "Quán Cỏ với phong cách rất đơn giản và bình dân. Thực khách đến đây đều cảm thấy gần gũi và thoải mái, đây ắt hẳn là một không gian tuyệt vời cho những bữa ăn ngon, những tiệc tùng sôi động bên bạn bè, gia đình trong những làn gió nhẹ nhàng với khung cảnh ấm cúng.",
     picture: "hinh-anh-quan-co.png",
     hotline: "",
     status: 1,
     category_id: 2,
     user_id: 1,
     district_id: 2
    }
]

rests.each do |rest|
  Restaurant.create!(rest)
end
