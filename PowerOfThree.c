#include <stdio.h>
#include <stdbool.h>

bool isPowerOfThree(int n){
    if(n==0)
        return false;
    if(n==1)
        return true;
    while(n%3 == 0){
        if(n == 3)
            return true;
        n=n/3;
        
    }
    return false;

}

int main() {
    int n = 27;
    bool x = isPowerOfThree(n);
    printf("%s\n", x ? "true" : "false");
    return 0;
}
