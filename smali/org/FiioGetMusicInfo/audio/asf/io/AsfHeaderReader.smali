.class public Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;
.super Lorg/FiioGetMusicInfo/audio/asf/io/a;
.source "AsfHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/FiioGetMusicInfo/audio/asf/io/a",
        "<",
        "Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field private static final FULL_READER:Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

.field private static final INFO_READER:Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

.field private static final TAG_READER:Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 44
    new-array v0, v4, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_HEADER:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v1, v0, v5

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/io/FileHeaderReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/io/StreamChunkReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

    invoke-direct {v1, v0, v4}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    sput-object v1, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->INFO_READER:Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

    .line 66
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/io/ContentDescriptionReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/io/ContentBrandingReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/io/LanguageListReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;

    invoke-direct {v1, v0, v4}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;-><init>(Ljava/util/List;Z)V

    .line 78
    new-instance v2, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;

    invoke-direct {v2, v0, v4}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;-><init>(Ljava/util/List;Z)V

    .line 80
    new-instance v3, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

    invoke-direct {v3, v0, v4}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    .line 81
    sput-object v3, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->TAG_READER:Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

    invoke-virtual {v3, v1}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->setExtendedHeaderReader(Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;)V

    .line 82
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/io/FileHeaderReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/io/StreamChunkReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/io/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/io/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/io/StreamBitratePropertiesReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

    invoke-direct {v1, v0, v5}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    .line 88
    sput-object v1, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->FULL_READER:Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->setExtendedHeaderReader(Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/asf/io/a;-><init>(Ljava/util/List;Z)V

    .line 190
    return-void
.end method

.method private static createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/io/FullRequestInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    .line 101
    new-instance v2, Lorg/FiioGetMusicInfo/audio/asf/io/RandomAccessFileInputstream;

    invoke-direct {v2, p0}, Lorg/FiioGetMusicInfo/audio/asf/io/RandomAccessFileInputstream;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/io/FullRequestInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static readHeader(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;
    .locals 6

    .prologue
    .line 116
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 117
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->FULL_READER:Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v2

    .line 118
    const-wide/16 v4, 0x0

    .line 117
    invoke-virtual {v0, v2, v1, v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;

    .line 119
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 120
    return-object v0
.end method

.method public static readHeader(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;
    .locals 6

    .prologue
    .line 136
    invoke-static {p0}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;

    move-result-object v0

    .line 137
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->FULL_READER:Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;

    return-object v0
.end method

.method public static readInfoHeader(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;
    .locals 6

    .prologue
    .line 154
    invoke-static {p0}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;

    move-result-object v0

    .line 155
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->INFO_READER:Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;

    return-object v0
.end method

.method public static readTagHeader(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;
    .locals 6

    .prologue
    .line 172
    invoke-static {p0}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;

    move-result-object v0

    .line 173
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->TAG_READER:Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;

    return-object v0
.end method


# virtual methods
.method public canFail()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method protected createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;
    .locals 7

    .prologue
    .line 206
    invoke-static {p4}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v4

    .line 212
    invoke-virtual {p4}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 213
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ASF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    invoke-virtual {p4}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 216
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ASF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;-><init>(JLjava/math/BigInteger;J)V

    return-object v0
.end method

.method protected bridge synthetic createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;

    move-result-object v0

    return-object v0
.end method

.method public getApplyingIds()[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public bridge synthetic read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/FiioGetMusicInfo/audio/asf/io/a;->read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;

    move-result-object v0

    return-object v0
.end method

.method public setExtendedHeaderReader(Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;)V
    .locals 5

    .prologue
    .line 239
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;->getApplyingIds()[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 242
    return-void

    .line 239
    :cond_0
    aget-object v3, v1, v0

    .line 240
    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->readerMap:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
