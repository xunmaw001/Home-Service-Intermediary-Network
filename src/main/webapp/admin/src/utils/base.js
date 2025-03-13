const base = {
    get() {
                return {
            url : "http://localhost:8080/ssmilafa/",
            name: "ssmilafa",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmilafa/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "家政服务中介网"
        } 
    }
}
export default base
