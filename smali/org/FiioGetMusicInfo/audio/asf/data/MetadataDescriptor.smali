.class public Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;
.super Ljava/lang/Object;
.source "MetadataDescriptor.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DWORD_MAXVALUE:J

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final MAX_LANG_INDEX:I = 0x7f

.field public static final MAX_STREAM_NUMBER:I = 0x7f

.field public static final QWORD_MAXVALUE:Ljava/math/BigInteger;

.field public static final TYPE_BINARY:I = 0x1

.field public static final TYPE_BOOLEAN:I = 0x2

.field public static final TYPE_DWORD:I = 0x3

.field public static final TYPE_GUID:I = 0x6

.field public static final TYPE_QWORD:I = 0x4

.field public static final TYPE_STRING:I = 0x0

.field public static final TYPE_WORD:I = 0x5

.field public static final WORD_MAXVALUE:I = 0xffff


# instance fields
.field private final containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

.field private content:[B

.field private descriptorType:I

.field private languageIndex:I

.field private final name:Ljava/lang/String;

.field private streamNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 49
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->$assertionsDisabled:Z

    .line 55
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFF"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 55
    sput-wide v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->DWORD_MAXVALUE:J

    .line 62
    const-string v0, "org.FiioGetMusicInfo.audio.asf.data"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 61
    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->LOGGER:Ljava/util/logging/Logger;

    .line 77
    new-instance v0, Ljava/math/BigInteger;

    .line 78
    const-string v1, "FFFFFFFFFFFFFFFF"

    .line 77
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->QWORD_MAXVALUE:Ljava/math/BigInteger;

    .line 118
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 232
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->METADATA_LIBRARY_OBJECT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    .line 233
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    .line 179
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;III)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 154
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 164
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 201
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_0
    new-array v2, v1, [B

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    .line 204
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    .line 205
    iput-object p2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    .line 206
    iput p3, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 207
    iput p4, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 208
    iput p5, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 209
    return-void
.end method


# virtual methods
.method public asNumber()Ljava/math/BigInteger;
    .locals 5

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    packed-switch v1, :pswitch_data_0

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 258
    :pswitch_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v1, v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 259
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 260
    const-string v1, "Binary data would exceed QWORD"

    .line 259
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :pswitch_1
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 265
    const-string v1, "GUID cannot be converted to a number."

    .line 264
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :pswitch_2
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 272
    :cond_0
    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    new-array v1, v0, [B

    .line 274
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_2

    .line 277
    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 279
    :cond_1
    return-object v0

    .line 275
    :cond_2
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v3, v3

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->compareTo(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)I
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createCopy()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;
    .locals 6

    .prologue
    .line 307
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 308
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    iget v3, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 309
    iget v4, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->streamNumber:I

    iget v5, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 307
    invoke-direct/range {v0 .. v5}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    .line 310
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object v1

    iput-object v1, v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 311
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 321
    .line 322
    instance-of v2, p1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    if-eqz v2, :cond_3

    .line 323
    if-ne p1, p0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    check-cast p1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 327
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 328
    iget v2, p1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v3, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    if-ne v2, v3, :cond_2

    .line 329
    iget v2, p1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->languageIndex:I

    iget v3, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->languageIndex:I

    if-ne v2, v3, :cond_2

    .line 330
    iget v2, p1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->streamNumber:I

    iget v3, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->streamNumber:I

    if-ne v2, v3, :cond_2

    .line 331
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    iget-object v3, p1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 327
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getBoolean()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 345
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getBytes()[B
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 357
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 359
    :try_start_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    invoke-virtual {p0, v1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->writeInto(Ljava/io/OutputStream;Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    return-object v0
.end method

.method public getCurrentAsfSize(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;)I
    .locals 3

    .prologue
    .line 389
    const/16 v0, 0x8

    .line 391
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    if-eq p1, v1, :cond_0

    .line 394
    const/16 v0, 0xe

    .line 396
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 398
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 399
    add-int/lit8 v0, v0, 0x2

    .line 400
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    if-ne p1, v1, :cond_1

    .line 403
    add-int/lit8 v0, v0, 0x2

    .line 412
    :cond_1
    :goto_0
    return v0

    .line 407
    :cond_2
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 408
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 409
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getGuid()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 3

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v1, v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 423
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([B)V

    .line 425
    :cond_0
    return-object v0
.end method

.method public getLanguageIndex()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->languageIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()J
    .locals 8

    .prologue
    .line 460
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 474
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The current type doesn\'t allow an interpretation as a number. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 475
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :pswitch_0
    const/4 v0, 0x1

    .line 478
    :goto_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 480
    const-string v1, "The stored data cannot represent the type of current object."

    .line 479
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :pswitch_1
    const/4 v0, 0x4

    .line 466
    goto :goto_0

    .line 468
    :pswitch_2
    const/16 v0, 0x8

    .line 469
    goto :goto_0

    .line 471
    :pswitch_3
    const/4 v0, 0x2

    .line 472
    goto :goto_0

    .line 482
    :cond_0
    const-wide/16 v2, 0x0

    .line 483
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_1

    .line 486
    return-wide v2

    .line 484
    :cond_1
    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    aget-byte v4, v4, v1

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v6, v1, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 460
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRawData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 496
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 497
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    return-object v0
.end method

.method public getRawDataSize()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    return v0
.end method

.method public getStreamNumber()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->streamNumber:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 526
    const/4 v1, 0x0

    .line 527
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 552
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current type is not known."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :pswitch_0
    const-string v0, "binary data"

    .line 554
    :goto_0
    return-object v0

    .line 532
    :pswitch_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 535
    :pswitch_2
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getGuid()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid GUID"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getGuid()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 540
    :pswitch_3
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 544
    :pswitch_4
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    const-string v3, "UTF-16LE"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 548
    :catch_1
    move-exception v0

    const-string v0, "long"

    const-string v2, "wma\u8bfb\u53d6\u56fe\u7247\u4fe1\u606f\u5185\u5b58\u6ea2\u51fa---MetadataDescriptor.java"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 550
    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBinaryValue([B)V
    .locals 6

    .prologue
    .line 605
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    .line 606
    iget v3, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v4, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->streamNumber:I

    iget v5, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->languageIndex:I

    move-object v2, p1

    .line 605
    invoke-virtual/range {v0 .. v5}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    .line 607
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 608
    const/4 v0, 0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 609
    return-void
.end method

.method public setBooleanValue(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 620
    new-array v2, v0, [B

    if-eqz p1, :cond_0

    :goto_0
    aput-byte v0, v2, v1

    iput-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 621
    const/4 v0, 0x2

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 622
    return-void

    :cond_0
    move v0, v1

    .line 620
    goto :goto_0
.end method

.method public setDWordValue(J)V
    .locals 5

    .prologue
    .line 633
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    sget-wide v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->DWORD_MAXVALUE:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 634
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value out of range (0-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    sget-wide v2, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->DWORD_MAXVALUE:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_1
    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->getBytes(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 638
    const/4 v0, 0x3

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 639
    return-void
.end method

.method public setGUIDValue(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)V
    .locals 6

    .prologue
    const/4 v3, 0x6

    .line 650
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getBytes()[B

    move-result-object v2

    .line 651
    iget v4, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->streamNumber:I

    iget v5, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 650
    invoke-virtual/range {v0 .. v5}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    .line 652
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 653
    iput v3, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 654
    return-void
.end method

.method public setLanguageIndex(I)V
    .locals 6

    .prologue
    .line 665
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 666
    iget v3, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v4, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->streamNumber:I

    move v5, p1

    .line 665
    invoke-virtual/range {v0 .. v5}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    .line 667
    iput p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 668
    return-void
.end method

.method public setQWordValue(J)V
    .locals 3

    .prologue
    .line 719
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 720
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value out of range (0-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 721
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->QWORD_MAXVALUE:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 720
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    const/16 v0, 0x8

    invoke-static {p1, p2, v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->getBytes(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 724
    const/4 v0, 0x4

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 725
    return-void
.end method

.method public setQWordValue(Ljava/math/BigInteger;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    .line 684
    if-nez p1, :cond_0

    .line 685
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_1

    .line 688
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 689
    const-string v1, "Only unsigned values allowed (no negative)"

    .line 688
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->QWORD_MAXVALUE:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    .line 692
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 693
    const-string v1, "Value exceeds QWORD (64 bit unsigned)"

    .line 692
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_2
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 696
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 697
    array-length v0, v1

    if-gt v0, v2, :cond_4

    .line 698
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_3

    .line 707
    :goto_1
    const/4 v0, 0x4

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 708
    return-void

    .line 699
    :cond_3
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v3, v1

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    aget-byte v4, v1, v0

    aput-byte v4, v2, v3

    .line 698
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 705
    :cond_4
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1
.end method

.method public setStreamNumber(I)V
    .locals 6

    .prologue
    .line 736
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 737
    iget v3, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v5, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->languageIndex:I

    move v4, p1

    .line 736
    invoke-virtual/range {v0 .. v5}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    .line 738
    iput p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 739
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 753
    :try_start_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 777
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Value cannot be parsed as Number or is out of range (\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 781
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 780
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 755
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 756
    const-string v1, "Cannot interpret binary as string."

    .line 755
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setBooleanValue(Z)V

    .line 774
    :goto_0
    return-void

    .line 761
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    goto :goto_0

    .line 764
    :pswitch_3
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setQWordValue(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 767
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setWordValue(I)V

    goto :goto_0

    .line 770
    :pswitch_5
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->parseGUID(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setGUIDValue(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)V

    goto :goto_0

    .line 773
    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 799
    if-nez p1, :cond_0

    .line 800
    new-array v0, v4, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 837
    :goto_0
    iput v4, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 838
    :goto_1
    return-void

    .line 802
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 803
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v0

    array-length v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->isWithinValueRange(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    goto :goto_0

    .line 809
    :cond_1
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    .line 810
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isTruncateTextWithoutErrors()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 812
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v0

    .line 813
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->getMaximumDataLength()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    .line 814
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_2

    .line 815
    :goto_2
    new-array v0, v0, [B

    .line 814
    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 816
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 817
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v2, v2

    .line 816
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 815
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 820
    :cond_3
    const-string v0, "long"

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->WMA_LENGTH_OF_DATA_IS_TOO_LARGE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 821
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v4

    .line 822
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->getMaximumDataLength()Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    .line 823
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v4

    .line 824
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->getContainerGUID()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v4

    .line 825
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 821
    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setWordValue(I)V
    .locals 3

    .prologue
    .line 852
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 853
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value out of range (0-65535)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_1
    int-to-long v0, p1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->getBytes(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    .line 857
    const/4 v0, 0x5

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 858
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 868
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 869
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "String: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Binary: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Boolean: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 870
    const-string v3, "DWORD: "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "QWORD:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "WORD:"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "GUID:"

    aput-object v3, v1, v2

    iget v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 869
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 871
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->languageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 872
    const-string v1, " / stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->streamNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 867
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeInto(Ljava/io/OutputStream;Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;)I
    .locals 6

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 888
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getCurrentAsfSize(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;)I

    move-result v3

    .line 894
    iget v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->descriptorType:I

    if-ne v2, v0, :cond_7

    .line 895
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    if-ne p2, v2, :cond_0

    const/4 v0, 0x4

    :cond_0
    new-array v2, v0, [B

    .line 897
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v2, v1

    move-object v0, v2

    .line 902
    :goto_1
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    if-eq p2, v1, :cond_1

    .line 903
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v1

    invoke-static {v1, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 904
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result v1

    invoke-static {v1, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 906
    :cond_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 909
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    if-ne p2, v1, :cond_2

    .line 910
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 911
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 915
    :cond_2
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v2

    .line 916
    invoke-static {v2, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 917
    array-length v1, v0

    .line 918
    if-nez v2, :cond_3

    .line 919
    add-int/lit8 v1, v1, 0x2

    .line 922
    :cond_3
    sget-object v4, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    if-ne p2, v4, :cond_8

    .line 923
    invoke-static {v1, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 929
    :goto_2
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    if-eq p2, v1, :cond_4

    .line 930
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v1, v4}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 931
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 935
    :cond_4
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 936
    if-nez v2, :cond_5

    .line 937
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 939
    :cond_5
    return v3

    :cond_6
    move v0, v1

    .line 897
    goto :goto_0

    .line 899
    :cond_7
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->content:[B

    goto :goto_1

    .line 925
    :cond_8
    int-to-long v4, v1

    invoke-static {v4, v5, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    goto :goto_2
.end method
