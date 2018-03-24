.class public final Lcom/fiio/music/util/a;
.super Ljava/lang/Object;
.source "AboutStyleParameterUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 62
    const-string v0, "skinparamter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    const-string v1, "skin"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 66
    return v0
.end method
