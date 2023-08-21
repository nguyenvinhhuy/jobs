package com.service;

import java.io.IOException;
import java.nio.file.Path;
import java.util.stream.Stream;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface FilesStorageService {
	public void save(MultipartFile file);
	
	public void save(MultipartFile file, String folderPath) throws IllegalStateException, IOException;

	public Resource load(String filename);

	public Stream<Path> loadAll();
}
