package com.monami.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.board.dao.VBoardDAO;
import com.monami.board.dao.VBoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class VBoardWriteOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		VBoardDTO vdto = new VBoardDTO();
		String savefolder = "D:\\0900_GB_SSH\\JSP\\workspace\\sanghoon\\download";
		
		
		MultipartRequest multi = new MultipartRequest(req, savefolder, 1024*1024*1024,
				"UTF-8",new DefaultFileRenamePolicy());
		
		String systemname = multi.getFilesystemName("file");
		String vtitle = multi.getParameter("video_title");
		String orgname = multi.getOriginalFileName("file");
		String userid = multi.getParameter("userid");
		
		vdto.setVideo_title(vtitle);
		vdto.setVideo_content(orgname);
		vdto.setVideo_writer(userid);
		
		VBoardDAO vdao = new VBoardDAO();
		
		if(vdao.insertVideo(vdto)) {
			
		}
		
		return null;
}
}
