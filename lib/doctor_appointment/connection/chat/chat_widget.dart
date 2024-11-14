import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_model.dart';
export 'chat_model.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({
    super.key,
    required this.image,
    required this.name,
  });

  final String? image;
  final String? name;

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  late ChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.chevron_left,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Josiah Toor',
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Nunito',
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    Text(
                      '•Online',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            color: Color(0xFF4AAF4F),
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'VoiceCall',
                    queryParameters: {
                      'name': serializeParam(
                        widget!.name,
                        ParamType.String,
                      ),
                      'image': serializeParam(
                        widget!.image,
                        ParamType.String,
                      ),
                    }.withoutNulls,
                  );
                },
                child: Icon(
                  Icons.phone,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'VideoCall',
                      queryParameters: {
                        'image': serializeParam(
                          widget!.image,
                          ParamType.String,
                        ),
                        'name': serializeParam(
                          widget!.name,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Icon(
                    FFIcons.kvideoCamera,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 20.0,
                  ),
                ),
              ),
            ].divide(SizedBox(width: 16.0)),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8FC),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 24.0, 20.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 24.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 30.0,
                                      height: 30.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        widget!.image!,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      width: 242.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(16.0),
                                          bottomRight: Radius.circular(16.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(16.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Hi, dont worry I am here. Let me know your situation now.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  '09:41 AM',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 242.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(16.0),
                                          bottomRight: Radius.circular(16.0),
                                          topLeft: Radius.circular(16.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Hi Doctor, I am a fever patient. This is my prescription',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  '09:43 AM',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 30.0,
                                      height: 30.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgUFRUZGRgZHRgYGRgYGBoaGhkaGhoZGhkYHBwcIS4lHB4rIRgZJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHxISHjQkISs0NDY0NDE0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0MTQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIARMAtwMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAQIDBAUGBwj/xAA/EAACAQIEAwUFBgQFBAMAAAABAgADEQQSITEFQVEGImFxgRMykaGxB0JSwdHwYnKCkiMzssLhFBVD8SREov/EABkBAQEBAQEBAAAAAAAAAAAAAAACAQMEBf/EACIRAQEBAQADAQEAAQUAAAAAAAABAhEDITESQVETIjJxgf/aAAwDAQACEQMRAD8A6PaGBFWh2mNJtDtFWgtATaC0VaC0BNoLRVoLQEWgtFWgtARaFaLtCIgItCIiyIVoDZESRHCIREBoiERHCIkiA0REkR0iJIgMsI2yx8iIIgMMsEWwghq7tBaHaC0MC0FodoLQCtBaHBaAVoLQ7QQE2gtDtBaAm0THLTnvavtq6OaWFZe7oz2DEtzCgi1htf8AZNk630IicMxXaLFsxZsRVvzCuVHoFsBKmpx+sGzCrUDdc73+sHHociJInG+C/aXiKVlq2rIObG1S3g3P1BnR+z/a7C4yy03yuf8Axv3X8cvJv6SYYvCIREWREkQGyIkiOERJEBoiJIjhEQRAbIgiiIIauLQWh2h2hhNodocEArQQ4ICYIqFATBDggQuLB/Y1BT98oypy7zCyknkLkTM4Dsph6CBSud7d523Y87D7o8PrNZVqrfJmGbe1xe3W0gVBqbzj5L/HfxT11SHgmHH3F16iZPtHwLDclAI6TYcQxgUG28wvE6zsSTt5WnP9f4d5mX6xuP4MVN02lWabob2OmvkevhNdUcg6ys4lUCre07Y1flcPJ45Pcbz7Pu3zVWTCYo3c92nVO7nkj/xHk3PY679LM8vCtqCLqRqpGhBBuCD1novsnxM4nCUa7e8yAP8AzqSjn1ZSfWdHBakRJEWYkwGyIkiOERJEBoiCKIggW8EOCAUEOCAUEOCAUKGxtqZXY/iOQdwXPjMupFTN18T4UrRxhFph6oyG3eA1+EnYbEpUQOjBkIuGH70PhE1KXFn2ML2nbD0nataojrUsa6g6M3eC3OhXKQNiOWknY7ieWgtQsO+oYHbfY+v5yfx2lSILVQpUHNlbUEgaXB3mF4pXNdxnLZWNlGy+AE82/dezxz0h4jCYjEHOa+VDsAQv/MqOI4SrR1Ssaij3lOs1H/bsiOiqGzjLdtSuhsyE3ynXlMxhsDUR9blfG5+N5uaanv5/6hCpm1GxkbH0sy2ljicMEvbQcpXO8qX36RqevahdMp1navscrs2BdTslZwvkURiPiT8ZyLiCC153T7OOGf8AT4CiCLNUBrN/Xqt/HIEHpO0vY8upytMYkiLMSRNYSREmKMIwGyIIoiCBawQ4IBQQ4IBQiYcjYmpYWmavI3M7eImJr+Mp8Ziwp1MHE8bk8/pMVxLiJYkXnntezGEjjfGMwKg36n9JW8M4liKIZ6bWGgt1uQQLc9vgDKvEVb6StfFd8jvW00vpYC3XwmyKv+G241xhq9FanfzurLkX3FZWNiL33F/iN7TO4GpVqBEOYsraubAZQb6+I8ukgYap7Q2Dlcl+7bMDzFgGBGp8ZNpYx1a1iG5Mt7N+h845xvf62mIxORR1tKbG44sDt6CNYnFHKA29hfztKivX0tIkqrZEbHYi9xK+kmdrRWKYxpAw2ViT962nledJHG3tWWF4PSd6YZzkZ0z2t7mYB7WtbS/Od+C20AsBoB0tynIexvZ9sTWDnu0qeUufxNvkHjpr0vOwGdMd57cPL+ZfRBiTFmJMtyIMIxRiTASYIZggWkEEEAQQQQGq1UKJT4/E2vc6x7H1u+TyUTF8Tx7MXN99vKcN79vX4vF6HxvFAKSSOsxTVixJj2NxLVHCC5vYADUknQWmpw/YfEKF7i3IFzmXTw3kyWx01qZvOsS6NfaJrYVCLWsT97W+23lOq4LsQlv8V9ei/qY/X7D4crZWcHqbH5WEv86c/wDUzL9ccwuAFNrsb32Zdr+I5SxdrG4O22k3+J7BEghXBvprdeW2gMylbheR2pkHMm+mmkzXr63Nl/4q6u5OvrIdQesta9DLppKvFVLSYqyq7Ebx6hWzFaSJ3nZVUE3GdiFHpcyNUNzczQfZvgRVx9O+oph6p81sq/BnU+kuTrnbczrtGAwKUKa0kUBVFtOZ5sepMfMUYU7PKSYkxRhGAgxJizEmAiCHBAtIUOCAUTVfKCYqUVXEVQbtUTIGa913W2hBG9tRawvcGTq8isZ7VfxqvYZRudTMPxXE5b+ItLziXEAod6isLuQoR0qAJc5XLAd3+U/GYvjWcVSjDXlbXTXpsRYg+IM81zbXuzuSca77NOD56j4lxcJ3Uv8AjO7eg/1DpOnSj7F4P2WDpC2rguf69R/+csvZ6czkeLya/WqKFFWhBTKQTMrx7CKKpYKO+Nfgf0mt9mZR9oKF3TwBv85y80/2u3gvNOaY/CkX6ShroOk23E6GZsqhmJOgAuSegEkcO7CO9nrtkH4FtnI8W2X5+k44l18ezesZna5ZjGttNj9jpUYis7aHIqIbGxzPcgH+gTeHshhF/wDrUzb8amp/rvePLwtKaH2aKttgiBdeW09OcceHfkmvi/MSYzhKxdFzCz2XOvQka/O8fMpzJMSYcBgJMSYoxJgEYIDBAsoIIICXawvM1xjFhRlG5Gw6fkJdY+sACeSgn1nOeJ8V77C+99ep0sPhecfJevR4ZxQ8WrsHzB2BUm2VipW/K41lTh8Q5diCQ1QrnYXu/euc1gSb3v0JANjFcQqFmM0n2d4HPiUYi4QM59BYfMiZh18nHTOzbXw1PlYEWvewuSBrqBYiwOtrXlqqxNOmBooAHQAAfKSAs7x4qbVOsXaGYkmaATyEo24S7VXZ6gKE3UAEMosBl6WFjr47S3dzso9TEKnNjf6Sbma+tzq5+GcNgqdPVE1/EdT5XO0kAQFo0WEqST1GW23tCu1hsDIdd2VLKt2Og5AeNzJDONzsJArOHO81hOAQoSWbNmtfwtf5ax+pjhsis5/hsB/cxA+EQtgNInKb5ht+cmth+i7tuoTzbMfgNPnJIo/xH5fpI1EydTk9UaNH+I+tj+Ug4msykhQptl3uNSDcf6T6yfWqAAk7AEnyEoKD5wXY2zkt6Hb5ATOiYcao94FfPb4jSCQWrKvOCb+mcaqEzWF4cicRq5VsNz+x85tvISdqg7Q4uyML8jfx3nL+I1CzBb/ev+f6zZ9qsVlFhtfX6TnWPcm59Jyk7XfvILEPdjrOm/ZXhxkqVOfdT6k/QTkiKFY+g852P7MNMK79XsPRR+s2Tlbu25bukRr1jhkbCnQt1P0j5M6y9jz2cvBExLtKvivGEorqbub2UfU9BMae0WIVmPtSDfRWVSOelrbet5l1I2ZtdDzeMImYRO3joP8AGohx1Q2OnRW0P90s8J21wNW16ppseVQFdfM3X5zZqVlzqfxfVsQq6G/wjIrMdkAHVjBSqBxenUV16qR9RpI+IsPfZgTt4eEpJnGYy5yr7o+Z6xoVJFqOg++L+JtEe08ZotKbg7xji2PKKioPedAx/CN7/EAesapPHqmEzq3gLg+RB/KRfaosMO4sJNB0lfhqXWTQNLSGqzjNXuBNb1DY/wAo1b9JGIW20eq1A9VjuEGQfzHVv9saqOvS0xqJUVesKFXVfxH4QTBspR8bxWVgB+/3rLyYzjWIu5J3EvXwx9ZbtK2bXloJkMUw3PoPoT0mn4rdgSdh9ZnsRTGW6geZ5Tl13k6oqr3N+fSdl7AVQmARibAs7a8u9l/2zjtXy9TNJw3H1xhURgVpqTlHIhmZ8x1uTrKvxM+9rp2N7YqiWoqHKjV20TMeSjdtfKVDcfrVlIatkJ2yiwHhpr85T8IqrYDQi9zfWNYCojFgdNTpta50Efq8PzJf+1g1QqUDgEC9mAuDfYee5tK6rXKZhcEHf0JOt+UGMxOQEI+huLGzDrz0I9fjKSvVLHUHQXt56AbzJLS6k+l4qrfX6StsS2m41+f1jzv3T/NbTwt+vykdH+9Y6cxuN9REVqyyUrC1nRw1J3R9iUZlY25m2++3hNVwr7Qa6WTEqKybFgAKgHX8LeWnnMuKqsy6eu2vXSMmmrPa4UbnawsNbddpc1Y5/mV2bCphsSgqUiCD+HQgkXswOqnwMX/2kjach4di3pOalJ2QjRT1A5NpYjbTxnS+zfbNK2WnVGSpYC+mRyfw6nKfA/GVNT+udzf4uaOAIliUyIdOR9YXtwN4zjqt0YH8JHxFt5V9JPUnB/TnFYmsERnP3QT+kaoUQAACbDYE5v8AVc/OR8eLlEOoJLnyXbn1InOqiHh6bKmu5uzebG5+sRUkx16SLVmNV+IblBCxJgmNbbEPZWPhOe8UxQLm+95tuNVQtM67kfr+U5RxHG3dm8fl+wZu1eOHuLqAhOxP7tMlWxgUWtLnHY/Onny6/wDEzGJpsWsSADz6eknM/wAr1bPcHg6LYioF+7u3gP1M12JxgpgKFBRQAb9eUz1DHJSASmt+p6nqesVj6pZSfEH4f+4vuzqpZM3l7U/C4sjbc7AQVMTmfMCFJ310J8jrKahUINwbGPU81t7c9NPnK/rl7s5E58QW8QDqSfl5Rj2l9PE62+fjGalVQ1hoAPid7/vpEA7a/H9+U3rnc/z7TrvZSLa3PjfVf0+UJDlNiCDtHqNO3ebRRr5n8/8AmHhsC9UkjW5v4yJHa3hupTBW+oYa68x0h4fDhgcykX1VrHTXSFiatVGKN3Lad8A38ie79YvD4drhi7N/VoPIDSLeKznt6cpYNADmbfwPhbTfkfjJVKmq6qD5neGhvpuTyGpPkBvJ9Hg2Jf3UyX+85yD4e98pz7rTpJjLRdmOOmr/APHqNdwLoxOrAbqerAa+Iv0mma5UDxX07wuJmOBdkVpuKtV87qQVCggL5X3PjNaqksFHW7eHQTtm2Tlebf5uu5TaQkE1gzud7WQemrH4m3pJeJqBEZzyGnieQlbRUqoB33PmdSfiZqDzVV6GQMTVAPhJFVxaQKz3EwDDIHqXb3QCT9B8yIUmcKoA/wBVyf5V0HzJ/tgjjSe3GKZEAHQmcexFZ3Y2+J0nZu2VD2lIKts4JKkm19rqOvK/TS9pzTEdl8QxJzog5C5Y+oAt85Gtc09HjzLlS4ZtGudtAeXiRIFSsXJ5Ai3Uy4xHZXEsCEqU266sPyMzz8Oqo2RlYEdCLTZ79mvU5z0m0ii6C35xx8Uo7trmO8F4BWxDlaSAlRdmJ0Xpc66npNAv2cYs97NQ9Xf8km/n37Td8nIyuHS+28eddib69N9LTYUfs4xX3qlEDwLn/YJNT7PGALPWUW5KhP1I+kqy2uf6kjCAsfLbx9NJLw2FJYAqetgCfptNbU7N0abZQWcjcuwHyUCSaOFK6AADwt84/J332ssnCyXDOTboBy6C81fD8LTGqJY225nx13klMNfS3y2kmnSsLHfrb5TZOMt6foqCLMoPmAfrEtw6g29FD/Sv0IjlM28o8DDOm6OGppoiZR0UKPpG6lYLrl+esdqSm4risiE310Ucrsxsqi/MkgTK2e0yhxd3JyqoAOVfvE23J5DXT0l9wxDa53lLwbhyIoUXvzvoSTqT8ek0Sgot7gAa7X08yZE7W3kMcSfM6JyHfb090fHX0jbRKtnzObgttcW0G36+sbcESkGqzyGVLEAbkgDzMfqjnIz4kUadTENqKaFgBuzEEKo8T+kNXPCyGNRh7qsKS+IpjvH+9mH9MKO8IwhpUKdNjdlUZyObt3qjersx9YJaUCtV9oxc6E206DkvkJS8dzZCUkenxZlARxYHnLFKiuLHUTzdle+ZuWR4bxVKKr7TUOTc7hfXYyz4twVMRSzJva6sN/KUXaXs0yZqlAFkbVqQ1OvNRzEpeDdr6uHPs2FlGliDceBvrOknfcTrUl5p0jsnlw1BMhzD/wAwsAwqH3mI6cvICah8YCLrz5znWE7TI5zLTGZhl0bfzA3lzwviBXuOMt9QOnhOmddeffj57launi9d49iqhbuKOl+kqqLrvJbYqyEjfb1lOSmrLmdjbnCCAfvSPBbRp6nTeGnVMCVDe/X4RFNTa5h/KSJXtLa2he2HQxuwAuTGfba2C/H96RSF161gTsBqSeQ5mROHp7Vi7DubICNSObnz5DoPGR6lsQ/s73VCDUttm5IevU+nWaPBYS0532ueknB4UAaaeHL4HSP1tSE5e83kNh4XP0MfQBRISPcF+bG/9Oy/LX1lSJtG5b8Xxkavfn8ouoxkN3MMM1mt4iQ8aoqVsLhBrd/+qrDolKzID4F8g+Mm0kzNr7o7zH+Eb/p6yL2HvXfE8Qbaq3sqPhSpEi48GYn+2bmeytcYIdoJaXNXrrUsdCLWjaB6WobOh/uX9RM3gKoqKrIdSNjprzlrTqVUQs2qghbjq2wtudjt0nksfSmpzp/iGKdyCjaeB19ZAxVMOLVaat4suv8AdvGuIUEdcwt5giQ6uLFGmSWJA0ABOp5AXlSVO7J9VvGeFrSUVqQKWK6ZiQb7EX1+csOD9pw1kqnKdMr67zI4nGPUN2ZiL3AJJA8hykeeiT17eHWpb2TjuPDcXnFr6j4EdRLNqgsAToPrOT9jONMtVaLt3W7qE/dbkt/wna3W06OlEMbEkN0P5dZp3qS+IHKOUKJOsOjw+0tMPSGgjhai1adgBGvZmTHTM0UFAEcZ1HWjzOsqeM1ciO5fKttbbnkAPEnSW9ap0mF7R12rYjDUkJyZzccmIUnMeoAB+cm1WWo7O4MJTVbd495vAtqZqcMp5fOV/DcNYAf+z5y2XQeE5yN1UfHOdKf4r5tdlG59dvWM1HHKFTfMTUP3tF8EG3x1PwiXqASkm3YyLVMddo1Tp52AvpuT0A3gU/avFOmGFGl/nYphSQc7MbE+A138RNlwnh64ejToL7tNFQeNhq3mTc+syPZ5P+sx74o/5WGBp0umc3BI8hmPqk3kvM5GUi0KLtBKS8vcM4maRta6k3I5+YM33CuLU3w9lOZ/aZrW1VAlrHxuTOYR3D4hkbMrFSOYkaxK648lz6vxvOIGnmLsVUcydBf9ZjuL472rkgnKNFG3rbxkfFYp6hzOxY+P5AaCRoznh5PL+vgQQQS3IpGIIINiNQROq9ne1NCuqU6rBKtgO9oGbbRttek5RBDZXo3BMQCpN7bHwkpH0JnOOzPbpCFpV+44AGdj3WI3vf3fXSbFOK0qgslZGtvldWNz1ynSZ1v1OqYhV3Mr8VxSw0W/mbRLoDsbyg7Q472aZV1ZjlHmZNtVJDzdoGYsuVQB3bi5JPQdTLbgnDbN7R1GY6L/AAg2upPU/wDEp+yvCDYVHGvITd4WkLW5SPrb6SqNMWjWM71qfXV7ckHL12+MfY5ASToBcnwHXrIinQsfefU+A5L6D53mpLdUG95GcoOpgfWMuBARVqdBKvtBino4Zsn+bW7iDnY7kfP4DrLJVzNblzPQDcyJwWmMXizW0NLDnKg5GoNB8LX9FifRe9luDjCYanQ+8Bmc9ajaufK+g8AJbQ4U6oFBDggeS4UEEAQQQQBBBBAEEEEAR3D4h0OZGZT1UkH5RqCBt+Cdr2y5arNmH3ibhv0MtOGI+Jqh325DoOp8ZzdDqD4idg7HYayB/wAX0nPUXmtZgqAUADlLeitpDwySW7hQSdgLmZCmsW+YhOXvN5DYep+QMbqP4RpGOrH3m1PgOQ9B+cQ7EwA9XpI7NFNpG86i7ubIgLMT0HL9+MwVXaTHtSpLRoi+IxJCU15i/wB49AN7+U1/Z7hCYTDph01yi7tzdzq7nzPysJmux+DbEVn4jVGneTDqfurezv6+6P6uRE2uadMzkTaVChXgvKYEEF4IHkuCbNuxtycrEAaddd/lIlbsfUU2D3Ov3enrM/UbysvBLmv2crryB+Ug1OH1V3U6Tew5USCSaeCqN7qMfSS6PAcQ21MjzIEzsOKuCaLBdkMTUPuhQCBcn6Af8TV8L+ztBY1WZz091fgNfnH6hyubUqTOQqgknYAXM0fDuxmIqWLZUHQm7fAXE6tgOA06QyoqqP4RaWSYMDlMum8c2o9ghltn1mu7LYVkpim/vJ3D422PqLH1mh9gJEqIEdW+69kPg33D66j1Eiti2pCwkfEvmYJyHeb/AGj46+kcZwBflvI6AgXPvMbnw6D0FhMC3MZdopjGXe0BuoeZMquK0XxD08ChID/4uIcfcpA2C35M2w8bnlLHPc3OoGpHXovmTpLPhGD9mGdtalRs7n5Kg8FGnxPOVme2VZ4emqIqIoVVAVVGgCgWAHpHc0YzQB5aT+aDNGM0PPND2aCM54UDGvTABsLRhh3j/LBBOSzApgrqOUpOK0lyvpy/OCCYpOwOHQAd0SyoUxbblBBMFjgEGunM/WWtOCCVE091htBBKCW5yDxb/IbzX5EQQSaQ6huF81/WOvCgkxtNvIlaCCaHuHDb1PwH/MtVggl5+Jo4BBBKSOHBBABgggmj/9k=',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 24.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        'https://www.researchgate.net/publication/345830022/figure/fig4/AS:957640029003789@1605330583881/Sample-prescription-used-as-input-to-the-GUI-developed-in-the-present-work.png',
                                        width: 150.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.textController',
                              Duration(milliseconds: 10),
                              () => safeSetState(() {}),
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '|  Message...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF1F1F1),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(27.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF1F1F1),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(27.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF1F1F1),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(27.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF1F1F1),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(27.0),
                              ),
                              filled: true,
                              fillColor: Color(0xFFF1F1F1),
                              prefixIcon: Icon(
                                Icons.camera_alt,
                                size: 22.0,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            minLines: 1,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 55.0,
                        borderWidth: 1.0,
                        buttonSize: 54.0,
                        fillColor: FlutterFlowTheme.of(context).primary,
                        icon: Icon(
                          Icons.send,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 24.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 55.0,
                        borderWidth: 1.0,
                        buttonSize: 54.0,
                        fillColor: FlutterFlowTheme.of(context).primary,
                        icon: Icon(
                          Icons.mic,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 30.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
