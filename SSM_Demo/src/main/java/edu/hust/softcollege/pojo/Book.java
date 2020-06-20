package edu.hust.softcollege.pojo;


import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Book {
    private int bkID;
    private String bkName;
    private int bkCounter;
    private String summary;
}
