.class public Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4MeanBox;
.super Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;
.source "Mp4MeanBox.java"


# static fields
.field public static final FLAGS_LENGTH:I = 0x3

.field public static final IDENTIFIER:Ljava/lang/String; = "mean"

.field public static final PRE_DATA_LENGTH:I = 0x4

.field public static final VERSION_LENGTH:I = 0x1


# instance fields
.field private issuer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4MeanBox;->header:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 32
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to process data box because identifier is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4MeanBox;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 41
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4MeanBox;->dataBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4MeanBox;->issuer:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getIssuer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4MeanBox;->issuer:Ljava/lang/String;

    return-object v0
.end method
