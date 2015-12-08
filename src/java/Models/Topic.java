package Models;
import com.sun.xml.rpc.processor.modeler.j2ee.xml.string;
import java.util.ArrayList;
import java.util.LinkedList;

public class Topic {
    //zlo
    public LinkedList<Post> posts= new LinkedList<Post>();
    public string topic;
    public int father;
    public int id;
    public Topic(string top)
    {
        topic=top;
    }
    public Topic(string top,int fath)
    {
        topic=top;
        father=fath;
    }
}
