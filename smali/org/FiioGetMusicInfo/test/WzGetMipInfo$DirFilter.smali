.class public final Lorg/FiioGetMusicInfo/test/WzGetMipInfo$DirFilter;
.super Ljava/lang/Object;
.source "WzGetMipInfo.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic this$0:Lorg/FiioGetMusicInfo/test/WzGetMipInfo;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/test/WzGetMipInfo;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lorg/FiioGetMusicInfo/test/WzGetMipInfo$DirFilter;->this$0:Lorg/FiioGetMusicInfo/test/WzGetMipInfo;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
