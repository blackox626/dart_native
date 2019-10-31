import 'dart:ffi';

import 'package:dart_objc/src/common/library.dart';
import 'package:ffi/ffi.dart';

typedef MethodSignatureC = Pointer<Void> Function(Pointer<Void> instance,
    Pointer<Void> selector, Pointer<Pointer<Utf8>> typeEncodings);
typedef MethodSignatureD = Pointer<Void> Function(Pointer<Void> instance,
    Pointer<Void> selector, Pointer<Pointer<Utf8>> typeEncodings);
final MethodSignatureD nativeMethodSignature =
    nativeRuntimeLib.lookupFunction<MethodSignatureC, MethodSignatureD>(
        'native_method_signature');

typedef AddMethodC = Int32 Function(
    Pointer<Void> target,
    Pointer<Void> selector,
    Pointer<Void> protocol,
    Pointer<NativeFunction<MethodIMPCallbackC>> callback);
typedef AddMethodD = int Function(
    Pointer<Void> target,
    Pointer<Void> selector,
    Pointer<Void> protocol,
    Pointer<NativeFunction<MethodIMPCallbackC>> callback);
final AddMethodD nativeAddMethod = nativeRuntimeLib
    .lookupFunction<AddMethodC, AddMethodD>('native_add_method');

typedef GetClassC = Pointer<Void> Function(
    Pointer<Utf8> className, Pointer<Void> baseClass);
typedef GetClassD = Pointer<Void> Function(
    Pointer<Utf8> className, Pointer<Void> baseClass);
final GetClassD nativeGetClass =
    nativeRuntimeLib.lookupFunction<GetClassC, GetClassD>('native_get_class');

typedef InvokeMethodC = Pointer<Void> Function(
    Pointer<Void> instance,
    Pointer<Void> selector,
    Pointer<Void> signature,
    Pointer<Pointer<Void>> args);
typedef InvokeMethodD = Pointer<Void> Function(
    Pointer<Void> instance,
    Pointer<Void> selector,
    Pointer<Void> signature,
    Pointer<Pointer<Void>> args);
final InvokeMethodD nativeInvokeMethod = nativeRuntimeLib
    .lookupFunction<InvokeMethodC, InvokeMethodD>('native_instance_invoke');

typedef InvokeMethodNoArgsC = Pointer<Void> Function(
    Pointer<Void> instance, Pointer<Void> selector, Pointer<Void> signature);
typedef InvokeMethodNoArgsD = Pointer<Void> Function(
    Pointer<Void> instance, Pointer<Void> selector, Pointer<Void> signature);
final InvokeMethodNoArgsD nativeInvokeMethodNoArgs =
    nativeRuntimeLib.lookupFunction<InvokeMethodNoArgsC, InvokeMethodNoArgsD>(
        'native_instance_invoke');

typedef MethodIMPCallbackC = Void Function(
    Pointer<Void> target,
    Pointer<Void> selector,
    Pointer<Pointer<Pointer<Void>>> argsPtrPtr,
    Pointer<Pointer<Void>> retPtr,
    Int32 argCount,
    Pointer<Pointer<Utf8>> types);

typedef TypeEncodingC = Pointer<Utf8> Function(Pointer<Utf8> str);
typedef TypeEncodingD = Pointer<Utf8> Function(Pointer<Utf8> str);
final TypeEncodingD nativeTypeEncoding = nativeRuntimeLib
    .lookupFunction<TypeEncodingC, TypeEncodingD>('native_type_encoding');

typedef TypesEncodingC = Pointer<Pointer<Utf8>> Function(
    Pointer<Utf8> str, Pointer<Int32> count, Int32 startIndex);
typedef TypesEncodingD = Pointer<Pointer<Utf8>> Function(
    Pointer<Utf8> str, Pointer<Int32> count, int startIndex);
final TypesEncodingD nativeTypesEncoding = nativeRuntimeLib
    .lookupFunction<TypesEncodingC, TypesEncodingD>('native_types_encoding');

typedef BlockCallbackC = Void Function(
    Pointer<Void> blockPtr,
    Pointer<Pointer<Pointer<Void>>> argsPtrPtr,
    Pointer<Pointer<Void>> retPtr,
    Int32 argCount);
typedef BlockCreateC = Pointer<Void> Function(Pointer<Utf8> typeEncodings,
    Pointer<NativeFunction<BlockCallbackC>> callback);
typedef BlockCreateD = Pointer<Void> Function(Pointer<Utf8> typeEncodings,
    Pointer<NativeFunction<BlockCallbackC>> callback);
final BlockCreateD blockCreate = nativeRuntimeLib
    .lookupFunction<BlockCreateC, BlockCreateD>('native_block_create');

typedef BlockInvokeC = Pointer<Void> Function(
    Pointer<Void> block, Pointer<Pointer<Void>> args);
typedef BlockInvokeD = Pointer<Void> Function(
    Pointer<Void> block, Pointer<Pointer<Void>> args);
final BlockInvokeD blockInvoke = nativeRuntimeLib
    .lookupFunction<BlockInvokeC, BlockInvokeD>('native_block_invoke');