const styleTable = document.getElementById("styleTable");
const materialTable = document.getElementById("materialTable");

let selectedStyleId = 'MUOWD421';

const renderStyle = data => {
  if (data.resultSuccese !== true || data.length < 1) {
    const tr = document.createElement("tr");
    const td = document.createElement("td");
    const h3 = document.createElement("h3");
    td.setAttribute("colspan", 13);
    h3.innerText = "조회된 결과가 없습니다.";
    h3.classList.add("noResult");
    tr.append(td);
    td.append(h3);
    styleTable.append(tr);
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

    td_listNum.innerText = index+1;
    checkBox.setAttribute("type", "checkbox");
    td_checkBox.append(checkBox);
    tr.append(td_listNum);
    tr.append(td_checkBox);

    td_styleId.innerText = element.style_id;
    td_styleName.innerText = element.style_name;
    td_correspondentId.innerText = element.correspondent_id;
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
    styleTable.append(tr);
  });
};

const renderMaterial = data =>{
  if (data.resultSuccese !== true || data.length < 1) {
    const tr = document.createElement("tr");
    const td = document.createElement("td");
    const h3 = document.createElement("h3");
    td.setAttribute("colspan", 8);
    h3.innerText = "조회된 결과가 없습니다.";
    h3.classList.add("noResult");
    tr.append(td);
    td.append(h3);
    materialTable.append(tr);
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
    
    td_listNum.innerText = index+1;
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

    materialTable.append(tr);
  });
}

const getStyle = () => {
  const xhr = new XMLHttpRequest();
  xhr.open("GET", `http://localhost:8080/style`);
  xhr.onreadystatechange = function() {
    if (xhr.readyState === 4 && xhr.status === 200) {
      const resJson = JSON.parse(xhr.responseText);
      renderStyle(resJson);
    }
  };
  xhr.send();
};

const getMeterialByStyleId = () =>{
  const xhr = new XMLHttpRequest();
  xhr.open("GET", `http://localhost:8080/material?styleId=${selectedStyleId}`);
  xhr.onreadystatechange = function() {
    if (xhr.readyState === 4 && xhr.status === 200) {
      const resJson = JSON.parse(xhr.responseText);
      renderMaterial(resJson);
    }
  };
  xhr.send();
}

getStyle();
getMeterialByStyleId();