.class final Lcom/fiio/music/util/ar;
.super Ljava/lang/Object;
.source "GaplessPlaybackManager.java"


# static fields
.field private static a:Lcom/fiio/music/util/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/fiio/music/util/ap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fiio/music/util/ap;-><init>(B)V

    sput-object v0, Lcom/fiio/music/util/ar;->a:Lcom/fiio/music/util/ap;

    return-void
.end method

.method static synthetic a()Lcom/fiio/music/util/ap;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/fiio/music/util/ar;->a:Lcom/fiio/music/util/ap;

    return-object v0
.end method
