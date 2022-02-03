import { useState } from 'react';
import { Divider, Row, Col, Input, Select, Button, Table, Space, Layout } from 'antd'
import { ColumnsType } from 'antd/lib/table';
import { TableRowSelection, TablePaginationConfig } from 'antd/lib/table/interface';
import './Marketing.css'
import { Content } from 'antd/lib/layout/layout';
import AuthComsumer from '../../components/AuthComsumer';

const { Option } = Select
const { Header } = Layout

interface User {
  id: number
  chance_source: string
  customer_name: string
  cgjl: number
  overview: string
  link_man: string
  link_phone: string
  description: string
  create_man: string
  create_time: string
  assign_man: string
  assign_time: string
}

const columns: ColumnsType<User> = [
  {
    key: 'id',
    title: '编号',
    dataIndex: 'id',
    fixed: 'left',
    width: 130,
  },
  {
    key: 'chance_source',
    title: '机会来源',
    dataIndex: 'chance_source',
    width: 150,
  },
  {
    key: 'customer_name',
    title: '客户名称',
    dataIndex: 'customer_name',
    width: 150,
  },
  {
    key: 'cgjl',
    title: '成功几率',
    dataIndex: 'cgjl',
    sorter: (a, b) => a.cgjl - b.cgjl,
    width: 170,
  },
  {
    key: 'overview',
    title: '摘要',
    dataIndex: 'overview',
    width: 150,
    ellipsis: true,
  },
  {
    key: 'link_man',
    title: '联系人',
    dataIndex: 'link_man',
    width: 150,
  },
  {
    key: 'link_phone',
    title: '联系人电话',
    dataIndex: 'link_phone',
    width: 150,
    ellipsis: true,
  },
  {
    key: 'create_man',
    title: '创建人',
    dataIndex: 'create_man',
    width: 150,
  },
  {
    key: 'create_time',
    title: '创建时间',
    dataIndex: 'create_time',
    width: 150,
    ellipsis: true,
  },
  {
    key: 'assign_man',
    title: '指派人',
    dataIndex: 'assign_man',
    width: 150,
  },
  {
    key: 'assign_time',
    title: '指派时间',
    dataIndex: 'assign_time',
    width: 150,
    ellipsis: true,
  },
  {
    key: 'description',
    title: '描述',
    dataIndex: 'description',
    ellipsis: true,
  },
  {
    key: 'action',
    title: '操作',
    render: () => (
      <Space size='middle'>
        <Button type='primary'>编辑</Button>
        <Button type='primary'>删除</Button>
      </Space>
    ),
    fixed: 'right',
    width: 160,
  },
];

// const data: User[] = [
//   {
//     id: 97,
//     chance_source: '官网',
//     customer_name: '腾讯',
//     cgjl: 80,
//     overview: '测试机会数据',
//     link_man: '小马',
//     link_phone: '13659733199',
//     description: '测试机会数据',
//     create_man: 'admin',
//     create_time: '2022-01-14 00:00:00',
//     assign_man: 'admin',
//     assign_time: '2022-01-14 00:00:00',
//   },
// ];

const d: User = {
  id: 97,
  chance_source: '官网',
  customer_name: '腾讯',
  cgjl: 80,
  overview: '测试机会数据',
  link_man: '小马',
  link_phone: '13659733199',
  description: '测试机会数据',
  create_man: 'admin',
  create_time: '2022-01-14 00:00:00',
  assign_man: 'admin',
  assign_time: '2022-01-14 00:00:00',
}
const data: User[] = []
for (let i = 0; i < 100; i++) {
  data.push(d)
}




function MarketingOpportunity() {
  let initSelectedRowKes: any[] = []
  const [selectedRowKeys, setSelectedRowKeys] = useState(initSelectedRowKes)

  let handleChange = (value: string) => {
    console.log(`selected ${value}`);
  }


  let onSelectChange = (selectedRowKeys: any) => {
    console.log('selectedRowKeys changed: ', selectedRowKeys);
    setSelectedRowKeys(selectedRowKeys)
  }

  const rowSelection: TableRowSelection<User> = {
    selectedRowKeys,
    onChange: onSelectChange,
    /*todo修改为中文*/
    selections: [
      Table.SELECTION_ALL,
      Table.SELECTION_INVERT,
      Table.SELECTION_NONE
    ],
  }

  return (
    <AuthComsumer>
      <div>
        <Row justify="start" wrap={false}>
          <Col span={3} className='inputWidth'> <Input placeholder="客户名" /> </Col>
          <Col span={3} className='inputWidth'> <Input placeholder="创建人" /> </Col>
          <Col span={3} className='inputWidth'>
            {/* width:100%表示充满整个父box */}
            <Select placeholder='分配状态' onChange={handleChange} style={{ width: '100%' }}>
              <Option value="jack">Jack</Option>
              <Option value="lucy">Lucy</Option>
              <Option value="Yiminghe">yiminghe</Option>
            </Select>
          </Col>
          <Col span={1} className='inputWidth'><Button type='primary' >搜索</Button>    </Col>
        </Row>
        <Divider></Divider>

        <Button type='primary' style={{ margin: '0 3px 10px 0' }}>添加</Button>
        <Button type='primary' style={{ margin: '0 0 10px 3px' }}>删除</Button>

        <Table<User>
          rowSelection={rowSelection}
          columns={columns}
          dataSource={data}
          scroll={{ x: 1500, y: 600 }}
          bordered
          pagination={{ position: ['bottomLeft'] }}
        />
      </div>
    </AuthComsumer>
  )
}

export default MarketingOpportunity
