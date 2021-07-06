package com.whmc.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created by IntelliJ IDEA.
 *
 * @Author: OriginalCoder
 * @Date: 2021/7/4 22:19
 * @Description:
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Books {

    private Integer bookID;
    private String bookName;
    private int bookCounts;
    private String bookSummary;
}
