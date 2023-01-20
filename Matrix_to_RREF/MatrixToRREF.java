public class MatrixToRREF {
	public static void main(String[] args) {
		double[][] matrix = {{22.00, 53.00, 35.00, 23.00}, {68.00, 12.00, 71.00, 85.00}, {47.00, 65.00, 9.00, 18.00}};
		
		RREF(matrix);

		for (double[] i : matrix){
			for (double j : i){
				System.out.print(j + ", ");
			}
			System.out.println();
		}
	}

	public static void RREF(double[][] matrix){
		int rows = matrix.length;
		int columns = matrix[0].length;
		for (int i = 0; i < columns - 1; i++){
			for (int j = i; j < rows - 1; j++){
				double val = matrix[j + 1][i];
				scaleRow(matrix[j + 1], matrix[i][i]);
				replaceRow(matrix[j + 1], matrix[i], -val);
			}
		}
		for (int i = columns - 2; i >= 0; i--){
			for (int j = rows - 1; j >= 0; j--){

			}
		}
	}

	private static void replaceRow(double[] r1, double[] r2, double r2_scaler){
		for (int i = 0; i < r1.length; i++){
			r1[i] = r1[i] + (r2_scaler * r2[i]);
		}
	}

	private static void scaleRow(double[] r1, double scaler){
		for (int i = 0; i < r1.length; i++){
			r1[i] *= scaler;
		}
	}

}