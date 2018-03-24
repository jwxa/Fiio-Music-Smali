.class final Lorg/FiioGetMusicInfo/tag/id3/c;
.super Ljava/lang/Object;
.source "AbstractID3v2Tag.java"


# instance fields
.field final synthetic a:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2883
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/c;->a:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    .line 2882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2884
    iput-object p2, p0, Lorg/FiioGetMusicInfo/tag/id3/c;->b:Ljava/lang/String;

    .line 2885
    iput-object p3, p0, Lorg/FiioGetMusicInfo/tag/id3/c;->c:Ljava/lang/String;

    .line 2886
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2890
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2895
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/c;->c:Ljava/lang/String;

    return-object v0
.end method
