.class public Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;
.super Ljava/lang/Object;
.source "FlacTag.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/TagTextField;


# instance fields
.field private content:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field final synthetic this$0:Lorg/FiioGetMusicInfo/tag/flac/FlacTag;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/flac/FlacTag;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;->this$0:Lorg/FiioGetMusicInfo/tag/flac/FlacTag;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-object p2, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;->id:Ljava/lang/String;

    .line 590
    iput-object p3, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;->content:Ljava/lang/String;

    .line 591
    return-void
.end method


# virtual methods
.method public copyContent(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 1

    .prologue
    .line 596
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/TagTextField;

    if-eqz v0, :cond_0

    .line 598
    check-cast p1, Lorg/FiioGetMusicInfo/tag/TagTextField;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;->content:Ljava/lang/String;

    .line 600
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 611
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContent()[B
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBinary(Z)V
    .locals 0

    .prologue
    .line 636
    return-void
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 647
    const-string v0, ""

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;->content:Ljava/lang/String;

    .line 654
    return-void
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 0

    .prologue
    .line 660
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
