<?php

namespace Site\Models;

class Chapter {

    public $db;

    public function __construct($db){
        $this->db = $db;
    }

    public function getChapterById($id)
    {
        $prepare = $this->db->prepare('
			SELECT
				*
			FROM
				chapters
			WHERE
				id = :id
			LIMIT 
                1
		');
        $prepare->bindValue('id', $id);
        $prepare->execute();
        $chapter = $prepare->fetch();

        if($chapter)
        {
            $chapter->slides = $this->_getSlidesByChapterId($chapter->id);
        }

        return $chapter;
    }
    
    private function _getSlidesByChapterId($id)
    {
        $prepare = $this->db->prepare('
			SELECT
				*
			FROM
				slides
			WHERE
				chapter_id = :chapter_id
		');
        $prepare->bindValue('chapter_id', $id);
        $prepare->execute();
        $slides = $prepare->fetchAll();

        return $slides;
    }
}
