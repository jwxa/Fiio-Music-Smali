.class public final Lcom/c/a/w;
.super Ljava/lang/Object;
.source "Downloader.java"


# instance fields
.field final a:Ljava/io/InputStream;

.field final b:Landroid/graphics/Bitmap;

.field final c:Z

.field final d:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ZJ)V
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/c/a/w;->a:Ljava/io/InputStream;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/w;->b:Landroid/graphics/Bitmap;

    .line 121
    iput-boolean p2, p0, Lcom/c/a/w;->c:Z

    .line 122
    iput-wide p3, p0, Lcom/c/a/w;->d:J

    .line 123
    return-void
.end method
