# Gallerie  

***Gallerie***는 SNS 사이트 *Instagram*을 모티브로 제작되었으며, *Instagram* 웹사이트에 구현되어 있지 않은 기능과 UX와 UI적인 요소를 추가하여 제작했습니다.

## 프로젝트 Summary
- 인원 : 4명
- 기간 : 2021년 2월 15일 ~ 3월 12일
- **주요 기술** : Spring, Mybatis, Oracle DB
- **주요 서비스** : 회원가입, 로그인, 프로필 편집, 로그인 위치 조회, 게시물 업로드/조회, 실시간 일대일 채팅
- [Use Case Diagram](.github/assets/use-case-diagram.jpg)
- [Entity Relationship Diagram(ERD)](.github/assets/entity-relationship-diagram.jpg)
- [Data Flow Diagram(DFD)](.github/assets/data-flow-diagram.jpg)
- 내 역할 : 프로필(프로필 수정, 비밀번호 수정, 로그인 위치 찾기) 기능

## 기술
- Java 8
- Spring
- Oracle DB
- Mybatis
- Maven
- HTML/CSS/Javascript
- jQuery (ajax)
- Git

## 기능
- 회원
    - 회원가입(비밀번호 암호화, 이메일 인증)
    - 로그인(Facebook 계정으로 로그인, 중복 로그인 방지, 자동 로그인)
    - 로그아웃
    - 아이디/패스워드 찾기
    - 프로필 수정
    - 팔로우/팔로워
    - 로그인 활동 기록(Google Map)

- 게시글
    - 사진 업로드
    - 좋아요
    - 댓글
    - 해시태그 활성화
    - 게시글 목록(유저, 해시태그, 좋아요/댓글순, 스크롤 페이징)
    - 게시글 상세

- 채팅
    - 실시간 일대일 채팅 (Spring-WebSocket)
    - 채팅 내용 저장 및 불러오기
    - 최근 채팅 유저 목록

## 화면(추가 예정)
- 로그인 페이지, 회원가입 페이지, 메인 페이지    
<img width="960" alt="KakaoTalk_20210627_232134994" src="https://user-images.githubusercontent.com/74581783/123549221-faf58400-d7a2-11eb-9a46-f420253710ca.png">      
<img width="960" alt="KakaoTalk_20210627_234522730" src="https://user-images.githubusercontent.com/74581783/123549241-1c567000-d7a3-11eb-86ae-0f95207435af.png">  
<img width="960" alt="KakaoTalk_20210627_234550928" src="https://user-images.githubusercontent.com/74581783/123549266-2b3d2280-d7a3-11eb-8c34-c7ac7ad2819d.png">  
    
- 프로필 페이지  
<img width="960" alt="KakaoTalk_20210627_234710854" src="https://user-images.githubusercontent.com/74581783/123549307-67708300-d7a3-11eb-9b56-be2b60f56074.png">  
<img width="960" alt="KakaoTalk_20210627_232428679" src="https://user-images.githubusercontent.com/74581783/123549332-8b33c900-d7a3-11eb-8c13-b93f80c97881.png">  
<img width="960" alt="KakaoTalk_20210627_232511294" src="https://user-images.githubusercontent.com/74581783/123549357-a43c7a00-d7a3-11eb-9bbe-cf8c9c47de91.png">  

- 게시물 업로드 화면, 게시물 상세 화면 
<img width="960" alt="KakaoTalk_20210627_234654258" src="https://user-images.githubusercontent.com/74581783/123549405-d4841880-d7a3-11eb-9ed1-b4e28c8439b7.png">  
<img width="960" alt="KakaoTalk_20210627_234725420" src="https://user-images.githubusercontent.com/74581783/123549421-e49bf800-d7a3-11eb-89dc-1c7955045646.png">  

- 일대일 채팅 스탠바이, 채팅창  
<img width="960" alt="KakaoTalk_20210627_234806533" src="https://user-images.githubusercontent.com/74581783/123549388-c504cf80-d7a3-11eb-9384-14b170443c44.png">   

## 개선된 점, 코드  

-----------------------------
## 회고 / 느낀점  
``` 
팀원들과 협업이 잘되어 개인적으로 뿌듯한 프로젝트였습니다.
```
