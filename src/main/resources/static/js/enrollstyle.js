const DOMAIN_ADDR = "http://localhost:8080";

const corresUl = document.querySelector("#searchCorresDiv > ul");
const searchBtn = document.getElementById("searchBtn");
const enrollBtn = document.getElementById("enrollBtn");
const searchCorresDiv = document.getElementById("searchCorresDiv");

const style_id = document.querySelector("input[name=style_id]");
const style_name = document.querySelector("input[name=style_name]");
const style_orderdate = document.querySelector("input[name=style_orderdate]");
const style_deliverydate = document.querySelector(
  "input[name=style_deliverydate]"
);
const style_season = document.querySelector("input[name=style_season]");
const style_quantity = document.querySelector("input[name=style_quantity]");
const style_price = document.querySelector("input[name=style_price]");
const style_workplace = document.querySelector("input[name=style_workplace]");
const style_inputname = document.querySelector("input[name=style_inputname]");
const correspondent_code = document.querySelector(
  "input[name=correspondent_code]"
);
const correspondent_name = document.querySelector(
  "input[name=correspondent_name]"
);

let isHidden = true;

const resetCorresList = () => {
  const lis = corresUl.childNodes;
  lis.forEach(e => {
    if (e.nodeType === 1 && !e.classList.contains("head_list")) {
      e.parentNode.removeChild(e);
    }
  });
};

const handleClickCorresList = e => {
  correspondent_code.value = e.currentTarget.childNodes[0].textContent;
};

const renderCorres = data => {
  const li = document.createElement("li");
  resetCorresList();
  //결과가 없는 경우
  if (data.resultSuccese !== true || data.correspondentList.length === 0) {
    const span_msg = document.createElement("span");
    span_msg.classList.add("width100");
    span_msg.innerText = "조회된 결과가 없습니다.";
    li.append(span_msg);

    corresUl.append(li);
    return;
  }
  data.correspondentList.forEach(e => {
    const span_id = document.createElement("span");
    const span_name = document.createElement("span");
    const span_code = document.createElement("span");

    span_id.classList.add("width30");
    span_name.classList.add("width30");
    span_code.classList.add("width30");
    span_id.innerText = e.correspondent_id;
    span_name.innerText = e.correspondent_name;
    span_code.innerText = e.correspondent_code === 0 ? "buyer" : "supplier";

    li.append(span_id);
    li.append(span_name);
    li.append(span_code);
    li.addEventListener("click", handleClickCorresList);
    corresUl.append(li);
  });
};

const handleClickSearchBtn = e => {
  if (isHidden) {
    isHidden = false;
    searchCorresDiv.classList.remove("hidden");
  } else {
    isHidden = true;
    searchCorresDiv.classList.add("hidden");
  }
};

const handleInputCorresName = e => {
  getCorresByCorresName(correspondent_name.value);
};

const handleClickEnrollBtn = e => {
  if (
    style_id.value.trim() === "" ||
    style_inputname.value.trim() === "" ||
    style_orderdate.value.trim() === "" ||
    style_deliverydate.value.trim() === "" ||
    style_season.value.trim() === "" ||
    style_quantity.value.trim() === "" ||
    style_price.value.trim() === "" ||
    style_workplace.value.trim() === "" ||
    style_inputname.value.trim() === "" ||
    correspondent_code.value.trim() === ""
  ) {
    alert("입력하지 않은 내용이 있습니다. 양식을 다시 확인해주세요.");
  } else {
    postStyle();
  }
};

const postStyle = () => {
  const xhr = new XMLHttpRequest();
  xhr.open("POST", `${DOMAIN_ADDR}/style`);
  xhr.onreadystatechange = function() {
    if (xhr.readyState === 4 && xhr.status === 200) {
      const resJson = JSON.parse(xhr.responseText);
      if (resJson.resultSuccese === true) {
        alert("등록되었습니다");
        window.close();
      } else {
        alert("등록실패");
      }
    }
  };
  xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  data = `style_id=${style_id.value}&style_name=${style_name.value}&style_orderdate=${style_orderdate.value}&style_deliverydate=${style_deliverydate.value}&style_season=${style_season.value}&style_quantity=${style_quantity.value}&style_price=${style_price.value}&style_workplace=${style_workplace.value}&style_inputname=${style_inputname.value}&correspondent_id=${correspondent_code.value}`;
  xhr.send(data);
};

const getCorresByCorresName = corres_name => {
  if (corres_name.trim().length === 0) return;
  const xhr = new XMLHttpRequest();
  xhr.open(
    "GET",
    `${DOMAIN_ADDR}/correspondent?correspondent_name=${corres_name}`
  );
  xhr.onreadystatechange = function() {
    if (xhr.readyState === 4 && xhr.status === 200) {
      const resJson = JSON.parse(xhr.responseText);
      renderCorres(resJson);
    }
  };
  xhr.send();
};

const init = () => {
  searchBtn.addEventListener("click", handleClickSearchBtn);
  enrollBtn.addEventListener("click", handleClickEnrollBtn);
  correspondent_name.addEventListener("input", handleInputCorresName);
};

init();
