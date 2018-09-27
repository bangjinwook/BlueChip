package finalp.test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemoController {

	@Autowired
	MemoDao mDao;
	
	@RequestMapping("/board/memo.do")
	public ModelAndView list()
	{
		ModelAndView model=new ModelAndView();
		List<MemoDto> list=mDao.getMemoList();
		
		model.addObject("list",list);
		model.addObject("total",list.size());
		model.setViewName("/1/view/memolist");
		return model;
	}
	
	@RequestMapping("/board/NewFile.do")
	public String test()
	{
		return "/2/board/NewFile";
	}
}
