package com.kgitbank.spring.global.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class FileUploadUtil {
	
	public static String uploadFile(MultipartFile file, String uploadPath) {
		String fileName = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
		File target = new File(uploadPath, fileName);
		
		try {
			FileCopyUtils.copy(file.getBytes(), target);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return fileName;
	}
	
}
