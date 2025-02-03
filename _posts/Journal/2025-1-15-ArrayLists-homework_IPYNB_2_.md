---
layout: post
comments: True
type: issues
title: ArrayLists - Homework
categories: ['AP CSA']
permalink: /csa/p1-frq-arraylists/homework
---

# Homework

### For homework, complete **problem 3** on the 2023 AP CSA Free Repsonse. A link is provided below. Submit to utterances on this page :)

[AP Central 2023 Computer Science A FRQ](https://apcentral.collegeboard.org/media/pdf/ap23-frq-comp-sci-a.pdf)


```java
import java.util.ArrayList;

public class WeatherData {
    private ArrayList<Double> temperatures;
    
    public WeatherData() {
        temperatures = new ArrayList<Double>();
    }
    
    /** Removes all values in temperatures that are less than lower or greater than upper
     *  Postcondition: all values in temperatures are greater than or equal to lower and
     *                 less than or equal to upper
     */
    public void cleanData(double lower, double upper) {
        for (int i = temperatures.size() - 1; i >= 0; i--) {
            double temp = temperatures.get(i);
            if (temp < lower || temp > upper) {
                temperatures.remove(i);
            }
        }
    }
    
    /** Returns the length of the longest heat wave in temperatures
     *  A heat wave is defined as a sequence of two or more consecutive days with
     *  temperatures strictly above threshold
     *  Returns 0 if there is no heat wave
     */
    public int longestHeatwave(double threshold) {
        int longestStreak = 0;
        int currentStreak = 0;
        
        for (double temp : temperatures) {
            if (temp > threshold) {
                currentStreak++;
                if (currentStreak > longestStreak) {
                    longestStreak = currentStreak;
                }
            } else {
                currentStreak = 0;
            }
        }
        
        return longestStreak >= 2 ? longestStreak : 0;
    }

    public void addTemperature(double temp) {
        temperatures.add(temp);
    }
    
    public static void main(String[] args) {
        WeatherData wd = new WeatherData();
        // TEST CASES for testing all solutions
        
        wd.addTemperature(90.0);
        wd.addTemperature(85.0);
        wd.addTemperature(110.0);
        wd.addTemperature(72.0);
        System.out.println("Before cleaning: " + wd.temperatures);
        wd.cleanData(80.0, 100.0);
        System.out.println("After cleaning (80-100): " + wd.temperatures);
        
        WeatherData wd2 = new WeatherData();
        wd2.addTemperature(85.0);
        wd2.addTemperature(87.0);
        wd2.addTemperature(88.0);
        wd2.addTemperature(82.0);
        wd2.addTemperature(89.0);
        wd2.addTemperature(91.0);
        System.out.println("\nTemperatures: " + wd2.temperatures);
        System.out.println("Longest heat wave above 85: " + wd2.longestHeatwave(85.0));
    }
}
```


```java

```
