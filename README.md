## PMS (프로젝트 매니져 시스템)

## 담당영역

> 부서 관리

> 임직원 관리

> 프로젝트 CRUD

> 작업 관리 (간트차트)

> 다국어 처리

> 산출물 관리 (업로드, 다운로드)

## 기간

> 2021.04.01 ~ 2021.04.22

<br>

## 사용기술

> Spring Framwork 사용

> MVC2 방식 사용

> MyBatis 사용

> Jquery, JSTL 라이브러리 사용

<br>

### 어려웠던 점

#### 파일 업로드 다운로드 경로 지정에 대한 고민
   
* 서버의 임시 경로에 저장하게 되면 서버가 삭제되거나 문제가 발생하면 실제로 업로드한 파일이 사라지게 되는 위험이 존재
   
* WebContent 하위에 upload 폴더 생성 후 하위에 업로드 파일 저장하게 되면 개발자마다 환경이 달라 경로에 대한 에러 발생

* info 파일에 경로를 설정하게 하여 해결, 하지만 환경이 달라지면 이 파일을 수정해야 하는 문제점 발생
  * 프로젝트의 실질적인 물리적 위치를 갖고 올 수 있는 방법 적용하여 해결 예정 --> **진행 중**

<img width="785" alt="스크린샷 2021-04-18 오후 4 54 52" src="https://user-images.githubusercontent.com/68735491/115138412-eb511500-a066-11eb-8df6-d0f0fcb7168a.png"> 

<br>

### 느낀 점

> 간트차트 API, 캘린더 API 등 잘 만들어진 라이브러리 또는 API를 사용함으로써 보다 쉽게 원하는 프로그램을 제작할 수 있었다.
> 
> 하지만, 이렇게 가져다 쓴 코드가 어떻게 돌아가는지, 또 다른 코드에는 영향이 없는지를 고민해 볼 필요가 있다고 느꼈다.
> 
> 실제로 부트스트랩의 Select 버튼을 가져다 쓰고, option 값을 Ajax를 활용하여 값을 넣었는데 개발자 모드에서는 적용이 되었는데,
> 
> 실제 UI 상에는 적용이 되지 않는 현상이 발생하였다. 원인을 파악 한 결과 부트스트랩 select 버튼은 단순히 select 태그로만 이루어진 것이 아닌
> 
> div를 비롯하여 다양한 태그로 이루어진 것이고, 부트스트랩이 적용되기 전에 Ajax로 데이터를 구성함으로써 해결할 수 있게 되었다.


--
#### 데이터베이스 설계

> 총 14개의 테이블로 구성

![image](https://user-images.githubusercontent.com/68735491/115123507-51528380-9ff8-11eb-824b-6cc936fc12a0.png)

<br>

#### 산출물 관리

* 산출물 업로드, 다운로드

* 산출물 조회, 삭제

* 산출물을 등록할 프로젝트, 작업을 Ajax를 활용하여 가져옴
   * 회원 별 참여하고 있는 프로젝트가 다르므로 동적으로 Select 버튼 구현
   * 프로젝트 별 작업이 회원마다 다르므로 프로젝트에 따라 동적으로 Select 버튼 구현

![ezgif com-gif-maker (8)](https://user-images.githubusercontent.com/68735491/115124844-6979d100-9fff-11eb-82a7-1a2604cf16d8.gif)

#### 로그인 페이지 : 다국어 처리

* 영어, 한국어 선택 가능

![다국어처리](https://user-images.githubusercontent.com/68735491/115123652-02591e00-9ff9-11eb-8fe8-7e708e3709e5.gif)

<br>

#### 부서 관리

* 부서 생성, 삭제, 조회

* 부서 삭제 시 해당 소속 인원들 소속 없음 처리
   * 생성된 부서만 추가 가능하도록 Select 버튼 동적으로 구현

![ezgif com-gif-maker](https://user-images.githubusercontent.com/68735491/115123732-55cb6c00-9ff9-11eb-9c98-0c2b5637f86a.gif)

<br>

#### 회원 초대

* 이메일 발송
 
* 임시 비밀번호, 임시 사원 발급

![ezgif com-gif-maker (1)](https://user-images.githubusercontent.com/68735491/115123845-e86c0b00-9ff9-11eb-9868-8139278389cb.gif)

<br>

#### 회원 관리

* 직책, 부서, 직무 선택 가능

* 직무별 권한 부여 (CEO, 인사담당자, PM, 임직원)

![ezgif com-gif-maker (3)](https://user-images.githubusercontent.com/68735491/115123980-bb6c2800-9ffa-11eb-9de9-cb2afa9bb46c.gif)

<br>

#### 프로필 수정

* 프로필 이미지 수정 (업로드 기능)
   * ex) upload / 사번 / 사진.jpg에 업로드됨
   * 경로에 이미지가 없으면 default 이미지로 대체

![ezgif com-gif-maker (4)](https://user-images.githubusercontent.com/68735491/115124186-ee62eb80-9ffb-11eb-8662-1399d72cb63d.gif)

<br>

#### 프로젝트 등록, 조회

* 프로젝트 CRUD 기능
   * PM의 권한으로만 프로젝트를 생성, 삭제 가능

![ezgif com-gif-maker (5)](https://user-images.githubusercontent.com/68735491/115124327-7e089a00-9ffc-11eb-8702-6bf4263c0646.gif)

<br>

#### 프로젝트 상세

* 프로젝트의 요약정보, 참여인원, 진행률 확인 가능
 
* 간트차트를 활용하여 작업 현황 

![ezgif com-gif-maker (7)](https://user-images.githubusercontent.com/68735491/115124644-2c610f00-9ffe-11eb-87ee-88e71b90a85a.gif)

<br>

#### 리소스 관리

* PM의 권한으로 프로젝트의 참여인원 관리 가능
  * 참여 중인 회원이 미참여로 바뀌게 되었을 때, 예외 처리 ( 해당 작업은 PM이 담당하게 됨 )

* 프로젝트에서 제외할 인원이 현재 몇 건의 작업을 진행 중인지 알림 창을 통해 확인 가능

* PM은 삭제 불가 예외 처리

![ezgif com-gif-maker (9)](https://user-images.githubusercontent.com/68735491/115139752-a9c46800-a06e-11eb-8a49-64073ddb2cda.gif)
