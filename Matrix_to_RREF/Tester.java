public class Tester {
	public static void main(String[] args) {
		double[][] matrix = {{5, 0.5, 5}, {7, 13, 3}, {-2, 8, 6}, {0, 1, 7}};

		for (double[] i : matrix){
			for (double j : i){
				System.out.print(j + ", ");
			}
			System.out.println();
		}

		
		MatrixToRREF.RREF(matrix);

		for (double[] i : matrix){
			for (double j : i){
				System.out.print(j + ", ");
			}
			System.out.println();
		}
	}
}