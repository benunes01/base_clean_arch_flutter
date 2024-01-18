import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

MaskTextInputFormatter cpfMaskFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: <String, RegExp>{"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);

MaskTextInputFormatter phoneMaskFormatter = MaskTextInputFormatter(
    mask: '(##) #####-####',
    filter: <String, RegExp>{"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);