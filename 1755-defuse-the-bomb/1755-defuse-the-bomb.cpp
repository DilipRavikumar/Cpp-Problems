class Solution {
public:
    vector<int> decrypt(vector<int>& code, int k) {
        int s=code.size() ,d=abs(k);
        vector<int> res(s,0);
        for(int i=0;i<s;i++){
            for(int j=1;j<=d;j++){
                
                res[i] += code[(s+i+k/d*j)%s];
            }
        }

        return res;
    }
};