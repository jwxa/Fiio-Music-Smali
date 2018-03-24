.class public final Lcom/fiio/music/util/bk;
.super Ljava/lang/Object;
.source "MusicManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/bh;


# direct methods
.method public constructor <init>(Lcom/fiio/music/util/bh;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/fiio/music/util/bk;->a:Lcom/fiio/music/util/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
