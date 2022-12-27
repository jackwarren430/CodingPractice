class Solution {
    public double findMedianSortedArrays(int[] nums1, int[] nums2) {
        int[] merged = merge(nums1, nums2);
        for (int i : merged){
            System.out.print(i + ", ");
        }
        if (merged.length % 2 == 0){
            System.out.println("even");
            return ((double)(merged[merged.length / 2] + merged[(merged.length / 2) - 1])) / 2;
        } else {
            return merged[merged.length / 2];
        }
    }

    private int[] merge(int[] nums1, int[] nums2) {
        int[] toReturn = new int[nums1.length + nums2.length];
        int size = nums1.length < nums2.length? nums1.length : nums2.length;
        int j = 0; //nums1
        int k = 0; //nums2
        int i = 0; //toReturn
        while (j < nums1.length && k < nums2.length){
            if (nums1[j] < nums2[k]){
                toReturn[i] = nums1[j];
                j++;
            } else {
                toReturn[i] = nums2[k];
                k++;
            }
            i++;
        }
        while (j < nums1.length){
            toReturn[i] = nums1[j];
            j++;
            i++;
        }
        while (k < nums2.length){
            toReturn[i] = nums2[k];
            k++;
            i++;
        }
        return toReturn;
    }

}