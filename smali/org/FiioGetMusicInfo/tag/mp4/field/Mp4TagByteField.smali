.class public Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;
.super Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;
.source "Mp4TagByteField.java"


# static fields
.field public static FALSE_VALUE:Ljava/lang/String;

.field public static TRUE_VALUE:Ljava/lang/String;


# instance fields
.field private bytedata:[B

.field private realDataLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "1"

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->TRUE_VALUE:Ljava/lang/String;

    .line 20
    const-string v0, "0"

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->FALSE_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;-><init>(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput p3, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->realDataLength:I

    .line 61
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-void

    .line 65
    :catch_0
    move-exception v0

    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value of:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid for field:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected build(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 141
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;

    invoke-direct {v1, v0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 142
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->dataSize:I

    .line 144
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->dataSize:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->realDataLength:I

    .line 145
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->getByteData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->bytedata:[B

    .line 146
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->content:Ljava/lang/String;

    .line 148
    return-void
.end method

.method protected getDataBytes()[B
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->bytedata:[B

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->bytedata:[B

    .line 126
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->realDataLength:I

    packed-switch v0, :pswitch_data_0

    .line 131
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->realDataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Dont know how to write byte fields of this length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :pswitch_1
    new-instance v0, Ljava/lang/Short;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->content:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getSizeBEInt16(S)[B

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_2
    new-instance v1, Ljava/lang/Short;

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->content:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 118
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Short;->byteValue()B

    move-result v1

    aput-byte v1, v0, v2

    goto :goto_0

    .line 124
    :pswitch_3
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->content:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v0

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getFieldType()Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->INTEGER:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    return-object v0
.end method
