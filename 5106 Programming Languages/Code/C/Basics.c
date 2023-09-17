# include <stdio.h>
# define conversion = 2.54

int main(){
    float cms = 0.0;
    scanf("%f", &cms);
    float totalInches = cms/2.54;
    int feet = totalInches / 12;
    float inches = totalInches - (feet * 12);
    printf("Feet: %d, Inches: %f", feet, inches);
}