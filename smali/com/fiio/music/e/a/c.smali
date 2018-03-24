.class final Lcom/fiio/music/e/a/c;
.super Ljava/lang/Object;
.source "MediaSeekHelper.java"


# static fields
.field private static a:Lcom/fiio/music/e/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/fiio/music/e/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fiio/music/e/a/b;-><init>(B)V

    sput-object v0, Lcom/fiio/music/e/a/c;->a:Lcom/fiio/music/e/a/b;

    return-void
.end method

.method static synthetic a()Lcom/fiio/music/e/a/b;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/fiio/music/e/a/c;->a:Lcom/fiio/music/e/a/b;

    return-object v0
.end method
