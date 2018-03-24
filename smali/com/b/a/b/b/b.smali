.class public final Lcom/b/a/b/b/b;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput v0, p0, Lcom/b/a/b/b/b;->a:I

    .line 233
    iput-boolean v0, p0, Lcom/b/a/b/b/b;->b:Z

    .line 234
    return-void
.end method

.method protected constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput p1, p0, Lcom/b/a/b/b/b;->a:I

    .line 238
    iput-boolean p2, p0, Lcom/b/a/b/b/b;->b:Z

    .line 239
    return-void
.end method
