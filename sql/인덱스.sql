CREATE INDEX idx_vw_UserMatching_salary_type_num ON vw_UserMatching_Salary(salary_type_num);
CREATE INDEX idx_vw_UserMatching_max_salary ON vw_UserMatching_Salary(max_salary);
CREATE INDEX idx_vw_UserMatching_min_salary ON vw_UserMatching_Salary(min_salary);
CREATE INDEX idx_tblHire_hire_avr_salary ON tblHire(hire_avr_salary);
create index idx_tbltag_tag_keyword on tblTag(tag_keyword);

