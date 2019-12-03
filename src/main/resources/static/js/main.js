const DOMAIN_ADDR = "http://localhost:8080";

const styleTable = document.getElementById("styleTable");
const materialTable = document.getElementById("materialTable");

const inquiryBtn = document.getElementById("inquiryBtn");
const resetBtn = document.getElementById("resetBtn");
const styleDeleteButton = document.getElementById("styleDeleteButton");
const inquiryInputs = document.querySelectorAll(
  "#inquiryInputTable > tbody > tr > td > input "
);

const styleTableAllCheckbox = document.querySelector(
  "#styleTable > thead input[type=checkbox]"
);
const materialTableAllcheckbox = document.querySelector(
  "#materialTable > thead input[type=checkbox]"
);

const style_id = document.querySelector("input[name=style_id]");
const style_name = document.querySelector("input[name=style_name]");
const style_season = document.querySelector("input[name=style_season]");
const style_inputname = document.querySelector("input[name=style_inputname]");
const correspondent_name = document.querySelector(
  "input[name=correspondent_name]"
);
const style_workplace = document.querySelector("input[name=style_workplace]");
const style_orderdate = document.querySelector("input[name=style_orderdate]");
const style_deliverydate = document.querySelector(
  "input[name=style_deliverydate]"
);

const renderStyle = data => {
  styleTable.querySelector("tbody").innerHTML = "";
  if (data.resultSuccese !== true || data.length < 1) {
    const tr = document.createElement("tr");
    const td = document.createElement("td");
    const h3 = document.createElement("h3");
    td.setAttribute("colspan", 13);
    h3.innerText = "조회된 결과가 없습니다.";
    h3.classList.add("noResult");
    tr.append(td);
    td.append(h3);
    styleTable.querySelector("tbody").append(tr);
    return;
  }
  data.styleList.forEach((element, index) => {
    const tr = document.createElement("tr");
    const td_listNum = document.createElement("td");
    const td_checkBox = document.createElement("td");
    const checkBox = document.createElement("input");
    const td_styleId = document.createElement("td");
    const td_styleName = document.createElement("td");
    const td_correspondentId = document.createElement("td");
    const td_styleOrderdate = document.createElement("td");
    const td_styleDeliverydate = document.createElement("td");
    const td_styleSeason = document.createElement("td");
    const td_styleQuantity = document.createElement("td");
    const td_stylePrice = document.createElement("td");
    const td_styleWorkplace = document.createElement("td");
    const td_styleInputname = document.createElement("td");
    const td_styleInputdate = document.createElement("td");

    td_listNum.innerText = index + 1;
    checkBox.setAttribute("type", "checkbox");
    td_checkBox.append(checkBox);
    tr.append(td_listNum);
    tr.append(td_checkBox);

    td_styleId.innerText = element.style_id;
    td_styleName.innerText = element.style_name;
    td_correspondentId.innerText = element.correspondent.correspondent_name;
    td_styleOrderdate.innerText = element.style_orderdate;
    td_styleDeliverydate.innerText = element.style_deliverydate;
    td_styleSeason.innerText = element.style_season;
    td_styleQuantity.innerText = element.style_quantity;
    td_stylePrice.innerText = element.style_price;
    td_styleWorkplace.innerText = element.style_workplace;
    td_styleInputname.innerText = element.style_inputname;
    td_styleInputdate.innerText = element.style_inputdate.substr(0, 19);

    tr.append(td_styleId);
    tr.append(td_styleName);
    tr.append(td_correspondentId);
    tr.append(td_styleOrderdate);
    tr.append(td_styleDeliverydate);
    tr.append(td_styleSeason);
    tr.append(td_styleQuantity);
    tr.append(td_stylePrice);
    tr.append(td_styleWorkplace);
    tr.append(td_styleInputname);
    tr.append(td_styleInputdate);

    tr.addEventListener("click", handleClickStyleRow);
    styleTable.querySelector("tbody").append(tr);
  });
};

const renderMaterial = data => {
  materialTable.querySelector("tbody").innerHTML = "";
  if (data.resultSuccese !== true || data.length < 1) {
    const tr = document.createElement("tr");
    const td = document.createElement("td");
    const h3 = document.createElement("h3");
    td.setAttribute("colspan", 8);
    h3.innerText = "조회된 결과가 없습니다.";
    h3.classList.add("noResult");
    tr.append(td);
    td.append(h3);
    materialTable.querySelector("tbody").append(tr);
    return;
  }

  data.styleList.forEach((element, index) => {
    const tr = document.createElement("tr");
    const td_listNum = document.createElement("td");
    const td_checkBox = document.createElement("td");
    const checkBox = document.createElement("input");
    const td_materialId = document.createElement("td");
    const td_materialName = document.createElement("td");
    const td_materialColor = document.createElement("td");
    const td_materialSize = document.createElement("td");
    const td_materialPrice = document.createElement("td");
    const td_materialUnit = document.createElement("td");

    td_listNum.innerText = index + 1;
    checkBox.setAttribute("type", "checkbox");
    td_checkBox.append(checkBox);
    tr.append(td_listNum);
    tr.append(td_checkBox);

    td_materialId.innerText = element.material_id;
    td_materialName.innerText = element.material_name;
    td_materialColor.innerText = element.material_color;
    td_materialSize.innerText = element.material_size;
    td_materialPrice.innerText = element.material_price;
    td_materialUnit.innerText = element.material_unit;

    tr.append(td_materialId);
    tr.append(td_materialName);
    tr.append(td_materialColor);
    tr.append(td_materialSize);
    tr.append(td_materialPrice);
    tr.append(td_materialUnit);
    tr.addEventListener("click", handleClickMaterialRow);
    materialTable.querySelector("tbody").append(tr);
  });
};

const handleClickMaterialRow = e => {
  const childs = e.target.parentNode.childNodes;
  const focusedCheckbox = childs[1].querySelector("input[type=checkbox]");
  focusedCheckbox.checked = focusedCheckbox.checked ? false : true;

  if (!focusedCheckbox.checked) {
    e.target.parentNode.classList.remove("backgroundcolor_selectedrow");
  } else {
    e.target.parentNode.classList.add("backgroundcolor_selectedrow");
  }
};

const handleClickStyleRow = e => {
  if (e.target.nodeName === "TD") {
    const childs = e.target.parentNode.childNodes;
    const focusedCheckbox = childs[1].querySelector("input[type=checkbox]");
    focusedCheckbox.checked = focusedCheckbox.checked ? false : true;

    if (!focusedCheckbox.checked) {
      materialTable.querySelector("tbody").innerHTML = "";
      e.target.parentNode.classList.remove("backgroundcolor_selectedrow");
    } else {
      e.target.parentNode.classList.add("backgroundcolor_selectedrow");
      getMeterialByStyleId(childs[2].innerText);
    }
  }
};

const getReqParams = () => {
  const result = {};
  result.style_id = style_id.value.trim();
  result.style_name = style_name.value.trim();
  result.style_season = style_season.value.trim();
  result.style_inputname = style_inputname.value.trim();
  result.correspondent_name = correspondent_name.value.trim();
  result.style_workplace = style_workplace.value.trim();
  result.style_orderdate = style_orderdate.value.trim();
  result.style_deliverydate = style_orderdate.value.trim();
  return result;
};

const validate = data => {
  let result = false;
  Object.keys(data).forEach(key => {
    if (data[key].trim() !== "" || data[key].trim().length !== 0) result = true;
  });
  return result;
};

const getStyle = () => {
  const reqParams = getReqParams();
  let URL = ``;

  if (!validate(reqParams)) URL = `${DOMAIN_ADDR}/style/all`;
  else
    URL = `${DOMAIN_ADDR}/style?style_id=${reqParams.style_id}&style_name=${reqParams.style_name}&style_workplace=${reqParams.style_workplace}&style_inputname=${reqParams.style_inputname}&style_season=${reqParams.style_season}&correspondent_name=${reqParams.correspondent_name}`;

  const xhr = new XMLHttpRequest();
  xhr.open("GET", URL);
  xhr.onreadystatechange = function() {
    if (xhr.readyState === 4 && xhr.status === 200) {
      const resJson = JSON.parse(xhr.responseText);
      renderStyle(resJson);
    }
  };
  xhr.send();
};

const getMeterialByStyleId = id => {
  const xhr = new XMLHttpRequest();
  xhr.open("GET", `${DOMAIN_ADDR}/material?styleId=${id}`);
  xhr.onreadystatechange = function() {
    if (xhr.readyState === 4 && xhr.status === 200) {
      const resJson = JSON.parse(xhr.responseText);
      renderMaterial(resJson);
    }
  };
  xhr.send();
};

const deleteStyle = styleIdList => {
  const xhr = new XMLHttpRequest();
  xhr.open("DELETE", `${DOMAIN_ADDR}/style`);
  xhr.onreadystatechange = function() {
    if (xhr.readyState === 4 && xhr.status === 200) {
      const resJson = JSON.parse(xhr.responseText);
      if (resJson.resultSuccese === true) {
        const checkedRows = document.querySelectorAll(
          "#styleTable > tbody > tr > td > input[type=checkbox]:checked"
        );
        alert("삭제되었습니다");
        checkedRows.forEach(element => {
          element.parentNode.parentNode.parentNode.removeChild(
            element.parentNode.parentNode
          );
        });
      }
    }
  };
  xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  data = `style_id=`;
  styleIdList.forEach(element => {
    data += `${element},`;
  });
  xhr.send(data);
};

const resetInquiryInputs = e => {
  inquiryInputs.forEach(e => {
    e.value = "";
  });
};

const handleClickInquiryBtn = e => {
  getStyle();
  resetInquiryInputs();
};

const selectAllStyleTable = e => {
  const checkboxes = document.querySelectorAll(
    "#styleTable > tbody > tr > td > input[type=checkbox]"
  );
  checkboxes.forEach(e => {
    e.checked = styleTableAllCheckbox.checked;
  });
};

const selectAllMaterialTable = () => {
  const checkboxes = document.querySelectorAll(
    "#materialTable > tbody > tr > td > input[type=checkbox]"
  );
  checkboxes.forEach(e => {
    e.checked = materialTableAllcheckbox.checked;
  });
};

const handleClickStyleDeleteBtn = e => {
  const checkedRows = document.querySelectorAll(
    "#styleTable > tbody > tr > td > input[type=checkbox]:checked"
  );
  if (checkedRows.length === 0) alert("삭제할 스타일을 선택해주세요.");
  else {
    if (!confirm("정말로 삭제하겠습니까?")) return;
    const dataArr = [];
    checkedRows.forEach(element => {
      dataArr.push(element.parentNode.parentNode.childNodes[2].textContent);
    });
    deleteStyle(dataArr);
  }
};

const init = () => {
  inquiryBtn.addEventListener("click", handleClickInquiryBtn);
  resetBtn.addEventListener("click", resetInquiryInputs);
  styleDeleteButton.addEventListener("click", handleClickStyleDeleteBtn);
  styleTableAllCheckbox.addEventListener("click", selectAllStyleTable);
  materialTableAllcheckbox.addEventListener("click", selectAllMaterialTable);
  getStyle();
};

init();
