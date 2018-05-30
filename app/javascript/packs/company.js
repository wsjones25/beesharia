const companyNumberInput = document.getElementById("company_company_number");
const form = document.getElementById("new_company");
const companyNameInput = document.getElementById("company_company_name");
const companyAddressInput = document.getElementById("company_office_address");

companyNumberInput.addEventListener("blur", (event) => {
  let companyNumber = companyNumberInput.value
  companyNameInput.value = "placeholder 1";
  companyAddressInput.value = "placeholder 2";
});
