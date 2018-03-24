.class public Lcom/example/root/checkappmusic/DsfExtractor;
.super Ljava/lang/Object;
.source "DsfExtractor.java"


# instance fields
.field private final BlockSize:I

.field private Duration:I

.field private FIS:Ljava/io/RandomAccessFile;

.field private FileLength:J

.field private SampleCount:J

.field private final TAG:Ljava/lang/String;

.field private dsdsamplerate:I

.field private dsfhead:[B

.field private head_num:I

.field myFileType:Lcom/example/root/checkappmusic/a;

.field private offset:I

.field private readblock:J

.field private samplerate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    .prologue
    const/16 v0, 0x5c

    const-wide v10, 0x408f400000000000L    # 1000.0

    const/4 v2, 0x0

    const-wide/16 v8, 0x8

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->head_num:I

    .line 18
    iput v2, p0, Lcom/example/root/checkappmusic/DsfExtractor;->offset:I

    .line 40
    const-string v0, "DSFExtractor"

    iput-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->TAG:Ljava/lang/String;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->readblock:J

    .line 43
    const/16 v0, 0x1000

    iput v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->BlockSize:I

    .line 48
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/example/root/checkappmusic/a;->a:Lcom/example/root/checkappmusic/a;

    iput-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->myFileType:Lcom/example/root/checkappmusic/a;

    .line 50
    const/16 v0, 0x5c

    iput v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->head_num:I

    .line 56
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FIS:Ljava/io/RandomAccessFile;

    .line 57
    iget v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->head_num:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    .line 58
    iget-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FIS:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->head_num:I

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 59
    iget v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->head_num:I

    iput v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->offset:I

    .line 61
    iget-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->myFileType:Lcom/example/root/checkappmusic/a;

    sget-object v1, Lcom/example/root/checkappmusic/a;->a:Lcom/example/root/checkappmusic/a;

    if-ne v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    const/16 v1, 0x38

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/DsfExtractor;->getInt32([BI)I

    move-result v0

    iput v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsdsamplerate:I

    .line 63
    iget-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/DsfExtractor;->getInt64([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->SampleCount:J

    .line 64
    iget v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsdsamplerate:I

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->samplerate:I

    .line 65
    iget-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FIS:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FileLength:J

    .line 67
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lcom/example/root/checkappmusic/DsfExtractor;->SampleCount:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    mul-double/2addr v0, v10

    iget v2, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsdsamplerate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 68
    double-to-int v0, v0

    iput v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->Duration:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FIS:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FIS:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 181
    :goto_2
    return-void

    .line 52
    :cond_0
    :try_start_2
    sget-object v0, Lcom/example/root/checkappmusic/a;->b:Lcom/example/root/checkappmusic/a;

    iput-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->myFileType:Lcom/example/root/checkappmusic/a;

    .line 53
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->head_num:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    :try_start_4
    iget-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FIS:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FIS:Ljava/io/RandomAccessFile;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 178
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 74
    :cond_1
    const/4 v0, 0x1

    move v1, v2

    move v3, v0

    move v0, v2

    .line 76
    :goto_3
    if-nez v3, :cond_2

    .line 166
    :try_start_5
    iget-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FIS:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/example/root/checkappmusic/DsfExtractor;->head_num:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 168
    iget-object v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FIS:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FileLength:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 172
    :catchall_0
    move-exception v0

    .line 174
    :try_start_6
    iget-object v1, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FIS:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FIS:Ljava/io/RandomAccessFile;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 180
    :goto_4
    throw v0

    .line 78
    :cond_2
    :try_start_7
    iget v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->head_num:I

    add-int/2addr v4, v1

    if-le v0, v4, :cond_3

    .line 80
    iget-object v1, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FIS:Ljava/io/RandomAccessFile;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 81
    iget-object v1, p0, Lcom/example/root/checkappmusic/DsfExtractor;->FIS:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move v1, v0

    .line 85
    :cond_3
    iget-object v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    sub-int v5, v0, v1

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/DsfExtractor;->getInt32([BI)I

    move-result v4

    .line 86
    sparse-switch v4, :sswitch_data_0

    .line 156
    add-int/lit8 v0, v0, 0x4

    .line 159
    iget-object v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    sub-int v5, v0, v1

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/DsfExtractor;->getDataLength([BI)J

    move-result-wide v4

    .line 160
    int-to-long v6, v0

    add-long/2addr v4, v8

    add-long/2addr v4, v6

    long-to-int v0, v4

    goto :goto_3

    .line 89
    :sswitch_0
    add-int/lit8 v0, v0, 0x10

    .line 90
    goto :goto_3

    .line 92
    :sswitch_1
    add-int/lit8 v0, v0, 0x10

    .line 93
    goto :goto_3

    .line 95
    :sswitch_2
    add-int/lit8 v0, v0, 0x10

    .line 97
    :sswitch_3
    add-int/lit8 v0, v0, 0xc

    .line 98
    iget-object v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    sub-int v5, v0, v1

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/DsfExtractor;->getInt32Bigend([BI)I

    move-result v4

    iput v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsdsamplerate:I

    .line 99
    iget v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsdsamplerate:I

    div-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->samplerate:I

    .line 100
    add-int/lit8 v0, v0, 0x4

    .line 101
    goto :goto_3

    .line 103
    :sswitch_4
    add-int/lit8 v0, v0, 0x4

    .line 106
    iget-object v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    sub-int v5, v0, v1

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/DsfExtractor;->getDataLength([BI)J

    move-result-wide v4

    .line 107
    int-to-long v6, v0

    add-long/2addr v4, v8

    add-long/2addr v4, v6

    long-to-int v0, v4

    .line 109
    goto :goto_3

    .line 111
    :sswitch_5
    add-int/lit8 v0, v0, 0x4

    .line 114
    iget-object v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    sub-int v5, v0, v1

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/DsfExtractor;->getDataLength([BI)J

    move-result-wide v4

    .line 115
    int-to-long v6, v0

    add-long/2addr v4, v8

    add-long/2addr v4, v6

    long-to-int v0, v4

    .line 117
    goto/16 :goto_3

    .line 119
    :sswitch_6
    add-int/lit8 v0, v0, 0xe

    .line 120
    goto/16 :goto_3

    .line 122
    :sswitch_7
    add-int/lit8 v0, v0, 0x4

    .line 123
    iget-object v3, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    sub-int v4, v0, v1

    invoke-static {v3, v4}, Lcom/example/root/checkappmusic/DsfExtractor;->getInt64Bigend([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->SampleCount:J

    .line 125
    iget-wide v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->SampleCount:J

    long-to-double v4, v4

    .line 126
    iget v3, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsdsamplerate:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    mul-double/2addr v4, v6

    mul-double/2addr v4, v10

    .line 127
    double-to-int v3, v4

    iput v3, p0, Lcom/example/root/checkappmusic/DsfExtractor;->Duration:I

    .line 128
    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/example/root/checkappmusic/DsfExtractor;->head_num:I

    move v3, v2

    .line 130
    goto/16 :goto_3

    .line 132
    :sswitch_8
    add-int/lit8 v0, v0, 0x4

    .line 135
    iget-object v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    sub-int v5, v0, v1

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/DsfExtractor;->getDataLength([BI)J

    move-result-wide v4

    .line 136
    int-to-long v6, v0

    add-long/2addr v4, v8

    add-long/2addr v4, v6

    long-to-int v0, v4

    .line 138
    goto/16 :goto_3

    .line 140
    :sswitch_9
    add-int/lit8 v0, v0, 0x4

    .line 143
    iget-object v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    sub-int v5, v0, v1

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/DsfExtractor;->getDataLength([BI)J

    move-result-wide v4

    .line 144
    int-to-long v6, v0

    add-long/2addr v4, v8

    add-long/2addr v4, v6

    long-to-int v0, v4

    .line 146
    goto/16 :goto_3

    .line 148
    :sswitch_a
    add-int/lit8 v0, v0, 0x4

    .line 151
    iget-object v4, p0, Lcom/example/root/checkappmusic/DsfExtractor;->dsfhead:[B

    sub-int v5, v0, v1

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/DsfExtractor;->getDataLength([BI)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v4

    .line 152
    int-to-long v6, v0

    add-long/2addr v4, v8

    add-long/2addr v4, v6

    long-to-int v0, v4

    .line 154
    goto/16 :goto_3

    .line 178
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x20205346 -> :sswitch_3
        0x20334449 -> :sswitch_9
        0x20445344 -> :sswitch_7
        0x384d5246 -> :sswitch_0
        0x4c4e4843 -> :sswitch_4
        0x4f43534c -> :sswitch_6
        0x504f5250 -> :sswitch_2
        0x52455646 -> :sswitch_1
        0x52504d43 -> :sswitch_5
        0x53534241 -> :sswitch_8
        0x65756300 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getDataLength([BI)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    .line 237
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x38

    .line 238
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x30

    .line 237
    or-int/2addr v0, v1

    .line 239
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x28

    .line 237
    or-int/2addr v0, v1

    .line 240
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x20

    .line 237
    or-int/2addr v0, v1

    .line 241
    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 237
    or-int/2addr v0, v1

    .line 242
    add-int/lit8 v1, p1, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 237
    or-int/2addr v0, v1

    .line 243
    add-int/lit8 v1, p1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 237
    or-int/2addr v0, v1

    .line 243
    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    .line 237
    or-int/2addr v0, v1

    int-to-long v0, v0

    .line 244
    and-long v2, v0, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 246
    add-long/2addr v0, v6

    .line 248
    :cond_0
    return-wide v0
.end method

.method public static getInt32([BI)I
    .locals 2

    .prologue
    .line 204
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 205
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 204
    or-int/2addr v0, v1

    .line 206
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 204
    or-int/2addr v0, v1

    .line 206
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    .line 204
    or-int/2addr v0, v1

    return v0
.end method

.method public static getInt32Bigend([BI)I
    .locals 2

    .prologue
    .line 210
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 211
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 210
    or-int/2addr v0, v1

    .line 212
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 210
    or-int/2addr v0, v1

    .line 212
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    .line 210
    or-int/2addr v0, v1

    return v0
.end method

.method public static getInt64([BI)J
    .locals 2

    .prologue
    .line 216
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x38

    .line 217
    add-int/lit8 v1, p1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x30

    .line 216
    or-int/2addr v0, v1

    .line 218
    add-int/lit8 v1, p1, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x28

    .line 216
    or-int/2addr v0, v1

    .line 219
    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x20

    .line 216
    or-int/2addr v0, v1

    .line 220
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 216
    or-int/2addr v0, v1

    .line 221
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 216
    or-int/2addr v0, v1

    .line 222
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 216
    or-int/2addr v0, v1

    .line 222
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    .line 216
    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getInt64Bigend([BI)J
    .locals 2

    .prologue
    .line 227
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x38

    .line 228
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x30

    .line 227
    or-int/2addr v0, v1

    .line 229
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x28

    .line 227
    or-int/2addr v0, v1

    .line 230
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x20

    .line 227
    or-int/2addr v0, v1

    .line 231
    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 227
    or-int/2addr v0, v1

    .line 232
    add-int/lit8 v1, p1, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 227
    or-int/2addr v0, v1

    .line 233
    add-int/lit8 v1, p1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 227
    or-int/2addr v0, v1

    .line 233
    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    .line 227
    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->Duration:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->offset:I

    return v0
.end method

.method public getSampleCount()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->SampleCount:J

    return-wide v0
.end method

.method public getSamplerate()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/example/root/checkappmusic/DsfExtractor;->samplerate:I

    return v0
.end method
