package com.ssm.controller;


import com.ssm.domain.OutProduct;
import com.ssm.service.OutProductService;
import com.ssm.util.DownloadUtil;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

@Controller
public class OutProductController {
    @Resource
    OutProductService outProductService;
    //转向输入年月的页面
    @RequestMapping("/cargo/contract/toedit.action")
    public String toedit(){
        return "/cargo/contract/jOutProduct.jsp";
    }
    //打印
    @RequestMapping("/cargo/contract/print.action")
    public void print(String inputDate, HttpServletResponse response) throws IOException{
        List<OutProduct> dataList=outProductService.find(inputDate);

        Workbook wb=new HSSFWorkbook();
        Sheet sheet = wb.createSheet();
        Row nRow = null;
        Cell nCell = null;

        int rowNo=0;  ///行号
        int colNo=1;  //列号

        //声明样式对象和字体对象
        CellStyle nStyle=wb.createCellStyle();
        Font nfont=wb.createFont();

        sheet.setColumnWidth(0,2*300);  //列宽
        sheet.setColumnWidth(1,14*300);  //列宽*256
        sheet.setColumnWidth(2,16*300);  //列宽*256
        sheet.setColumnWidth(3,10*300);  //列宽*256
        sheet.setColumnWidth(4,10*300);  //列宽*256
        sheet.setColumnWidth(5,20*300);  //列宽*256
        sheet.setColumnWidth(6,17*300);  //列宽*256
        sheet.setColumnWidth(7,17*300);  //列宽*256


        //大标题 合并单元格
        sheet.addMergedRegion(new CellRangeAddress(0,0,1,7));  //开始行 结束行 开始列 结束列
        //合并单元格的内容写在合并前的第一个单元格
        nRow=sheet.createRow(rowNo++);
        nRow.setHeightInPoints(36);  //行高
        nCell=nRow.createCell(1);
        nCell.setCellValue("月表");
        nCell.setCellStyle(this.bigTitle(wb,nStyle,nfont));

        String[] title=new String[]{"合同号","客户名称","货号","数量","生产厂家的名称","签单日期","交货日期"};

        nRow=sheet.createRow(rowNo++);
        nRow.setHeightInPoints(26.25f);  //设置行高

        //初始化
        nStyle=wb.createCellStyle();
        nfont=wb.createFont();

        for(int i=0;i<title.length;i++){
            nCell=nRow.createCell(i+1);
            nCell.setCellValue(title[i]);
            nCell.setCellStyle(this.Title(wb,nStyle,nfont));
        }

        //初始化
        nStyle=wb.createCellStyle();
        nfont=wb.createFont();

        //处理数据
        for(int j=0;j<dataList.size();j++){
            colNo=1;  //列号初始化
            OutProduct op=dataList.get(j);  //获取月表的对象

            nRow=sheet.createRow(rowNo++);
            nRow.setHeightInPoints(24);  //设置行高

            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getContractNo());
            nCell.setCellStyle(this.text(wb,nStyle,nfont));

            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getCustomName());
            nCell.setCellStyle(this.text(wb,nStyle,nfont));

            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getProductNo());
            nCell.setCellStyle(this.text(wb,nStyle,nfont));

            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getCnumber());
            nCell.setCellStyle(this.text(wb,nStyle,nfont));

            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getFactoryName());
            nCell.setCellStyle(this.text(wb,nStyle,nfont));

            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getSigningDate());
            nCell.setCellStyle(this.text(wb,nStyle,nfont));

            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getSigningDate());
            nCell.setCellStyle(this.text(wb,nStyle,nfont));
        }

//        OutputStream os=new FileOutputStream(new File("D:\\outproduct.xls"));
//        wb.write(os);
//        os.flush();
//        os.close();

        //下载
        DownloadUtil du=new DownloadUtil();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();			//生成流对象
        wb.write(byteArrayOutputStream);
        du.download(byteArrayOutputStream, response, "月表.xls");		//弹出下载框，用户就可以直接下载


    }
    //大标题的样式
    public CellStyle bigTitle(Workbook wb,CellStyle nStyle,Font nfont){
        nfont.setFontName("宋体");
        nfont.setFontHeightInPoints((short)16);
        nStyle.setFont(nfont);

        nfont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);  //加粗
        nStyle.setAlignment(CellStyle.ALIGN_CENTER);  //横向居中
        nStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);  //纵向居中
        return nStyle;
    }

    //标题的样式
    public CellStyle Title(Workbook wb,CellStyle nStyle,Font nfont){
        nfont.setFontName("黑体");
        nfont.setFontHeightInPoints((short)12);
        nStyle.setFont(nfont);

        nStyle.setAlignment(CellStyle.ALIGN_CENTER);  //横向居中
        nStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);  //纵向居中

        //表格线
        nStyle.setBorderTop(CellStyle.BORDER_THIN);  //上细线
        nStyle.setBorderLeft(CellStyle.BORDER_THIN);  //左细线
        nStyle.setBorderRight(CellStyle.BORDER_THIN);  //右细线
        nStyle.setBorderBottom(CellStyle.BORDER_THIN);  //下细线
        return nStyle;
    }

    //文字的样式
    public CellStyle text(Workbook wb,CellStyle nStyle,Font nfont){
        nfont.setFontName("Times New Roman");
        nfont.setFontHeightInPoints((short)10);
        nStyle.setFont(nfont);

        nStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);  //纵向居中

        //表格线
        nStyle.setBorderTop(CellStyle.BORDER_THIN);  //上细线
        nStyle.setBorderLeft(CellStyle.BORDER_THIN);  //左细线
        nStyle.setBorderRight(CellStyle.BORDER_THIN);  //右细线
        nStyle.setBorderBottom(CellStyle.BORDER_THIN);  //下细线
        return nStyle;
    }
}
