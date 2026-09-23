; ModuleID = 'bft_linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"sensor_values\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !9 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i16], align 2
  %3 = alloca i16, align 2
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [4 x i16]* %2, metadata !13, metadata !DIExpression()), !dbg !22
  %4 = getelementptr inbounds [4 x i16], [4 x i16]* %2, i64 0, i64 0, !dbg !23
  %5 = bitcast i16* %4 to i8*, !dbg !23
  call void @klee_make_symbolic(i8* %5, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !24
  call void @llvm.dbg.declare(metadata i16* %3, metadata !25, metadata !DIExpression()), !dbg !26
  %6 = getelementptr inbounds [4 x i16], [4 x i16]* %2, i64 0, i64 0, !dbg !27
  %7 = call zeroext i16 @BFT_Vote(i16* %6), !dbg !28
  store i16 %7, i16* %3, align 2, !dbg !26
  ret i32 0, !dbg !29
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @BFT_Vote(i16* %0) #0 !dbg !30 {
  %2 = alloca i16, align 2
  %3 = alloca i16*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i16* %0, i16** %3, align 8
  call void @llvm.dbg.declare(metadata i16** %3, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i16* %4, metadata !37, metadata !DIExpression()), !dbg !38
  %8 = load i16*, i16** %3, align 8, !dbg !39
  %9 = getelementptr inbounds i16, i16* %8, i64 0, !dbg !39
  %10 = load i16, i16* %9, align 2, !dbg !39
  store i16 %10, i16* %4, align 2, !dbg !38
  call void @llvm.dbg.declare(metadata i16* %5, metadata !40, metadata !DIExpression()), !dbg !41
  %11 = load i16*, i16** %3, align 8, !dbg !42
  %12 = getelementptr inbounds i16, i16* %11, i64 1, !dbg !42
  %13 = load i16, i16* %12, align 2, !dbg !42
  store i16 %13, i16* %5, align 2, !dbg !41
  call void @llvm.dbg.declare(metadata i16* %6, metadata !43, metadata !DIExpression()), !dbg !44
  %14 = load i16*, i16** %3, align 8, !dbg !45
  %15 = getelementptr inbounds i16, i16* %14, i64 2, !dbg !45
  %16 = load i16, i16* %15, align 2, !dbg !45
  store i16 %16, i16* %6, align 2, !dbg !44
  call void @llvm.dbg.declare(metadata i16* %7, metadata !46, metadata !DIExpression()), !dbg !47
  %17 = load i16*, i16** %3, align 8, !dbg !48
  %18 = getelementptr inbounds i16, i16* %17, i64 3, !dbg !48
  %19 = load i16, i16* %18, align 2, !dbg !48
  store i16 %19, i16* %7, align 2, !dbg !47
  %20 = load i16, i16* %4, align 2, !dbg !49
  %21 = zext i16 %20 to i32, !dbg !49
  %22 = load i16, i16* %5, align 2, !dbg !51
  %23 = zext i16 %22 to i32, !dbg !51
  %24 = icmp eq i32 %21, %23, !dbg !52
  br i1 %24, label %25, label %33, !dbg !53

25:                                               ; preds = %1
  %26 = load i16, i16* %5, align 2, !dbg !54
  %27 = zext i16 %26 to i32, !dbg !54
  %28 = load i16, i16* %6, align 2, !dbg !55
  %29 = zext i16 %28 to i32, !dbg !55
  %30 = icmp eq i32 %27, %29, !dbg !56
  br i1 %30, label %31, label %33, !dbg !57

31:                                               ; preds = %25
  %32 = load i16, i16* %4, align 2, !dbg !58
  store i16 %32, i16* %2, align 2, !dbg !60
  br label %76, !dbg !60

33:                                               ; preds = %25, %1
  %34 = load i16, i16* %4, align 2, !dbg !61
  %35 = zext i16 %34 to i32, !dbg !61
  %36 = load i16, i16* %5, align 2, !dbg !63
  %37 = zext i16 %36 to i32, !dbg !63
  %38 = icmp eq i32 %35, %37, !dbg !64
  br i1 %38, label %39, label %47, !dbg !65

39:                                               ; preds = %33
  %40 = load i16, i16* %5, align 2, !dbg !66
  %41 = zext i16 %40 to i32, !dbg !66
  %42 = load i16, i16* %7, align 2, !dbg !67
  %43 = zext i16 %42 to i32, !dbg !67
  %44 = icmp eq i32 %41, %43, !dbg !68
  br i1 %44, label %45, label %47, !dbg !69

45:                                               ; preds = %39
  %46 = load i16, i16* %4, align 2, !dbg !70
  store i16 %46, i16* %2, align 2, !dbg !72
  br label %76, !dbg !72

47:                                               ; preds = %39, %33
  %48 = load i16, i16* %4, align 2, !dbg !73
  %49 = zext i16 %48 to i32, !dbg !73
  %50 = load i16, i16* %6, align 2, !dbg !75
  %51 = zext i16 %50 to i32, !dbg !75
  %52 = icmp eq i32 %49, %51, !dbg !76
  br i1 %52, label %53, label %61, !dbg !77

53:                                               ; preds = %47
  %54 = load i16, i16* %6, align 2, !dbg !78
  %55 = zext i16 %54 to i32, !dbg !78
  %56 = load i16, i16* %7, align 2, !dbg !79
  %57 = zext i16 %56 to i32, !dbg !79
  %58 = icmp eq i32 %55, %57, !dbg !80
  br i1 %58, label %59, label %61, !dbg !81

59:                                               ; preds = %53
  %60 = load i16, i16* %4, align 2, !dbg !82
  store i16 %60, i16* %2, align 2, !dbg !84
  br label %76, !dbg !84

61:                                               ; preds = %53, %47
  %62 = load i16, i16* %5, align 2, !dbg !85
  %63 = zext i16 %62 to i32, !dbg !85
  %64 = load i16, i16* %6, align 2, !dbg !87
  %65 = zext i16 %64 to i32, !dbg !87
  %66 = icmp eq i32 %63, %65, !dbg !88
  br i1 %66, label %67, label %75, !dbg !89

67:                                               ; preds = %61
  %68 = load i16, i16* %6, align 2, !dbg !90
  %69 = zext i16 %68 to i32, !dbg !90
  %70 = load i16, i16* %7, align 2, !dbg !91
  %71 = zext i16 %70 to i32, !dbg !91
  %72 = icmp eq i32 %69, %71, !dbg !92
  br i1 %72, label %73, label %75, !dbg !93

73:                                               ; preds = %67
  %74 = load i16, i16* %5, align 2, !dbg !94
  store i16 %74, i16* %2, align 2, !dbg !96
  br label %76, !dbg !96

75:                                               ; preds = %67, %61
  store i16 -1, i16* %2, align 2, !dbg !97
  br label %76, !dbg !97

76:                                               ; preds = %75, %73, %59, %45, %31
  %77 = load i16, i16* %2, align 2, !dbg !98
  ret i16 %77, !dbg !98
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
!13 = !DILocalVariable(name: "sensor_values", scope: !9, file: !1, line: 6, type: !14)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !20)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !16, line: 25, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !18, line: 39, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!19 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DILocation(line: 6, column: 14, scope: !9)
!23 = !DILocation(line: 9, column: 24, scope: !9)
!24 = !DILocation(line: 9, column: 5, scope: !9)
!25 = !DILocalVariable(name: "result", scope: !9, file: !1, line: 12, type: !15)
!26 = !DILocation(line: 12, column: 14, scope: !9)
!27 = !DILocation(line: 12, column: 32, scope: !9)
!28 = !DILocation(line: 12, column: 23, scope: !9)
!29 = !DILocation(line: 14, column: 5, scope: !9)
!30 = distinct !DISubprogram(name: "BFT_Vote", scope: !4, file: !4, line: 3, type: !31, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!31 = !DISubroutineType(types: !32)
!32 = !{!15, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!35 = !DILocalVariable(name: "sensor_values", arg: 1, scope: !30, file: !4, line: 3, type: !33)
!36 = !DILocation(line: 3, column: 34, scope: !30)
!37 = !DILocalVariable(name: "v0", scope: !30, file: !4, line: 8, type: !15)
!38 = !DILocation(line: 8, column: 14, scope: !30)
!39 = !DILocation(line: 8, column: 19, scope: !30)
!40 = !DILocalVariable(name: "v1", scope: !30, file: !4, line: 9, type: !15)
!41 = !DILocation(line: 9, column: 14, scope: !30)
!42 = !DILocation(line: 9, column: 19, scope: !30)
!43 = !DILocalVariable(name: "v2", scope: !30, file: !4, line: 10, type: !15)
!44 = !DILocation(line: 10, column: 14, scope: !30)
!45 = !DILocation(line: 10, column: 19, scope: !30)
!46 = !DILocalVariable(name: "v3", scope: !30, file: !4, line: 11, type: !15)
!47 = !DILocation(line: 11, column: 14, scope: !30)
!48 = !DILocation(line: 11, column: 19, scope: !30)
!49 = !DILocation(line: 13, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !30, file: !4, line: 13, column: 9)
!51 = !DILocation(line: 13, column: 15, scope: !50)
!52 = !DILocation(line: 13, column: 12, scope: !50)
!53 = !DILocation(line: 13, column: 18, scope: !50)
!54 = !DILocation(line: 13, column: 21, scope: !50)
!55 = !DILocation(line: 13, column: 27, scope: !50)
!56 = !DILocation(line: 13, column: 24, scope: !50)
!57 = !DILocation(line: 13, column: 9, scope: !30)
!58 = !DILocation(line: 14, column: 16, scope: !59)
!59 = distinct !DILexicalBlock(scope: !50, file: !4, line: 13, column: 31)
!60 = !DILocation(line: 14, column: 9, scope: !59)
!61 = !DILocation(line: 16, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !30, file: !4, line: 16, column: 9)
!63 = !DILocation(line: 16, column: 15, scope: !62)
!64 = !DILocation(line: 16, column: 12, scope: !62)
!65 = !DILocation(line: 16, column: 18, scope: !62)
!66 = !DILocation(line: 16, column: 21, scope: !62)
!67 = !DILocation(line: 16, column: 27, scope: !62)
!68 = !DILocation(line: 16, column: 24, scope: !62)
!69 = !DILocation(line: 16, column: 9, scope: !30)
!70 = !DILocation(line: 17, column: 16, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !4, line: 16, column: 31)
!72 = !DILocation(line: 17, column: 9, scope: !71)
!73 = !DILocation(line: 19, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !30, file: !4, line: 19, column: 9)
!75 = !DILocation(line: 19, column: 15, scope: !74)
!76 = !DILocation(line: 19, column: 12, scope: !74)
!77 = !DILocation(line: 19, column: 18, scope: !74)
!78 = !DILocation(line: 19, column: 21, scope: !74)
!79 = !DILocation(line: 19, column: 27, scope: !74)
!80 = !DILocation(line: 19, column: 24, scope: !74)
!81 = !DILocation(line: 19, column: 9, scope: !30)
!82 = !DILocation(line: 20, column: 16, scope: !83)
!83 = distinct !DILexicalBlock(scope: !74, file: !4, line: 19, column: 31)
!84 = !DILocation(line: 20, column: 9, scope: !83)
!85 = !DILocation(line: 22, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !30, file: !4, line: 22, column: 9)
!87 = !DILocation(line: 22, column: 15, scope: !86)
!88 = !DILocation(line: 22, column: 12, scope: !86)
!89 = !DILocation(line: 22, column: 18, scope: !86)
!90 = !DILocation(line: 22, column: 21, scope: !86)
!91 = !DILocation(line: 22, column: 27, scope: !86)
!92 = !DILocation(line: 22, column: 24, scope: !86)
!93 = !DILocation(line: 22, column: 9, scope: !30)
!94 = !DILocation(line: 23, column: 16, scope: !95)
!95 = distinct !DILexicalBlock(scope: !86, file: !4, line: 22, column: 31)
!96 = !DILocation(line: 23, column: 9, scope: !95)
!97 = !DILocation(line: 26, column: 5, scope: !30)
!98 = !DILocation(line: 27, column: 1, scope: !30)
