.class public final Lcom/fiio/music/b/a;
.super Ljava/lang/Object;
.source "AbnormalTrackDao.java"


# instance fields
.field private a:Lcom/fiio/music/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/fiio/music/b/d;

    invoke-direct {v0, p1}, Lcom/fiio/music/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/b/a;->a:Lcom/fiio/music/b/d;

    .line 23
    return-void
.end method
