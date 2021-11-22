package com.euphoria.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author: ❤ Euphoria ❤
 * @title: Books
 * @projectName ssmbuild
 * @description:
 * @date 2021/11/20  14:00
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Books {
    private int bookID;
    private String bookName;
    private int bookCounts;
    private String detail;

}
