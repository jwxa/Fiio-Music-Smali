.class public Lorg/FiioGetMusicInfo/audio/ape/APEContext;
.super Ljava/lang/Object;
.source "APEContext.java"


# instance fields
.field public ByteIndex:I

.field public audiodatalength:I

.field public audiodatalength_high:I

.field public bittable:I

.field public blocksperframe:I

.field public bps:S

.field public channels:S

.field public compressiontype:S

.field public currentframe:I

.field public descriptorlength:I

.field public fileversion:S

.field public finalframeblocks:I

.field public firstframe:I

.field public formatflags:S

.field public frames:[Lorg/FiioGetMusicInfo/audio/ape/APEFrame;

.field public headerlength:I

.field public junklength:I

.field public magic:[B

.field public md5:[B

.field public padding1:S

.field public samplerate:I

.field public seektable:[B

.field public seektablelength:I

.field public totalframes:I

.field public totalsamples:I

.field public wavheaderlength:I

.field public wavtaillength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->magic:[B

    .line 68
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->md5:[B

    .line 70
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->junklength:I

    .line 71
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->firstframe:I

    .line 72
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->totalsamples:I

    .line 73
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->currentframe:I

    .line 77
    iput-short v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->fileversion:S

    .line 78
    iput-short v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->padding1:S

    .line 79
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->descriptorlength:I

    .line 80
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->headerlength:I

    .line 81
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->seektablelength:I

    .line 82
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->wavheaderlength:I

    .line 83
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->audiodatalength:I

    .line 84
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->audiodatalength_high:I

    .line 85
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->wavtaillength:I

    .line 91
    iput-short v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->compressiontype:S

    .line 92
    iput-short v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->formatflags:S

    .line 93
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->blocksperframe:I

    .line 94
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->finalframeblocks:I

    .line 95
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->totalframes:I

    .line 96
    iput-short v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->bps:S

    .line 97
    iput-short v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->channels:S

    .line 98
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->samplerate:I

    .line 103
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->bittable:I

    .line 104
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    .line 109
    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->magic:[B

    .line 110
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->md5:[B

    .line 112
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->junklength:I

    .line 113
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->firstframe:I

    .line 114
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->totalsamples:I

    .line 115
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->currentframe:I

    .line 120
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->magic:[B

    iget v2, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    .line 121
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    .line 122
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->magic:[B

    const/4 v2, 0x1

    iget v3, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 123
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    .line 124
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->magic:[B

    const/4 v2, 0x2

    iget v3, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 125
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    .line 126
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->magic:[B

    const/4 v2, 0x3

    iget v3, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 127
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    .line 130
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToShort([B)S

    move-result v1

    iput-short v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->fileversion:S

    .line 131
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToShort([B)S

    move-result v1

    iput-short v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->padding1:S

    .line 132
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->descriptorlength:I

    .line 133
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->headerlength:I

    .line 134
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->seektablelength:I

    .line 135
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->wavheaderlength:I

    .line 136
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->audiodatalength:I

    .line 137
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->audiodatalength_high:I

    .line 138
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->wavtaillength:I

    .line 140
    :goto_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->md5:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToShort([B)S

    move-result v0

    iput-short v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->compressiontype:S

    .line 149
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToShort([B)S

    move-result v0

    iput-short v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->formatflags:S

    .line 150
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->blocksperframe:I

    .line 151
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->finalframeblocks:I

    .line 152
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->totalframes:I

    .line 153
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToShort([B)S

    move-result v0

    iput-short v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->bps:S

    .line 154
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToShort([B)S

    move-result v0

    iput-short v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->channels:S

    .line 155
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->samplerate:I

    .line 160
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->byteArrayToInt([B)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->bittable:I

    .line 166
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->md5:[B

    iget v2, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    .line 143
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public byteArrayToInt([B)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 48
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 47
    or-int/2addr v0, v1

    .line 49
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 47
    or-int/2addr v0, v1

    .line 50
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 47
    or-int/2addr v0, v1

    .line 51
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    .line 52
    return v0
.end method

.method public byteArrayToShort([B)S
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 61
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->ByteIndex:I

    .line 62
    return v0
.end method
