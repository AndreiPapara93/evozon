package com.evozon.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.evozon.dto.ProductDTO;

@Component
public class ProductValidator implements Validator {

	@Override
	public boolean supports(Class<?> aClass) {
		return ProductDTO.class.equals(aClass);
	}

	@Override
	public void validate(Object target, Errors errors) {

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "code", "NotEmpty");

	}

}
