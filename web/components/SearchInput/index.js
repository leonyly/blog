import { Input } from "antd";
import React from "react";
import style from './search.module.scss'
export default function SearchInput({value, onChange, onSearch}) {
	
  return (
    <div className={style.search}>
      <div className="input__wrap">
				<Input placeholder="Basic usage" className="inline-input" value={value} onChange={onChange}/>
        <div className="input__suffix" onClick={onSearch}>
          <i className="iconfont icon-find" slot="suffix" ></i>
        </div>
      </div>
    </div>
  );
}
