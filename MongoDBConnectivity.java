import com.mongodb.*;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

public class MongoDBConnectivity {
    public static void main(String[] args) {
        try{
            MongoClient db = new MongoClient("localhost",27017);
            MongoCredential credential;
            credential = MongoCredential.createCredential("Garry","Netflix","password".toCharArray());
            System.out.println("Succesfully connected to mongoDB");

            MongoDatabase database=db.getDatabase("Netflix");

            MongoCollection collection=database.getCollection("series");
            Document Witcher= new Document();
            Document MoneyHeist=new Document();

            Witcher.append("_id",1)
                    .append("Series","The Witcher")
                    .append("Genre","Sci-fi")
                    .append("Seasons","3")
                    .append("Actor","Henry Cavil" );
            MoneyHeist.append("_id",2)
                    .append("Series","La casa de papel")
                    .append("Genre","Crime")
                    .append("Seasons","5")
                    .append("Actor","Professor" );

            collection.insertOne(Witcher);
            collection.insertOne(MoneyHeist);
            System.out.println("Documents inserted succesfully");
        }
        catch(Exception e){
            System.out.println("Connection Failed");
            System.out.println(e);
        }
    }

}