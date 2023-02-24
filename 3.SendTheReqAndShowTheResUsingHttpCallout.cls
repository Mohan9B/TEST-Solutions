public class SendTheReqAndShowTheResUsingHttpCallout {
    public static void usingHttpCallout(){
        String endpoint = 'https://postman-echo.com/get?fool-bar1&foo2=bar2';
        Http hp = new Http();
        HttpRequest requ = new HttpRequest();
        requ.setEndpoint(endpoint);
        requ.setMethod('GET');
        HttpResponse resp = hp.send(requ);
        if(resp.getStatusCode()==200){
            system.debug(resp.getBody());
        }
    }
}

/*
After Complete The Code Call The Method Using Anonymous Window Like:
--------------------------------------------------------------------
SendTheReqAndShowTheResUsingHttpCallout.usingHttpCallout();
*/