package org.example.crm.Service;

import org.example.crm.base.BaseService;
import org.example.crm.entity.User;
import org.example.crm.mapper.UserMapper;
import org.example.crm.utils.AssertUtil;
import org.example.crm.utils.Md5Util;
import org.example.crm.vo.UserVo;
import org.junit.platform.commons.util.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService extends BaseService<User, Integer> {
    @Resource
    private UserMapper userMapper;

    public UserVo userLogin(String userName, String userPwd) {
        // 1. 参数非空判断
        checkLoginParams(userName, userPwd);
        // 2. 根据姓名查询用户对象
        User user = userMapper.queryUserByName(userName);
        // 3. 判断用户对象是否为空
        AssertUtil.isTrue(null == user, "用户姓名不存在");
        // 4. 判断密码是否正确
        checkUserPwd(userPwd, user.getUserPwd());
        // 5. 返回userVo
        return buildUserVo(user);
    }

    private UserVo buildUserVo(User user) {
        UserVo userVo = new UserVo();
        userVo.setUserId(user.getId());
        userVo.setUserName(user.getUserName());
        userVo.setTrueName(user.getTrueName());
        return userVo;
    }

    private void checkUserPwd(String userPwd, String userPwd1) {
        AssertUtil.isTrue(!Md5Util.encode(userPwd).equals(userPwd1), "用户密码不正确");
    }


    private void checkLoginParams(String userName, String userPwd) {
        // 验证用户姓名非空
        AssertUtil.isTrue(StringUtils.isBlank(userName), "用户姓名不能为空");
        // 验证用户密码非空
        AssertUtil.isTrue(StringUtils.isBlank(userPwd), "用户密码不能为空");
    }

}
