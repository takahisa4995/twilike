CREATE TABLE users(
 id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 email VARCHAR(255) UNIQUE NOT NULL,
 gender BOOLEAN DEFAULT 0
) ENGINE=INNODB DEFAULT CHARSET=utf8;

-- □外部キーの作成方法
-- 外部キーを持つテーブルを作成するには、
-- FOREIGN KEY(列名) REFERENCES 親テーブル名(親列名)
-- をCREATE TABLEの最後に追加します。

CREATE TABLE USERS(
user_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
pass VARCHAR(255) NOT NULL,
create_date DATETIME NOT NULL,
update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
delete_flg BOOLEAN DEFAULT 0
)ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE comment(
  comment_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  user_id VARCHAR(255) NOT NULL,
  comment VARCHAR(255) NOT NULL,
  img VARCHAR(255),
  send_date DATETIME NOT NULL,
  update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  delete_flg BOOLEAN DEFAULT 0
)ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE FAVORITE(
  user_id VARCHAR(255) NOT NULL,
  comment_id VARCHAR(255) NOT NULL,
  PRIMARY KEY(user_id, comment_id)
  )ENGINE=INNODB DEFAULT CHARSET=utf8;


  テーブル名を変更
  ALTER TABLE comment RENAME COMMENT;