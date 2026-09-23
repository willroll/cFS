; ModuleID = 'bft_linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"v0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"v1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"v2\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"v3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !9 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca [4 x i16], align 2
  %7 = alloca i16, align 2
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i16* %2, metadata !13, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i16* %3, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i16* %4, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i16* %5, metadata !24, metadata !DIExpression()), !dbg !25
  %8 = bitcast i16* %2 to i8*, !dbg !26
  call void @klee_make_symbolic(i8* %8, i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !27
  %9 = bitcast i16* %3 to i8*, !dbg !28
  call void @klee_make_symbolic(i8* %9, i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !29
  %10 = bitcast i16* %4 to i8*, !dbg !30
  call void @klee_make_symbolic(i8* %10, i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !31
  %11 = bitcast i16* %5 to i8*, !dbg !32
  call void @klee_make_symbolic(i8* %11, i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)), !dbg !33
  call void @llvm.dbg.declare(metadata [4 x i16]* %6, metadata !34, metadata !DIExpression()), !dbg !38
  %12 = getelementptr inbounds [4 x i16], [4 x i16]* %6, i64 0, i64 0, !dbg !39
  %13 = load i16, i16* %2, align 2, !dbg !40
  store i16 %13, i16* %12, align 2, !dbg !39
  %14 = getelementptr inbounds i16, i16* %12, i64 1, !dbg !39
  %15 = load i16, i16* %3, align 2, !dbg !41
  store i16 %15, i16* %14, align 2, !dbg !39
  %16 = getelementptr inbounds i16, i16* %14, i64 1, !dbg !39
  %17 = load i16, i16* %4, align 2, !dbg !42
  store i16 %17, i16* %16, align 2, !dbg !39
  %18 = getelementptr inbounds i16, i16* %16, i64 1, !dbg !39
  %19 = load i16, i16* %5, align 2, !dbg !43
  store i16 %19, i16* %18, align 2, !dbg !39
  call void @llvm.dbg.declare(metadata i16* %7, metadata !44, metadata !DIExpression()), !dbg !45
  %20 = getelementptr inbounds [4 x i16], [4 x i16]* %6, i64 0, i64 0, !dbg !46
  %21 = call zeroext i16 @BFT_Vote(i16* %20), !dbg !47
  store i16 %21, i16* %7, align 2, !dbg !45
  ret i32 0, !dbg !48
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @BFT_Vote(i16* %0) #0 !dbg !49 {
  %2 = alloca i16, align 2
  %3 = alloca i16*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i16* %0, i16** %3, align 8
  call void @llvm.dbg.declare(metadata i16** %3, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i16* %4, metadata !56, metadata !DIExpression()), !dbg !57
  %8 = load i16*, i16** %3, align 8, !dbg !58
  %9 = getelementptr inbounds i16, i16* %8, i64 0, !dbg !58
  %10 = load i16, i16* %9, align 2, !dbg !58
  store i16 %10, i16* %4, align 2, !dbg !57
  call void @llvm.dbg.declare(metadata i16* %5, metadata !59, metadata !DIExpression()), !dbg !60
  %11 = load i16*, i16** %3, align 8, !dbg !61
  %12 = getelementptr inbounds i16, i16* %11, i64 1, !dbg !61
  %13 = load i16, i16* %12, align 2, !dbg !61
  store i16 %13, i16* %5, align 2, !dbg !60
  call void @llvm.dbg.declare(metadata i16* %6, metadata !62, metadata !DIExpression()), !dbg !63
  %14 = load i16*, i16** %3, align 8, !dbg !64
  %15 = getelementptr inbounds i16, i16* %14, i64 2, !dbg !64
  %16 = load i16, i16* %15, align 2, !dbg !64
  store i16 %16, i16* %6, align 2, !dbg !63
  call void @llvm.dbg.declare(metadata i16* %7, metadata !65, metadata !DIExpression()), !dbg !66
  %17 = load i16*, i16** %3, align 8, !dbg !67
  %18 = getelementptr inbounds i16, i16* %17, i64 3, !dbg !67
  %19 = load i16, i16* %18, align 2, !dbg !67
  store i16 %19, i16* %7, align 2, !dbg !66
  %20 = load i16, i16* %4, align 2, !dbg !68
  %21 = zext i16 %20 to i32, !dbg !68
  %22 = load i16, i16* %5, align 2, !dbg !70
  %23 = zext i16 %22 to i32, !dbg !70
  %24 = icmp eq i32 %21, %23, !dbg !71
  br i1 %24, label %25, label %33, !dbg !72

25:                                               ; preds = %1
  %26 = load i16, i16* %5, align 2, !dbg !73
  %27 = zext i16 %26 to i32, !dbg !73
  %28 = load i16, i16* %6, align 2, !dbg !74
  %29 = zext i16 %28 to i32, !dbg !74
  %30 = icmp eq i32 %27, %29, !dbg !75
  br i1 %30, label %31, label %33, !dbg !76

31:                                               ; preds = %25
  %32 = load i16, i16* %4, align 2, !dbg !77
  store i16 %32, i16* %2, align 2, !dbg !79
  br label %76, !dbg !79

33:                                               ; preds = %25, %1
  %34 = load i16, i16* %4, align 2, !dbg !80
  %35 = zext i16 %34 to i32, !dbg !80
  %36 = load i16, i16* %5, align 2, !dbg !82
  %37 = zext i16 %36 to i32, !dbg !82
  %38 = icmp eq i32 %35, %37, !dbg !83
  br i1 %38, label %39, label %47, !dbg !84

39:                                               ; preds = %33
  %40 = load i16, i16* %5, align 2, !dbg !85
  %41 = zext i16 %40 to i32, !dbg !85
  %42 = load i16, i16* %7, align 2, !dbg !86
  %43 = zext i16 %42 to i32, !dbg !86
  %44 = icmp eq i32 %41, %43, !dbg !87
  br i1 %44, label %45, label %47, !dbg !88

45:                                               ; preds = %39
  %46 = load i16, i16* %4, align 2, !dbg !89
  store i16 %46, i16* %2, align 2, !dbg !91
  br label %76, !dbg !91

47:                                               ; preds = %39, %33
  %48 = load i16, i16* %4, align 2, !dbg !92
  %49 = zext i16 %48 to i32, !dbg !92
  %50 = load i16, i16* %6, align 2, !dbg !94
  %51 = zext i16 %50 to i32, !dbg !94
  %52 = icmp eq i32 %49, %51, !dbg !95
  br i1 %52, label %53, label %61, !dbg !96

53:                                               ; preds = %47
  %54 = load i16, i16* %6, align 2, !dbg !97
  %55 = zext i16 %54 to i32, !dbg !97
  %56 = load i16, i16* %7, align 2, !dbg !98
  %57 = zext i16 %56 to i32, !dbg !98
  %58 = icmp eq i32 %55, %57, !dbg !99
  br i1 %58, label %59, label %61, !dbg !100

59:                                               ; preds = %53
  %60 = load i16, i16* %4, align 2, !dbg !101
  store i16 %60, i16* %2, align 2, !dbg !103
  br label %76, !dbg !103

61:                                               ; preds = %53, %47
  %62 = load i16, i16* %5, align 2, !dbg !104
  %63 = zext i16 %62 to i32, !dbg !104
  %64 = load i16, i16* %6, align 2, !dbg !106
  %65 = zext i16 %64 to i32, !dbg !106
  %66 = icmp eq i32 %63, %65, !dbg !107
  br i1 %66, label %67, label %75, !dbg !108

67:                                               ; preds = %61
  %68 = load i16, i16* %6, align 2, !dbg !109
  %69 = zext i16 %68 to i32, !dbg !109
  %70 = load i16, i16* %7, align 2, !dbg !110
  %71 = zext i16 %70 to i32, !dbg !110
  %72 = icmp eq i32 %69, %71, !dbg !111
  br i1 %72, label %73, label %75, !dbg !112

73:                                               ; preds = %67
  %74 = load i16, i16* %5, align 2, !dbg !113
  store i16 %74, i16* %2, align 2, !dbg !115
  br label %76, !dbg !115

75:                                               ; preds = %67, %61
  store i16 -1, i16* %2, align 2, !dbg !116
  br label %76, !dbg !116

76:                                               ; preds = %75, %73, %59, %45, %31
  %77 = load i16, i16* %2, align 2, !dbg !117
  ret i16 %77, !dbg !117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0, !3}
!llvm.ident = !{!5, !5}
!llvm.module.flags = !{!6, !7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 11.1.0-++20211011094159+1fdec59bffc1-1~exp1~20211011214614.8", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "apps/bft_app/fsw/src/bft_klee_harness.c", directory: "/workspace")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 11.1.0-++20211011094159+1fdec59bffc1-1~exp1~20211011214614.8", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "apps/bft_app/fsw/src/bft_voter.c", directory: "/workspace")
!5 = !{!"Ubuntu clang version 11.1.0-++20211011094159+1fdec59bffc1-1~exp1~20211011214614.8"}
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !10, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "v0", scope: !9, file: !1, line: 6, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !15, line: 25, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !17, line: 39, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!18 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!19 = !DILocation(line: 6, column: 14, scope: !9)
!20 = !DILocalVariable(name: "v1", scope: !9, file: !1, line: 6, type: !14)
!21 = !DILocation(line: 6, column: 18, scope: !9)
!22 = !DILocalVariable(name: "v2", scope: !9, file: !1, line: 6, type: !14)
!23 = !DILocation(line: 6, column: 22, scope: !9)
!24 = !DILocalVariable(name: "v3", scope: !9, file: !1, line: 6, type: !14)
!25 = !DILocation(line: 6, column: 26, scope: !9)
!26 = !DILocation(line: 9, column: 24, scope: !9)
!27 = !DILocation(line: 9, column: 5, scope: !9)
!28 = !DILocation(line: 10, column: 24, scope: !9)
!29 = !DILocation(line: 10, column: 5, scope: !9)
!30 = !DILocation(line: 11, column: 24, scope: !9)
!31 = !DILocation(line: 11, column: 5, scope: !9)
!32 = !DILocation(line: 12, column: 24, scope: !9)
!33 = !DILocation(line: 12, column: 5, scope: !9)
!34 = !DILocalVariable(name: "sensor_values", scope: !9, file: !1, line: 14, type: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 4)
!38 = !DILocation(line: 14, column: 14, scope: !9)
!39 = !DILocation(line: 14, column: 33, scope: !9)
!40 = !DILocation(line: 14, column: 34, scope: !9)
!41 = !DILocation(line: 14, column: 38, scope: !9)
!42 = !DILocation(line: 14, column: 42, scope: !9)
!43 = !DILocation(line: 14, column: 46, scope: !9)
!44 = !DILocalVariable(name: "result", scope: !9, file: !1, line: 17, type: !14)
!45 = !DILocation(line: 17, column: 14, scope: !9)
!46 = !DILocation(line: 17, column: 32, scope: !9)
!47 = !DILocation(line: 17, column: 23, scope: !9)
!48 = !DILocation(line: 19, column: 5, scope: !9)
!49 = distinct !DISubprogram(name: "BFT_Vote", scope: !4, file: !4, line: 3, type: !50, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{!14, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!54 = !DILocalVariable(name: "sensor_values", arg: 1, scope: !49, file: !4, line: 3, type: !52)
!55 = !DILocation(line: 3, column: 34, scope: !49)
!56 = !DILocalVariable(name: "v0", scope: !49, file: !4, line: 8, type: !14)
!57 = !DILocation(line: 8, column: 14, scope: !49)
!58 = !DILocation(line: 8, column: 19, scope: !49)
!59 = !DILocalVariable(name: "v1", scope: !49, file: !4, line: 9, type: !14)
!60 = !DILocation(line: 9, column: 14, scope: !49)
!61 = !DILocation(line: 9, column: 19, scope: !49)
!62 = !DILocalVariable(name: "v2", scope: !49, file: !4, line: 10, type: !14)
!63 = !DILocation(line: 10, column: 14, scope: !49)
!64 = !DILocation(line: 10, column: 19, scope: !49)
!65 = !DILocalVariable(name: "v3", scope: !49, file: !4, line: 11, type: !14)
!66 = !DILocation(line: 11, column: 14, scope: !49)
!67 = !DILocation(line: 11, column: 19, scope: !49)
!68 = !DILocation(line: 13, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !49, file: !4, line: 13, column: 9)
!70 = !DILocation(line: 13, column: 15, scope: !69)
!71 = !DILocation(line: 13, column: 12, scope: !69)
!72 = !DILocation(line: 13, column: 18, scope: !69)
!73 = !DILocation(line: 13, column: 21, scope: !69)
!74 = !DILocation(line: 13, column: 27, scope: !69)
!75 = !DILocation(line: 13, column: 24, scope: !69)
!76 = !DILocation(line: 13, column: 9, scope: !49)
!77 = !DILocation(line: 14, column: 16, scope: !78)
!78 = distinct !DILexicalBlock(scope: !69, file: !4, line: 13, column: 31)
!79 = !DILocation(line: 14, column: 9, scope: !78)
!80 = !DILocation(line: 16, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !49, file: !4, line: 16, column: 9)
!82 = !DILocation(line: 16, column: 15, scope: !81)
!83 = !DILocation(line: 16, column: 12, scope: !81)
!84 = !DILocation(line: 16, column: 18, scope: !81)
!85 = !DILocation(line: 16, column: 21, scope: !81)
!86 = !DILocation(line: 16, column: 27, scope: !81)
!87 = !DILocation(line: 16, column: 24, scope: !81)
!88 = !DILocation(line: 16, column: 9, scope: !49)
!89 = !DILocation(line: 17, column: 16, scope: !90)
!90 = distinct !DILexicalBlock(scope: !81, file: !4, line: 16, column: 31)
!91 = !DILocation(line: 17, column: 9, scope: !90)
!92 = !DILocation(line: 19, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !49, file: !4, line: 19, column: 9)
!94 = !DILocation(line: 19, column: 15, scope: !93)
!95 = !DILocation(line: 19, column: 12, scope: !93)
!96 = !DILocation(line: 19, column: 18, scope: !93)
!97 = !DILocation(line: 19, column: 21, scope: !93)
!98 = !DILocation(line: 19, column: 27, scope: !93)
!99 = !DILocation(line: 19, column: 24, scope: !93)
!100 = !DILocation(line: 19, column: 9, scope: !49)
!101 = !DILocation(line: 20, column: 16, scope: !102)
!102 = distinct !DILexicalBlock(scope: !93, file: !4, line: 19, column: 31)
!103 = !DILocation(line: 20, column: 9, scope: !102)
!104 = !DILocation(line: 22, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !49, file: !4, line: 22, column: 9)
!106 = !DILocation(line: 22, column: 15, scope: !105)
!107 = !DILocation(line: 22, column: 12, scope: !105)
!108 = !DILocation(line: 22, column: 18, scope: !105)
!109 = !DILocation(line: 22, column: 21, scope: !105)
!110 = !DILocation(line: 22, column: 27, scope: !105)
!111 = !DILocation(line: 22, column: 24, scope: !105)
!112 = !DILocation(line: 22, column: 9, scope: !49)
!113 = !DILocation(line: 23, column: 16, scope: !114)
!114 = distinct !DILexicalBlock(scope: !105, file: !4, line: 22, column: 31)
!115 = !DILocation(line: 23, column: 9, scope: !114)
!116 = !DILocation(line: 26, column: 5, scope: !49)
!117 = !DILocation(line: 27, column: 1, scope: !49)
