const companyNumberInput = document.getElementById("company_company_number");
const form = document.getElementById("new_company");

companyNumberInput.addEventListener("blur", (event) => {
  form.submit();
});
