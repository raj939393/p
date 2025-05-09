###Berkelye
import java.util.ArrayList;
public class BerkeleyClockSync {
    public static void main(String[] args) {
        // Step 0: Input system clocks
        int[] systemClocks = {10, 12, 13, 11, 14};  // Example node times
        int masterClock = 0; // First node is the master

        // Step 1: Print original system clocks
        System.out.print("Original system clocks: ");
        for (int clock : systemClocks) {
            System.out.print(clock + " ");
        }
        System.out.println();

        // Step 2: Calculate average time
        int sum = 0;
        for (int clock : systemClocks) {
            sum += clock;
        }
        int averageClock = sum / systemClocks.length;

        // Step 3: Adjust each clock to match the average using ArrayList
        ArrayList<Integer> updatedClocks = new ArrayList<>();
        for (int clock : systemClocks) {
            int difference = averageClock - clock;
            updatedClocks.add(clock + difference);
        }

        // Step 4: Update master clock
        masterClock = averageClock;

        // Step 5: Print synchronized clocks
        System.out.print("Synchronized system clocks: ");
        for (int clock : updatedClocks) {
            System.out.print(clock + " ");
        }
        System.out.println();

        System.out.println("Master clock after sync: " + masterClock);
    }
}

