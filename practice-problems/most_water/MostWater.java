class Solution {
    public int maxArea(int[] height) {
        int left_p = 0;
        int right_p = height.length - 1;
        int max_vol = 0;
        int vol;
        while (left_p < right_p){
            int left_v = height[left_p];
            int right_v = height[right_p];
            int distance = right_p - left_p;
            if (left_v < right_v){
                vol = left_v * distance;
                left_p++;
            } else {
                vol = right_v * distance;
                right_p--;
            }
            max_vol = vol > max_vol ? vol : max_vol;
        }
        return max_vol;
    }

}