参考：http://blog.csdn.net/jackfrued/article/details/39449021
-------------------------------------------------------
1.http://localhost:8080/myweb/test2.jsp 访问地址
--------------------------------------------------
简单的一个 通过freemark 导出word文件
1.得到相应word文件的模板，word  动态数据位置 使用 占位符 ${paramName} -->另存为  xml文件
2.修改相应的xml文件  因为会出现 ${paramName}分离，
例如：<w:r>.${para..</w:r><w:r>.mName..</w:r><w:r>.}..</w:r>
修改为 <w:r>. ${paramName}..</w:r>
3.如果有图片 也使用占位符 ${imgBASE64Encoder} 同时使用相应的文件读取方法 把img文件读出来 成 Base64形式
public static String getImageString(String filename) throws IOException {  
        InputStream in = null;  
        byte[] data = null;  
        try {  
            in = new FileInputStream(filename);  
            data = new byte[in.available()];  
            in.read(data);  
            in.close();  
        } catch (IOException e) {  
            throw e;  
        } finally {  
            if(in != null) in.close();  
        }  
        BASE64Encoder encoder = new BASE64Encoder();  
        return data != null ? encoder.encode(data) : "";  
   }    
   在servlet请求中把该图片 解码串和参数占位符名称 添加到 map中 传到freemark 中处理
 4.