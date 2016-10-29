<?php
	class indexController {
		function index() {
			$data = $this->getNewsList();
			$this->showAbout();
			VIEW::assign(array('data'=>$data));
			VIEW::display('index/index.tpl');
		}
		function getNewsList() {
			$newsobj = M('news');
			$data =  $newsobj->findAll_orderby_dateline();
			if(!$data) $data = [];
			foreach ($data as $key=>$news) {
				$data[$key]['content'] = mb_substr(strip_tags($data[$key]['content']),0,200);
				$data[$key]['dateline'] = date('Y-m-d H:i:s', $data[$key]['dateline']);
			}
			return $data;
		}
		function showNews() {
			$data = [];
			if(isset($_GET['id'])){
				$id = intval($_GET['id']);
				$newsobj = M('news');
				$data =  $newsobj->findOne_by_id($id);
			}
			$this->showAbout();
			VIEW::assign(array('data'=>$data));
			VIEW::display('index/show.tpl');
		}
		function showAbout() {
			$data = M('about')->aboutInfo();
			VIEW::assign(array('about'=>$data));
		}
	}
?>
