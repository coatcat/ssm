package com.ssm.controller;

import com.ssm.domain.User;
import com.ssm.pagination.Page;
import com.ssm.service.UserService;
import com.ssm.util.FileUploadUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController extends BaseController {
    @Resource
    UserService userService;
    //列表
//    @RequestMapping("/basicinfo/user/List.action")
//    public String list(Model model){
//        List<User> dataList=userService.find(null);
//        model.addAttribute("dataList",dataList);//将数据传到页面
//        return "/basicinfo/user/UserList.jsp";//转向页面
//    }

    //转向添加页面
    @RequestMapping("/basicinfo/user/tocreate.action")
    public String tocreate() {
        return "/basicinfo/user/UserTocreate.jsp";
    }

    //添加页面
    @RequestMapping("/basicinfo/user/insert.action")
    public String insert(@RequestParam("upload") MultipartFile upload, @RequestParam("username") String username,
                         @RequestParam("password") String password, Map<String, Object> map) {
        User user = new User();
        try {
            String expandedName = ""; // 文件扩展名
            String contentType = upload.getContentType();
            if (upload.isEmpty() | upload.getSize() == 0) {
//                redirectAttributes.addFlashAttribute("result", new AjaxResult(false, "上传的文件为空!"));
                map.put("message", "上传的文件为空!");
                return "/basicinfo/user/tocreate.action";
            }
            if (contentType.equals("image/pjpeg") || contentType.equals("image/jpeg")) {
                // IE6上传jpg图片的headimageContentType是image/pjpeg，而IE9以及火狐上传的jpg图片是image/jpeg
                expandedName = ".jpg";
            } else if (contentType.equals("image/png") || contentType.equals("image/x-png")) {
                // IE6上传的png图片的headimageContentType是"image/x-png"
                expandedName = ".png";
            } else if (contentType.equals("image/gif")) {
                expandedName = ".gif";
            } else if (contentType.equals("image/bmp")) {
                expandedName = ".bmp";
            } else {
//                redirectAttributes.addFlashAttribute("result", new AjaxResult(false,
//                        "上传的文件格式不正确（必须为.jpg/.gif/.bmp/.png文件）!"));
                map.put("message", "上传的文件格式不正确（必须为.jpg/.gif/.bmp/.png文件）!");
                return "redirect:/index.jsp";
            }
            if (upload.getSize() > 600 * 1024) {
//                redirectAttributes.addFlashAttribute("result", new AjaxResult(false,
//                        "上传的文件不得大于600kb!"));
                map.put("message", "上传的文件不得大于600kb!");
                return "redirect:/index.jsp";
            }
            String fileName = FileUploadUtil.uploadFile(upload, FileUploadUtil.ATTACHMENT_PATH);
            user.setFile(fileName);
            user.setPassword(password);
            user.setUsername(username);
        } catch (Exception e) {
            e.printStackTrace();
        }
        userService.insert(user);
        return "redirect:/basicinfo/user/List.action"; //转向列表页面
    }

    //转向修改页面
    @RequestMapping("/basicinfo/user/toupdate.action")
    public String toupdate(int id, Model model) {
        User obj = userService.get(id);
        model.addAttribute("obj", obj);
        return "/basicinfo/user/UserToupdate.jsp";
    }

    //修改页面
    @RequestMapping("/basicinfo/user/update.action")
    public String update(User user) {
        userService.update(user);
        return "redirect:/basicinfo/user/List.action"; //转向列表页面
    }

    //删除一个
    @RequestMapping("/basicinfo/user/deleteById.action")
    public String deleteById(Integer id) {
        userService.deleteById(id);
        return "redirect:/basicinfo/user/List.action"; //转向列表页面
    }

    //删除多个
    @RequestMapping("/basicinfo/user/delete.action")
    public String delete(@RequestParam("id") String[] ids) {
        userService.deleteById(ids);
        return "redirect:/basicinfo/user/List.action"; //转向列表页面
    }

    //查看
    @RequestMapping("/basicinfo/user/toview.action")
    public String toview(Integer id, Model model) {
        User obj = userService.get(id);
        model.addAttribute("obj", obj);
        return "/basicinfo/user/UserToview.jsp";
    }

    //分页查询
    @RequestMapping("/basicinfo/user/List.action")
    public String list(Model model, Page<User> page) {

        Map<String, Object> params = new HashMap<String, Object>();

        page.setParams(params);

        List<User> dataList = userService.findPage(page);

        model.addAttribute("dataList", dataList);
        model.addAttribute("pageLinks", page.pageLinks("List.action"));
        return "/basicinfo/user/UserList.jsp";
    }
}
