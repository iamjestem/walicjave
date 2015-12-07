package Models;
import java.lang.StringBuilder;
public class Post {
    public StringBuilder builder = new StringBuilder();
    public int PostID;
    public int CreatorID;
    public Post(int post,int creator, StringBuilder build)
    {
        PostID=post;
        CreatorID=creator;
        builder=build;
    }
}
