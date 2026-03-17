const btn = document.getElementById("btn");
const numInput = document.getElementById("numInput");
const modeSelect = document.getElementById("modeSelect");
const form = document.getElementById("form");

const handleClickBtn = (e) => {
    e.preventDefault();

    const numValue = numInput.value;
    const modeValue = modeSelect.value;


    if (!numValue) return alert('값을 입력해주세요!');
    if (!modeValue) return alert('변환할 단위를 선택해주세요!');

    if (modeValue !== "celToFah" && numValue < 0) return alert('양수 값을 입력해주세요!');

    // const sp = new URLSearchParams();
    // sp.set('num', numValue);
    // sp.set('mode', modeValue);

    form.submit();
    // location.href = `/06_JSP_Unit/NewFile.jsp?${sp.toString()}`;
};

btn.addEventListener('click', handleClickBtn);

