package org.example.crm.mapper;

import org.example.crm.base.BaseMapper;
import org.example.crm.entity.User;

public interface UserMapper extends BaseMapper<User, Integer> {
//    int deleteByPrimaryKey(Integer id);
//
//    int insert(User record);
//
//    int insertSelective(User record);
//
//    User selectByPrimaryKey(Integer id);
//
//    int updateByPrimaryKeySelective(User record);
//
//    int updateByPrimaryKey(User record);

    User queryUserByName(String userName);
}