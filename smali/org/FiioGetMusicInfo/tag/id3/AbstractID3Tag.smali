.class public abstract Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;
.source "AbstractID3Tag.java"


# static fields
.field protected static final TAG_RELEASE:Ljava/lang/String; = "ID3v"

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private loggingFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "org.FiioGetMusicInfo.tag.id3"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;->loggingFilename:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;->loggingFilename:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID3v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;->getRelease()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;->getMajorVersion()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;->getRevision()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLoggingFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;->loggingFilename:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMajorVersion()B
.end method

.method public abstract getRelease()B
.end method

.method public abstract getRevision()B
.end method

.method protected setLoggingFilename(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;->loggingFilename:Ljava/lang/String;

    .line 107
    return-void
.end method
