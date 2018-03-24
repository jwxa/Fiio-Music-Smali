.class public final Lcom/fiio/music/util/l;
.super Ljava/lang/Object;
.source "DevicesCheck.java"


# direct methods
.method public static a()Z
    .locals 2

    .prologue
    .line 18
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "X7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-static {p0}, Lcom/fiio/music/util/l;->b(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 55
    const-string v1, "app.launcher.start"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :cond_0
    return v0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boot_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 45
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 22
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "X5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 26
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "X7II"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/fiio/music/util/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fiio/music/util/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/fiio/music/util/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fiio/music/util/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fiio/music/util/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
