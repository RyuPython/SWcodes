public class WriteDataWithAutoClose2 {
	public static void main(String[] args) throws Exception {
		java.io.File file = new java.io.File("scores.txt");
		if (file.exists()) {
		System.out.println("File already exists");
		System.exit(0);
		}
		
		try (
		java.io.PrintWriter output = new java.io.PrintWriter(file);
		) {
		
		output.println("Ryu jonghyeon");
		output.println(2016117311);
		output.println("comp217007");
		}
	}
}