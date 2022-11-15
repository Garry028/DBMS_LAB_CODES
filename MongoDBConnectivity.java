import com.mongodb.*;
import java.util.*;

public class ConnectDB {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        try {
            MongoClient mongo = new MongoClient("localhost", 27017);
            DB db = mongo.getDB("MY_DB");
            DBCollection coll = db.getCollection("users");
            int ch;
            do {
                System.out.println("Enter Chice \n 1.Insert \n 2.Display \n3.Update \n 4.Remove \n 5.Exit");
                ch = s.nextInt();
                switch (ch) {
                    case 1:
                        BasicDBObject d1 = new BasicDBObject("rno", "1").append("name", "Monika").append("age", "17");
                        coll.insert(d1);
                        System.out.println("Inserted Succesfully");
                        break;
                    case 2:
                        DBCursor cursor = coll.find();
                        while (cursor.hasNext()) {
                            System.out.println(cursor.next());
                        }
                        System.out.println("Inserted Successfully");

                        break;
                    case 3:
                        BasicDBObject query = new BasicDBObject();
                        query.put("name", "Monika");
                        BasicDBObject newDocument = new BasicDBObject();
                        newDocument.put("name", "Ragini");
                        BasicDBObject updateObj = new BasicDBObject();
                        updateObj.put("$set", newDocument);
                        coll.update(query, updateObj);
                        System.out.println("Updated Successfully");

                        break;
                    case 4:
                        BasicDBObject searchQuery = new BasicDBObject("name", "Monika");
                        coll.remove(searchQuery);
                        System.out.println("Removed Successfully");
                        break;
                    case 5:
                        System.exit(0);
                        break;
                }
            } while (ch < 4);
        } catch (Exception e) {
            System.out.println("Connection Failed");
            System.out.println(e);
        }
    }

}
