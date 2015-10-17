package com.kito.madina.test.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kito.madina.test.service.ProjectService;
import com.kito.madina.test.vo.ProjectVO;

@Controller
@RequestMapping(value = "/project")
public class ProjectController {
  private Logger logger = LoggerFactory.getLogger(ProjectController.class);

  @Autowired
  private ProjectService projectService;

  @RequestMapping(value = "list", method = RequestMethod.GET)
  public String getAddressList(Model model) {
    model.addAttribute("projects", projectService.selectAllProject());
    return "project/list";
  }

  @RequestMapping(value = "new", method = RequestMethod.GET)
  public String createForm(Model model) {
    model.addAttribute("project", new ProjectVO());
    return "project/form";
  }
}
