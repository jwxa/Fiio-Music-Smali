.class public Lcom/audlabs/viperfx/base/V4AJniInterface;
.super Ljava/lang/Object;
.source "V4AJniInterface.java"


# static fields
.field private static mJniLoadOK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    :try_start_0
    const-string v0, "V4AJniUtils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/audlabs/viperfx/base/V4AJniInterface;->mJniLoadOK:Z

    .line 16
    const-string v0, "ViPER4Android_Utils"

    const-string v1, "libV4AJniUtils.so loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/audlabs/viperfx/base/V4AJniInterface;->mJniLoadOK:Z

    .line 19
    const-string v0, "ViPER4Android_Utils"

    const-string v1, "[Fatal] Can\'t load libV4AJniUtils.so"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native CheckCPUHasNEON()I
.end method

.method private static native CheckCPUHasVFP()I
.end method

.method public static CheckLibrary()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 40
    sget-boolean v2, Lcom/audlabs/viperfx/base/V4AJniInterface;->mJniLoadOK:Z

    if-nez v2, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    invoke-static {}, Lcom/audlabs/viperfx/base/V4AJniInterface;->CheckLibraryUsable()I

    move-result v2

    .line 44
    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static native CheckLibraryUsable()I
.end method

.method public static GetHashImpulseResponseArray([B)[I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 96
    sget-boolean v1, Lcom/audlabs/viperfx/base/V4AJniInterface;->mJniLoadOK:Z

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 99
    :cond_1
    if-eqz p0, :cond_0

    .line 103
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/audlabs/viperfx/base/V4AJniInterface;->HashImpulseResponse([BI)[I

    move-result-object v0

    goto :goto_0
.end method

.method private static native GetImpulseResponseInfo(Landroid/content/Context;[B)[I
.end method

.method public static GetImpulseResponseInfoArray(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    sget-boolean v1, Lcom/audlabs/viperfx/base/V4AJniInterface;->mJniLoadOK:Z

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 79
    invoke-static {p0, v1}, Lcom/audlabs/viperfx/base/V4AJniInterface;->GetImpulseResponseInfo(Landroid/content/Context;[B)[I

    move-result-object v0

    goto :goto_0
.end method

.method private static native HashImpulseResponse([BI)[I
.end method

.method public static IsCPUSupportNEON()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 52
    sget-boolean v1, Lcom/audlabs/viperfx/base/V4AJniInterface;->mJniLoadOK:Z

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    invoke-static {}, Lcom/audlabs/viperfx/base/V4AJniInterface;->CheckCPUHasNEON()I

    move-result v1

    .line 56
    const-string v2, "ViPER4Android_Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CpuInfo[jni] = NEON:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static IsCPUSupportVFP()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 61
    sget-boolean v1, Lcom/audlabs/viperfx/base/V4AJniInterface;->mJniLoadOK:Z

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    invoke-static {}, Lcom/audlabs/viperfx/base/V4AJniInterface;->CheckCPUHasVFP()I

    move-result v1

    .line 65
    const-string v2, "ViPER4Android_Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CpuInfo[jni] = VFP:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static IsLibraryUsable()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/audlabs/viperfx/base/V4AJniInterface;->mJniLoadOK:Z

    return v0
.end method

.method private static native ReadImpulseResponse(Landroid/content/Context;[B)[B
.end method

.method public static ReadImpulseResponseToArray(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    sget-boolean v1, Lcom/audlabs/viperfx/base/V4AJniInterface;->mJniLoadOK:Z

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    .line 92
    invoke-static {p0, v1}, Lcom/audlabs/viperfx/base/V4AJniInterface;->ReadImpulseResponse(Landroid/content/Context;[B)[B

    move-result-object v0

    goto :goto_0
.end method
