###tokenring
import java.util.Scanner;
public class TokenRing {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        // Step 1: Take number of nodes
        System.out.print("Enter number of nodes in the ring: ");
        int n = scanner.nextInt(); // e.g., 4 → nodes: 0, 1, 2, 3
        int token = 0; // Token starts from node 0
        int choice;    // To check if user wants to continue
        // Step 2: Print the ring
        System.out.print("Ring: ");
        for (int i = 0; i < n; i++) {
            System.out.print(i + " ");
        }
        System.out.println("0");

        // Step 3: Start communication loop
        do {
            System.out.print("\nEnter sender node: ");
            int sender = scanner.nextInt();

            System.out.print("Enter receiver node: ");
            int receiver = scanner.nextInt();

            System.out.print("Enter data to send: ");
            int data = scanner.nextInt();

            // Step 4: Token passing using for loop
            System.out.print("Token passing: ");
            for (int i = token; i != sender; i = (i + 1) % n) {
                System.out.print(i + " -> ");
            }
            System.out.println(sender);

            // Step 5: Sender sends data
            System.out.println("Sender " + sender + " is sending data: " + data);

            // Step 6: Forwarding the data using for loop
            for (int i = (sender + 1) % n; i != receiver; i = (i + 1) % n) {
                System.out.println("Data " + data + " forwarded by node " + i);
            }

            // Step 7: Receiver receives data
            System.out.println("Receiver " + receiver + " received data: " + data);

            // Update the token position to the sender
            token = sender;

            // Step 8: Ask if user wants to send again
            System.out.print("\nDo you want to send again? (1 = Yes, 0 = No): ");
            choice = scanner.nextInt();

        } while (choice == 1);

        System.out.println("Token Ring Simulation Ended.");
        scanner.close();
    }
}
