//tìm kiếm trong mảng với find()
var myArray = [
    { id: 1, name: "bikini" },
    { id: 2, name: "áo tắm" },
    { id: 3, name: "quần tắm" },
]


var item = myArray.find(item => item.id === 2);
console.log(item.name);

//sắp xếp các số trong 1 mảng theo thử tự tăng dần
var diem = [50, 600, 2, 5, 65, 10];

var sort = diem.sort(function (a, b) { return a - b });
console.log(sort);

//tính tổng các phần tử trong một mảng
var sum = diem.reduce(function (a, b) { return a + b; }, 0);
console.log(sum);


//lọc áo tắm với filter()
var ao_tam = [
    { ten: "bikini", gioi_tinh: "nam" },
    { ten: "quần có nơ", gioi_tinh: "nữ" },
    { ten: "quần dài bơi", gioi_tinh: "nữ" },
    { ten: "quần què", gioi_tinh: "nữ" }
];

var do_nu = ao_tam.filter(function (aotam) {
    return aotam.gioi_tinh == "nữ";
});
console.log(do_nu);

//paging một mảng mà không xài thư viện, dùng while & slice
function paging(array, so_phan_tu_1_trang){
    var results = [];
 
    while (array.length) {
        results.push(array.splice(0, so_phan_tu_1_trang)); //splice: thêm 1 mục + xóa 1 mục, push thì thêm luôn vào cuối
    }
 
    return results;
}
 
var result = paging([1,2,3,4,5,6,7,8], 3);

console.log(result);
