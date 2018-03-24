.class public Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderModifier;
.super Ljava/lang/Object;
.source "AsfExtHeaderModifier.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/asf/io/ChunkModifier;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final modifierList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/io/ChunkModifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderModifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderModifier;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/io/ChunkModifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderModifier;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderModifier;->modifierList:Ljava/util/List;

    .line 37
    return-void
.end method

.method private copyChunk(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 59
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 60
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 61
    invoke-static {v0, v1, p3}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 62
    const-wide/16 v2, 0x18

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 63
    return-void
.end method


# virtual methods
.method public isApplicable(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Z
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public modify(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/FiioGetMusicInfo/audio/asf/io/f;
    .locals 21

    .prologue
    .line 77
    sget-boolean v4, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderModifier;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    sget-object v4, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 79
    :cond_0
    const-wide/16 v4, 0x0

    .line 80
    new-instance v10, Ljava/util/ArrayList;

    .line 81
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderModifier;->modifierList:Ljava/util/List;

    .line 80
    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 83
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v12

    .line 86
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v13

    .line 87
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v14

    .line 88
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v16

    .line 90
    sget-boolean v6, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderModifier;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v16, v6

    if-eqz v6, :cond_1

    const-wide/16 v6, 0x18

    cmp-long v6, v16, v6

    if-gez v6, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 91
    :cond_1
    sget-boolean v6, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderModifier;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    const-wide/16 v6, 0x2e

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v16

    if-eqz v6, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 96
    :cond_2
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    new-instance v18, Lorg/FiioGetMusicInfo/audio/asf/io/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/io/c;-><init>(Ljava/io/InputStream;)V

    .line 103
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lorg/FiioGetMusicInfo/audio/asf/io/c;->a()J

    move-result-wide v6

    cmp-long v6, v6, v16

    if-ltz v6, :cond_3

    .line 123
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v6, v4

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 130
    sget-object v4, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 131
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 132
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    .line 131
    move-object/from16 v0, p3

    invoke-static {v4, v5, v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 133
    invoke-virtual {v13}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 134
    move-object/from16 v0, p3

    invoke-static {v14, v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 135
    add-long v4, v16, v6

    move-object/from16 v0, p3

    invoke-static {v4, v5, v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 136
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 137
    new-instance v4, Lorg/FiioGetMusicInfo/audio/asf/io/f;

    invoke-direct {v4, v6, v7, v11}, Lorg/FiioGetMusicInfo/audio/asf/io/f;-><init>(JLjava/util/Set;)V

    return-object v4

    .line 105
    :cond_3
    invoke-static/range {v18 .. v18}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v19

    .line 106
    const/4 v7, 0x0

    .line 107
    const/4 v6, 0x0

    move v8, v7

    move/from16 v20, v6

    move-wide v6, v4

    move/from16 v5, v20

    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_4

    if-eqz v8, :cond_6

    .line 117
    :cond_4
    if-nez v8, :cond_5

    .line 118
    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderModifier;->copyChunk(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :cond_5
    move-wide v4, v6

    goto :goto_0

    .line 108
    :cond_6
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkModifier;

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkModifier;->isApplicable(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 109
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkModifier;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1, v15}, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkModifier;->modify(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/FiioGetMusicInfo/audio/asf/io/f;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/asf/io/f;->a()J

    move-result-wide v8

    add-long/2addr v8, v6

    .line 112
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/asf/io/f;->c()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-interface {v10, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 114
    const/4 v6, 0x1

    .line 107
    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move/from16 v20, v6

    move-wide v6, v8

    move/from16 v8, v20

    goto :goto_2

    .line 123
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkModifier;

    .line 126
    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v5, v9, v15}, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkModifier;->modify(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/FiioGetMusicInfo/audio/asf/io/f;

    move-result-object v9

    .line 127
    invoke-virtual {v9}, Lorg/FiioGetMusicInfo/audio/asf/io/f;->a()J

    move-result-wide v4

    add-long/2addr v4, v6

    .line 128
    invoke-virtual {v9}, Lorg/FiioGetMusicInfo/audio/asf/io/f;->c()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-wide v6, v4

    goto/16 :goto_1

    :cond_8
    move/from16 v20, v8

    move-wide v8, v6

    move/from16 v6, v20

    goto :goto_3
.end method
