package com.sw.test;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Bean {
    String name;
    String age;
    String gender;
    String[] hobbies;
}
