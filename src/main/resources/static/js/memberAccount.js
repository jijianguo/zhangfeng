$(function(){
    $('#birthday').datetimepicker({
        format: "yyyy-mm-dd",
        minView: 2,//0为日，1为月，2为年
        autoclose: true,
        todayBtn: true,
        language:'zh-CN'
    });
    var mobileStr=$("#mobile").html();
    var mobile = mobileStr.substr(0,3)+"****"+mobileStr.substr(7);
    $("#mobile").html(mobile);

    //查询当前用户所在的省市县
    var areaId=$("#areaId").val();
    loadThreeAreaByAreaId(areaId);
    //省的chage事件，根据省id查找省下的所有的市
    $("#province").change(function () {
        var province=$(this).val();
        loadAllCityByProvince(province);
    });
    //市的change事件根据市id查找所有的县
    $("#city").change(function () {
        var city=$(this).val();
        loadAllAreaByCity(city);
    });
    //县的change事件，根据当前的县的值，设置隐藏的areaId
    $("#area").change(function () {
        $("#areaId").val($(this).val());
    });
});
