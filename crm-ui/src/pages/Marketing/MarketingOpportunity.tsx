import { useState } from 'react';
import { Divider, Row, Col, Input, Select, Button, Table, Space } from 'antd'
import { ColumnsType } from 'antd/lib/table';
import { TableRowSelection } from 'antd/lib/table/interface';
import './Marketing.css'

const { Option } = Select

interface User {
  id: number
  jhly: string
  khmc: string
  cgjl: number
  zy: string
  lxr: string
}

const columns: ColumnsType<User> = [
  {
    key: 'id',
    title: '编号',
    dataIndex: 'id',
  },
  {
    key: 'jhly',
    title: '机会来源',
    dataIndex: 'jhly',
  },
  {
    key: 'khmc',
    title: '客户名称',
    dataIndex: 'khmc',
  },
  {
    key: 'cgjl',
    title: '成功几率',
    dataIndex: 'cgjl',
    sorter: (a, b) => a.cgjl - b.cgjl,
  },
  {
    key: 'zy',
    title: '摘要',
    dataIndex: 'zy',
  },
  {
    key: 'lxr',
    title: '联系人',
    dataIndex: 'lxr',
  },
  {
    key: 'action',
    title: '操作',
    render: () => (
      <Space size='middle'>
        <Button type='primary'>编辑</Button>
        <Button type='primary'>删除</Button>
      </Space>
    )
  },
];

const data: User[] = [
  {
    id: 97,
    jhly: '官网',
    khmc: 'baidu',
    cgjl: 80,
    zy: '测试',
    lxr: '马小云',
  },
  {
    id: 98,
    jhly: '官网',
    khmc: 'alibaba',
    cgjl: 60,
    zy: '测试',
    lxr: '马小云',
  },
];


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
      <Table<User>
        rowSelection={rowSelection}
        columns={columns}
        dataSource={data}
      />

    </div>
  )
}

export default MarketingOpportunity
