.class public final Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;
.super Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;
.source "AsfHeader.java"


# static fields
.field public static final ASF_CHARSET:Ljava/nio/charset/Charset;

.field public static final ZERO_TERM:[B


# instance fields
.field private final chunkCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 50
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_STREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;J)V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_HEADER:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 71
    iput-wide p4, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->chunkCount:J

    .line 72
    return-void
.end method


# virtual methods
.method public final findContentDescription()Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getContentDescription()Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getExtendedHeader()Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getExtendedHeader()Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;->getContentDescription()Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;

    move-result-object v0

    .line 86
    :cond_0
    return-object v0
.end method

.method public final findExtendedContentDescription()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getExtendedContentDescription()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getExtendedHeader()Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getExtendedHeader()Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;->getExtendedContentDescription()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    move-result-object v0

    .line 102
    :cond_0
    return-object v0
.end method

.method public final findMetadataContainer(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;)Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;
    .locals 3

    .prologue
    .line 114
    .line 115
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->getContainerGUID()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v0

    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    .line 114
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    .line 116
    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getExtendedHeader()Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->getContainerGUID()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v1

    const-class v2, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    .line 117
    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    .line 120
    :cond_0
    return-object v0
.end method

.method public final getAudioStreamChunk()Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;
    .locals 5

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 131
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_STREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->assertChunkList(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Ljava/util/List;

    move-result-object v2

    .line 132
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    return-object v0

    .line 133
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;

    if-eqz v3, :cond_2

    .line 134
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;

    .line 132
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final getChunkCount()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->chunkCount:J

    return-wide v0
.end method

.method public final getContentDescription()Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 156
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;

    .line 155
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;

    return-object v0
.end method

.method public final getEncodingChunk()Lorg/FiioGetMusicInfo/audio/asf/data/EncodingChunk;
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_ENCODING:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/data/EncodingChunk;

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/EncodingChunk;

    return-object v0
.end method

.method public final getEncryptionChunk()Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 171
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;

    .line 170
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;

    return-object v0
.end method

.method public final getExtendedContentDescription()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;
    .locals 2

    .prologue
    .line 178
    .line 179
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    .line 178
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    return-object v0
.end method

.method public final getExtendedHeader()Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 187
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;

    .line 186
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;

    return-object v0
.end method

.method public final getFileHeader()Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_FILE:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;

    return-object v0
.end method

.method public final getStreamBitratePropertiesChunk()Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;
    .locals 2

    .prologue
    .line 201
    .line 202
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 203
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;

    .line 201
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;

    return-object v0
.end method

.method public final prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  | : Contains: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getChunkCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" chunks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-super {p0, p1, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->prettyPrint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
