.class public Lorg/seamless/util/OS;
.super Ljava/lang/Object;
.source "OS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForHp()Z
    .locals 2

    .prologue
    .line 27
    const-string v0, "os.name"

    const-string v1, "hp"

    invoke-static {v0, v1}, Lorg/seamless/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkForLinux()Z
    .locals 2

    .prologue
    .line 23
    const-string v0, "os.name"

    const-string v1, "linux"

    invoke-static {v0, v1}, Lorg/seamless/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkForMac()Z
    .locals 2

    .prologue
    .line 39
    const-string v0, "os.name"

    const-string v1, "mac"

    invoke-static {v0, v1}, Lorg/seamless/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 48
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static checkForSolaris()Z
    .locals 2

    .prologue
    .line 31
    const-string v0, "os.name"

    const-string v1, "sun"

    invoke-static {v0, v1}, Lorg/seamless/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkForWindows()Z
    .locals 2

    .prologue
    .line 35
    const-string v0, "os.name"

    const-string v1, "win"

    invoke-static {v0, v1}, Lorg/seamless/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
