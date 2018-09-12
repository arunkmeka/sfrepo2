public class AnimalLocator {
    public static string getAnimalNameById(Integer id)
    {
        Http http = new Http();
        Httprequest req = new Httprequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+ id);
        req.setMethod('GET');
        Httpresponse res = http.send(req);
        string name='';
        //modified
        if(res.getStatusCode() == 200)
        {
            Map<string, Object> results = (Map<string, Object>) JSON.deserializeUntyped(res.getBody());
            Map<string, Object> animal = (Map<string, Object>) results.get('animal');
            //name = animal.get('name');
            //return name;
            name = string.valueof(animal.get('name'));
        }
        return name;
        //return (String)animal.get('name');

    }

}