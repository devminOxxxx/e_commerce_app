import 'dart:convert';

import '../../../dto/common/response_wrapeer/response_wrapper.dart';
import '../../../dto/display/menu/menu.dto.dart';
import '../../remote/display/display.api.dart';
import 'display_mock_data.dart';

class DispalyMockApi implements DisplayApi {
  @override
  Future<ResponseWrapper<List<MenuDto>>> getMenusByMallType(String mallType) {
    return Future(
      () => ResponseWrapper(
        status: 'SUCCES',
        code: '0000',
        message: '',
        data: menuParser(mallType == 'market'
            ? DisplayMockData.menusByMarket
            : DisplayMockData.menusByBeauty),
      ),
    );
  }

  List<MenuDto> menuParser(String source) {
    List<MenuDto> menus = [];
    final List json = jsonDecode(source);
    menus = json.map((e) => MenuDto.fromJson(e)).toList();

    return menus;
  }
}
