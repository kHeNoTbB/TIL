# Gauce
Gauce는 분산 DB 환경에서 웹 브라우저를 통한 기업, 고객 등 다양한 사용자가 다양한 방식으로 DB 에 접근, 웹 애플리케이션을 활용할 수 있도록 해주는 통합 웹 개발툴 및 운영 플랫폼으로 Java 기반의 X-Internet 기술

## Gauce component
### Grid
DataSet과 연결하여, 화면에 Table형태의 Data 표현 및 CUD 작업을 지원한다.

### tr
여러 개의 DataSet을 Server로 송/수신시 사용한다.
특히, CUD 작업 후 Transaction 처리할 DataSet을 Server로 송신시 또는 여러 개의 DataSet 구조를 하나의 서비스를 통해 조회시에도 사용된다.

### DataSet
DataSet은 내부적으로 다양한 Buffer와 Header 정보를 관리하는 Table입니다.
또한 Http 통신 기능을 가지고 있습니다.
Buffer 간의 상호작용을 및 제공하는 외부 인터페이스를 통해 Viewer 기능을 담당하는 Component 들이 Bind 해서 DataSet의 데이터를 각기 고유의 UI 형태로 표현하게 하는 DataBuffer 입니다.
또한, CUD 작업이 발생시 변경된 데이터들 역시 DataSet을 통해 관리됩니다.

### ImgDataSet
Server의 Image 서비스를 호출해 각 View Component들이 Image Data(ico, bmp 파일)를 사용시 Image Data의 Buffer 역할을 담당한다.

### Bind
일반 HTML에서 사용되는 Edit, TextArea, Combo 등의 Input Tag로 적용되는 일반 Component, 제품에서 제공하는 LuxeCombo, Radio, TextArea, EMedit Component를 DataSet Component와 연결할 수 있는 기능을 내장하는 Component로써 일반 Component, 제공 Component와 연결되어 DataSet의 자료를 변경하고, 읽어오는 기능을 하는데 사용된다.
