.class public final Lcom/fiio/a/a/b;
.super Ljava/lang/Object;
.source "ToastHelper.java"


# static fields
.field private static a:Lcom/fiio/a/a/b;

.field private static b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/fiio/a/a/b;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/fiio/a/a/b;->a:Lcom/fiio/a/a/b;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/fiio/a/a/b;

    invoke-direct {v0}, Lcom/fiio/a/a/b;-><init>()V

    sput-object v0, Lcom/fiio/a/a/b;->a:Lcom/fiio/a/a/b;

    .line 16
    :cond_0
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->a()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/fiio/a/a/b;->b:Landroid/content/Context;

    .line 17
    sget-object v0, Lcom/fiio/a/a/b;->a:Lcom/fiio/a/a/b;

    return-object v0
.end method

.method public static a(I)V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/fiio/a/a/b;->b:Landroid/content/Context;

    sget-object v1, Lcom/fiio/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 31
    return-void
.end method
