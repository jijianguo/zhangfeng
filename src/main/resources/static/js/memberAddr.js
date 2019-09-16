function submitForm(){
    $("#addAddrForm").submit();

}
var option={
    url:"/system/findAllAddr",
    striped: true,//是否有斑马线效果
    method: 'post',//提交方式
    contentType: "application/x-www-form-urlencoded; charset=UTF-8",//发送到服务器的编码类型
    sidePagination: "client",//分页方式 'client'为客户端分页
    sortName: 'addrDefault',//排序需要的属性
    sortOrder: 'desc',//排序方式
    cache: false,//是否使用缓存
    columns: [//field对应的是entity中的属性  title:列名
        {
            field: 'id', // 返回json数据中的name
            title: '序号', // 表格表头显示文字
            formatter:function(value,row,index){
                return index+1;
            }
        }, {
            field: 'trueName',
            title: '买家姓名'
        }, {
            field: 'areaInfo',
            title: '买家地址',
            formatter:function(value,row,index){
                var str="";
                if(null!=row.userAreaVo){
                    str=row.userAreaVo.province+" "
                        +row.userAreaVo.city+" "
                        +row.userAreaVo.area+" "
                        +value;
                }
                return str;
            }
        },  {
            field: 'mobile',
            title: '手机号'
        },  {
            field: 'telephone',
            title: '其它联系电话'
        }, {
            field: 'zip',
            title: '邮编'
        },{
            field: 'addrDefault',
            title: '是否是默认地址',
            formatter:function (value,row,index) {
                if(value==1){
                    return "默认地址";
                }else{
                    return "<button class='btn btn-primary' onclick='changeAddrDefault("+row.id+")'>设置为默认地址</button>&nbsp;&nbsp;";
                }
            }
        },{
            title: "操作",
            field:'id',
            formatter:function(value,row,index){
                var str="<button class='btn btn-primary' onclick='deleteAddrById("+value+","+row.addrDefault+")'>删除</button>&nbsp;&nbsp;";
                return str;
            }
        }
    ]

};
$(function () {
    $("#table").bootstrapTable(option);
    loadAllAearByParentId(1);
    $("#province").change(function () {
        var province=$(this).val();
        loadAllCityByProvince(province);
    });
    $("#city").change(function () {
        var city=$(this).val();
        loadAllAreaByCity(city);
    });
    $("#area").change(function () {
        $("#areaId").val($(this).val());
    });

});
function deleteAddrById(id,defaultValue) {
    if(1==defaultValue){
        alert("默认地址不能被删除");
        return;
    }
    if(confirm("删除后不能找回，确定要删除吗？")){
        $.ajax({
            url:"/system/deleteAddrById",
            data:{"id":id},
            type:"post",
            dataType:"json",
            success:function (data) {
                if(data){
                    window.location.reload();
                }
            }
        });
    }
}
//修改默认地址
function changeAddrDefault(id) {
    $.ajax({
        url:"/system/changeAddrDefault",
        data:{"id":id},
        type:"post",
        dataType:"json",
        success:function (data) {
            if(data){
                window.location.reload();
            }
        }
    });
}