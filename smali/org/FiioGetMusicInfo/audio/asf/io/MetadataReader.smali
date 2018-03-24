.class public Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;
.super Ljava/lang/Object;
.source "MetadataReader.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 22
    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->getContainerGUID()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v3

    aput-object v3, v0, v2

    .line 23
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->METADATA_OBJECT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->getContainerGUID()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 24
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->METADATA_LIBRARY_OBJECT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->getContainerGUID()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v2

    aput-object v2, v0, v1

    .line 21
    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 24
    return-void

    :cond_0
    move v0, v2

    .line 16
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readBoolean(Ljava/io/InputStream;I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    new-array v4, p2, [B

    .line 144
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move v3, v2

    move v0, v2

    .line 146
    :goto_0
    if-lt v3, p2, :cond_0

    .line 154
    return v0

    .line 147
    :cond_0
    add-int/lit8 v5, p2, -0x1

    if-ne v3, v5, :cond_2

    .line 148
    aget-byte v0, v4, v3

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 149
    :goto_1
    sget-boolean v5, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    aget-byte v5, v4, v3

    if-eqz v5, :cond_3

    aget-byte v5, v4, v3

    if-eq v5, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v2

    .line 148
    goto :goto_1

    .line 151
    :cond_2
    sget-boolean v5, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    aget-byte v5, v4, v3

    if-eqz v5, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public canFail()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getApplyingIds()[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
    .locals 19

    .prologue
    .line 45
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v4

    .line 47
    new-instance v14, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-direct {v14, v0, v1, v2, v4}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 52
    invoke-virtual {v14}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v4

    sget-object v5, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v10, v4

    .line 53
    :goto_0
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v15

    .line 54
    const/4 v4, 0x0

    move v11, v4

    :goto_1
    if-lt v11, v15, :cond_1

    .line 125
    return-object v14

    .line 52
    :cond_0
    const/4 v4, 0x0

    move v10, v4

    goto :goto_0

    .line 55
    :cond_1
    const/4 v9, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    if-nez v10, :cond_6

    .line 61
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v9

    .line 62
    sget-boolean v4, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    if-ltz v9, :cond_2

    .line 63
    const/16 v4, 0x7f

    if-lt v9, v4, :cond_3

    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 64
    :cond_3
    sget-boolean v4, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    invoke-virtual {v14}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v4

    sget-object v5, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->METADATA_LIBRARY_OBJECT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    if-eq v4, v5, :cond_4

    .line 65
    if-eqz v9, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 66
    :cond_4
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v8

    .line 67
    sget-boolean v4, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    if-ltz v8, :cond_5

    .line 68
    const/16 v4, 0x7f

    if-le v8, v4, :cond_6

    :cond_5
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 70
    :cond_6
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v5

    .line 71
    const/4 v4, 0x0

    .line 72
    if-eqz v10, :cond_7

    .line 73
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v4

    .line 75
    :cond_7
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v7

    .line 76
    sget-boolean v6, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    if-nez v6, :cond_9

    if-ltz v7, :cond_8

    const/4 v6, 0x6

    if-le v7, v6, :cond_9

    :cond_8
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 77
    :cond_9
    if-eqz v10, :cond_a

    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v6

    int-to-long v12, v6

    .line 79
    :goto_2
    sget-boolean v6, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    if-nez v6, :cond_b

    const-wide/16 v16, 0x0

    cmp-long v6, v12, v16

    if-gez v6, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 78
    :cond_a
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v12

    goto :goto_2

    .line 80
    :cond_b
    sget-boolean v6, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    if-nez v6, :cond_c

    invoke-virtual {v14}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v6

    sget-object v16, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->METADATA_LIBRARY_OBJECT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-object/from16 v0, v16

    if-eq v6, v0, :cond_c

    .line 81
    sget-wide v16, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->DWORD_MAXVALUE:J

    cmp-long v6, v12, v16

    if-lez v6, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 82
    :cond_c
    if-nez v10, :cond_14

    .line 83
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    .line 85
    :goto_3
    new-instance v4, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 86
    invoke-virtual {v14}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v5

    .line 85
    invoke-direct/range {v4 .. v9}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    .line 88
    packed-switch v7, :pswitch_data_0

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid datatype: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 123
    :goto_4
    invoke-virtual {v14, v4}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 54
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto/16 :goto_1

    .line 91
    :pswitch_0
    long-to-int v5, v12

    .line 90
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    goto :goto_4

    .line 94
    :pswitch_1
    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    goto :goto_4

    .line 97
    :pswitch_2
    sget-boolean v5, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    if-nez v5, :cond_f

    if-eqz v10, :cond_d

    const-wide/16 v6, 0x4

    cmp-long v5, v12, v6

    if-eqz v5, :cond_f

    :cond_d
    if-nez v10, :cond_e

    const-wide/16 v6, 0x2

    cmp-long v5, v12, v6

    if-eqz v5, :cond_f

    :cond_e
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 98
    :cond_f
    long-to-int v5, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->readBoolean(Ljava/io/InputStream;I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setBooleanValue(Z)V

    goto :goto_4

    .line 101
    :pswitch_3
    sget-boolean v5, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    if-nez v5, :cond_10

    const-wide/16 v6, 0x4

    cmp-long v5, v12, v6

    if-eqz v5, :cond_10

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 102
    :cond_10
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    goto :goto_4

    .line 105
    :pswitch_4
    sget-boolean v5, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    if-nez v5, :cond_11

    const-wide/16 v6, 0x2

    cmp-long v5, v12, v6

    if-eqz v5, :cond_11

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 106
    :cond_11
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setWordValue(I)V

    goto :goto_4

    .line 109
    :pswitch_5
    sget-boolean v5, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    if-nez v5, :cond_12

    const-wide/16 v6, 0x8

    cmp-long v5, v12, v6

    if-eqz v5, :cond_12

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 110
    :cond_12
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setQWordValue(J)V

    goto/16 :goto_4

    .line 113
    :pswitch_6
    sget-boolean v5, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;->$assertionsDisabled:Z

    if-nez v5, :cond_13

    const-wide/16 v6, 0x10

    cmp-long v5, v12, v6

    if-eqz v5, :cond_13

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 114
    :cond_13
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setGUIDValue(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)V

    goto/16 :goto_4

    :cond_14
    move-object v6, v4

    goto/16 :goto_3

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
