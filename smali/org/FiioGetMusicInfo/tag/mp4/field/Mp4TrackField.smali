.class public Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;
.super Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;
.source "Mp4TrackField.java"


# static fields
.field private static final NONE_END_VALUE_INDEX:I = 0x3

.field private static final NONE_VALUE_INDEX:I = 0x0

.field private static final TRACK_NO_INDEX:I = 0x1

.field private static final TRACK_TOTAL_INDEX:I = 0x2


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 93
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    .line 95
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    new-instance v1, Ljava/lang/Short;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    int-to-short v1, p1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    new-instance v1, Ljava/lang/Short;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    new-instance v1, Ljava/lang/Short;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .prologue
    .line 109
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    new-instance v1, Ljava/lang/Short;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    int-to-short v1, p1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    int-to-short v1, p2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    new-instance v1, Ljava/lang/Short;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    new-instance v1, Ljava/lang/Short;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    array-length v1, v0

    packed-switch v1, :pswitch_data_0

    .line 80
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value is invalid for field:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    new-instance v1, Ljava/lang/Short;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    new-instance v1, Ljava/lang/Short;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    new-instance v1, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Value of:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is invalid for field:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :try_start_2
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 76
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    new-instance v1, Ljava/lang/Short;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :catch_1
    move-exception v1

    new-instance v1, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Value of:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is invalid for field:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :catch_2
    move-exception v1

    new-instance v1, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Value of:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is invalid for field:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 127
    return-void
.end method


# virtual methods
.method protected build(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 133
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 134
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;

    invoke-direct {v1, v0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 135
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->dataSize:I

    .line 136
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->getNumbers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    .line 139
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-lez v0, :cond_1

    .line 148
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 151
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->content:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public getTrackNo()Ljava/lang/Short;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    return-object v0
.end method

.method public getTrackTotal()Ljava/lang/Short;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 167
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 169
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    goto :goto_0
.end method

.method public setTrackNo(I)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    const/4 v1, 0x1

    int-to-short v2, p1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public setTrackTotal(I)V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->numbers:Ljava/util/List;

    const/4 v1, 0x2

    int-to-short v2, p1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method
