package com.evozon.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.evozon.model.Category;

@Component
public class CategoryValidator implements Validator {

	@Override
	public boolean supports(Class<?> aClass) {
		return Category.class.equals(aClass);
	}

	@Override
	public void validate(Object target, Errors errors) {

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");

	}

}
