angular.module('mwl.calendar.docs', ['mwl.calendar', 'ngAnimate', 'ui.bootstrap', 'colorpicker.module']);
angular
	.module('mwl.calendar.docs') //you will need to declare your module with the dependencies ['mwl.calendar', 'ui.bootstrap', 'ngAnimate']
	.controller('KitchenSinkCtrl', function(moment, alert, calendarConfig) {

		var vm = this;

		//These variables MUST be set as a minimum for the calendar to work
		vm.calendarView = 'month';
		vm.viewDate = new Date();
		var actions = [{// 이벤트 제목 옆에 표시 될 액션의 배열
			label: '<i class=\'glyphicon glyphicon-pencil\'></i>',// 액션 레이블
			onClick: function(args) {// 클릭시 발생하는 동작입니다. 첫 번째 인수는 부모 이벤트를 포함하는 객체입니다.
				alert.show('Edited', args.calendarEvent);
			}
			//cssClass : 'edit-action', // 사용자 정의 스타일을 구현할 수 있도록 action 요소에 추가 될 CSS 클래스
		}, {
			label: '<i class=\'glyphicon glyphicon-remove\'></i>',
			onClick: function(args) {
				alert.show('Deleted', args.calendarEvent);
			}
		}];
		var date = moment(new Date(2018,0,15)).toDate();
		console.log('date: ' + date);
		var date2 = new Date('2019-09-05 15:32:55');
		console.log('date2: ' + date2);
		var date3 = moment(new Date('2019-09-05 15:32:55')).toDate();
		console.log('date3: ' + date3);
		
		console.log(moment().startOf('week').subtract(2, 'days').add(8, 'hours').toDate());
		console.log(moment().startOf('week').add(1, 'week').add(9, 'hours').toDate())
		console.log(moment().startOf('day').add(7, 'hours').toDate());
		console.log(moment().startOf('day').add(19, 'hours').toDate());
		vm.events = [
			{
				title: 'An event',
				color: calendarConfig.colorTypes.warning,
				startsAt: moment().startOf('week').subtract(2, 'days').add(8, 'hours').toDate(),
				endsAt: moment().startOf('week').add(1, 'week').add(9, 'hours').toDate(),
				draggable: true,
				resizable: true,
				actions: actions
			}, {
				title: '<i class="glyphicon glyphicon-asterisk"></i> <span class="text-primary">Another event</span>, with a <i>html</i> title',
				color: calendarConfig.colorTypes.info,
				startsAt: moment().subtract(1, 'day').toDate(),
				endsAt: moment().add(5, 'days').toDate(),
				draggable: true,
				resizable: true,
				actions: actions
			}, {
				title: 'This is a really long event title that occurs on every year', // 이벤트 제목
				color: calendarConfig.colorTypes.important, // 더 이상 사용되지 않는 이벤트 유형에 대한 바로 가기를위한 calendarConfig.colorTypes.warning 일 수도 있습니다.
				startsAt: moment(new Date('2019-09-05 15:32:55')).toDate(), // 이벤트가 시작될 때의 JavaScript 날짜 객체
				//endsAt: moment(new Date('2019-09-09 09:12:33')).toDate(), // 선택 사항-이벤트 종료 시점을위한 자바 스크립트 날짜 객체
				recursOn: 'year', // 설정된 경우 일정 기간 동안 이벤트가 반복됩니다. 유효한 값은 연도 또는 월입니다.
				draggable: true, // 이벤트가 드래그하고 드롭 할 수 있도록 허용 
				resizable: true, // 이벤트가 크기를 조정할 수 있도록 허용
				actions: actions // 이벤트 제목 옆에 표시 될 액션의 배열
				//primary: '#e3bc08', // 기본 이벤트 색상 (보조 색상보다 어두워 야 함)
				//secondary : '# fdf1ba', // 보조 이벤트 색상 (기본보다 가벼워 야 함)
				//incrementsBadgeTotal : true, // false로 설정하면 월별 및 연도 별 배지 총계에 포함되지 않습니다.
				//cssClass : 'a-css-class-name', // 각보기에 표시 될 때 이벤트에 추가 될 CSS 클래스 (또는 공백으로 구분). 이벤트를 선택 / 활성화 등으로 표시하는 데 유용
				//allDay : false, // 이벤트를 하루보기에 종일 이벤트로 표시하려면 true로 설정하십시오.
			}
		];

		vm.cellIsOpen = true;

		vm.addEvent = function() {
			vm.events.push({
				title: 'New event',
				startsAt: moment().startOf('day').toDate(),
				endsAt: moment().endOf('day').toDate(),
				color: calendarConfig.colorTypes.important,
				draggable: true,
				resizable: true
			});
		};

		vm.eventClicked = function(event) {
			alert.show('Clicked', event);
		};

		vm.eventEdited = function(event) {
			alert.show('Edited', event);
		};

		vm.eventDeleted = function(event) {
			alert.show('Deleted', event);
		};

		vm.eventTimesChanged = function(event) {
			alert.show('Dropped or resized', event);
		};

		vm.toggle = function($event, field, event) {
			$event.preventDefault();
			$event.stopPropagation();
			event[field] = !event[field];
		};

		vm.timespanClicked = function(date, cell) {

			if (vm.calendarView === 'month') {
				if ((vm.cellIsOpen && moment(date).startOf('day').isSame(moment(vm.viewDate).startOf('day'))) || cell.events.length === 0 || !cell.inMonth) {
					vm.cellIsOpen = false;
				} else {
					vm.cellIsOpen = true;
					vm.viewDate = date;
				}
			} else if (vm.calendarView === 'year') {
				if ((vm.cellIsOpen && moment(date).startOf('month').isSame(moment(vm.viewDate).startOf('month'))) || cell.events.length === 0) {
					vm.cellIsOpen = false;
				} else {
					vm.cellIsOpen = true;
					vm.viewDate = date;
				}
			}

		};

	});
