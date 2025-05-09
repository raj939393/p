####Client.java
import java.io.*;
import java.net.*;
public class Client {
    public Client(String address, int port) throws Exception {
        Socket socket = new Socket(address, port);
        System.out.println("Connected to Server");
        BufferedReader userInput = new BufferedReader(new InputStreamReader(System.in));
        DataOutputStream out = new DataOutputStream(socket.getOutputStream());
        String line = "";
        while (!line.equals("Over")) {
            line = userInput.readLine();
            out.writeUTF(line);
        }
        out.close();
        socket.close();
    }
    public static void main(String[] args) throws Exception {
        new Client("127.0.0.1", 5000);
    }
}

###Server.java
import java.net.*;
import java.io.*;
public class Server {
    public Server(int port) throws Exception {
        ServerSocket server = new ServerSocket(port);
        System.out.println("Server Started");
        
        Socket socket = server.accept();
        System.out.println("Client Connected");
        DataInputStream in = new DataInputStream(socket.getInputStream());
        String line = "";
        while (!line.equals("Over")) {
            line = in.readUTF();
            System.out.println(line);
        }
        socket.close();
        in.close();
        server.close();
    }
    public static void main(String[] args) throws Exception {
        new Server(5000);
    }
}


##Search.java
import java.rmi.*;
public interface Search extends Remote {
    public String query(String search) throws RemoteException;
}

##SearchQuery.java
import java.rmi.*;
import java.rmi.server.*;
public class SearchQuery extends RemoteObject implements Search {
    public String query(String search) throws RemoteException {
        String result;
        if (search.equals("Reflection in Java"))
            result = "Found";
        else
            result = "Not Found";
        return result;
    }
}



rmic SearchQuery
rmiregistry &

javac server.java
java server

javac -target 8 -source 8 server.java
