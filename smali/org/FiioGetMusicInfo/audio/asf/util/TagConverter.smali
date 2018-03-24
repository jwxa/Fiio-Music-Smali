.class public final Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;
.super Ljava/lang/Object;
.source "TagConverter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static GUID_EXTENDED_CONTENT_DESCRIPTION:Ljava/lang/String;

.field private static GUID_HEADER_EXTENSION:Ljava/lang/String;

.field private static GUID_PICTURE:Ljava/lang/String;

.field private static PICTURE_TAG_BMP:Ljava/lang/String;

.field private static PICTURE_TAG_JPG:Ljava/lang/String;

.field private static PICTURE_TAG_PNG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->$assertionsDisabled:Z

    .line 191
    const-string v0, "b503bf5f2ea9cf118ee300c00c205365"

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->GUID_HEADER_EXTENSION:Ljava/lang/String;

    .line 192
    const-string v0, "40a4d0d207e3d21197f000a0c95ea850"

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->GUID_EXTENDED_CONTENT_DESCRIPTION:Ljava/lang/String;

    .line 193
    const-string v0, "57004d002f0050006900630074007500720065000000"

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->GUID_PICTURE:Ljava/lang/String;

    .line 194
    const-string v0, "6A"

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->PICTURE_TAG_JPG:Ljava/lang/String;

    .line 195
    const-string v0, "70"

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->PICTURE_TAG_PNG:Ljava/lang/String;

    .line 196
    const-string v0, "62"

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->PICTURE_TAG_BMP:Ljava/lang/String;

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    return-void
.end method

.method public static assignCommonTagValues(Lorg/FiioGetMusicInfo/tag/Tag;Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-interface {p0, v0}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v1

    .line 72
    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-direct {v0, v1, v2, v4}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 74
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-interface {p0, v1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 81
    :goto_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-interface {p0, v0}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v1

    .line 83
    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-direct {v0, v1, v2, v4}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 85
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-interface {p0, v1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 92
    :goto_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-interface {p0, v0}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v1

    .line 94
    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-direct {v0, v1, v2, v4}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 96
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-interface {p0, v1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 103
    :goto_2
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-interface {p0, v0}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 105
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v1

    .line 106
    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-direct {v0, v1, v2, v4}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 108
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-interface {p0, v1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 111
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v0

    .line 112
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-interface {p0, v1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getIdForName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    new-instance v1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v2

    .line 117
    sget-object v3, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->GENRE_ID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 132
    :goto_3
    return-void

    .line 78
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    .line 79
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_2
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    .line 90
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 101
    :cond_3
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 123
    :cond_4
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->GENRE_ID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    .line 124
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    goto :goto_3

    .line 127
    :cond_5
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    .line 128
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 129
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->GENRE_ID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    .line 130
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static createTagOf(Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/asf/AsfTag;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 144
    const/4 v2, 0x0

    .line 145
    new-instance v4, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;

    invoke-direct {v4, v7}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;-><init>(Z)V

    .line 146
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->values()[Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v0

    array-length v0, v0

    if-lt v3, v0, :cond_0

    .line 188
    return-object v4

    .line 148
    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->values()[Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->findMetadataContainer(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;)Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 151
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 153
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v1

    if-ne v1, v7, :cond_5

    .line 154
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    :try_start_0
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->setTagCoverFieldForCoverArt(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 164
    :goto_2
    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    new-instance v1, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    move-object v0, v1

    move-object v1, v2

    .line 184
    :goto_3
    invoke-virtual {v4, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    move-object v2, v1

    goto :goto_1

    .line 159
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 161
    :catch_1
    move-exception v0

    const-string v0, "long"

    const-string v1, "wma\u8bfb\u53d6\u56fe\u7247\u4fe1\u606f\u5185\u5b58\u6ea2\u51fa---TagConverter.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    :cond_4
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    .line 175
    sget-object v6, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->BANNER_IMAGE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 175
    if-nez v1, :cond_1

    .line 177
    new-instance v1, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    move-object v0, v1

    move-object v1, v2

    .line 181
    goto :goto_3

    .line 182
    :cond_5
    new-instance v1, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_3
.end method

.method public static distributeMetadata(Lorg/FiioGetMusicInfo/tag/asf/AsfTag;)[Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->getAsfFields()Ljava/util/Iterator;

    move-result-object v4

    .line 323
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainerFactory;->getInstance()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainerFactory;

    move-result-object v0

    invoke-static {}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->getOrdered()[Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainerFactory;->createContainers([Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;)[Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    move-result-object v5

    .line 326
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    return-object v5

    .line 327
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;

    move v2, v3

    move v1, v3

    .line 329
    :goto_0
    if-nez v1, :cond_2

    array-length v6, v5

    if-lt v2, v6, :cond_3

    .line 341
    :cond_2
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 330
    :cond_3
    aget-object v6, v5, v2

    .line 331
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v6

    .line 332
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->getId()Ljava/lang/String;

    move-result-object v7

    .line 331
    invoke-static {v7}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getAsfFieldKey(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    move-result-object v7

    .line 332
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getHighestContainer()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v7

    .line 330
    invoke-static {v6, v7}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->areInCorrectOrder(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;)Z

    move-result v6

    .line 332
    if-eqz v6, :cond_4

    .line 333
    aget-object v6, v5, v2

    .line 334
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->getDescriptor()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v7

    .line 333
    invoke-virtual {v6, v7}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->isAddSupported(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)Z

    move-result v6

    .line 334
    if-eqz v6, :cond_4

    .line 335
    aget-object v1, v5, v2

    .line 336
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->getDescriptor()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v6

    .line 335
    invoke-virtual {v1, v6}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 337
    const/4 v1, 0x1

    .line 329
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getLongLE(Ljava/nio/ByteBuffer;II)J
    .locals 6

    .prologue
    .line 379
    const-wide/16 v2, 0x0

    .line 380
    const/4 v0, 0x0

    :goto_0
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    .line 385
    return-wide v2

    .line 382
    :cond_0
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readBytesToLong(Ljava/io/RandomAccessFile;I)I
    .locals 3

    .prologue
    .line 392
    invoke-static {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 393
    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-static {v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->getLongLE(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-int v0, v0

    .line 394
    return v0
.end method

.method public static readFileDataIntoBufferBE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 363
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 365
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 366
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 367
    return-object v0
.end method

.method public static readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 371
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 372
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 373
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 374
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 375
    return-object v0
.end method

.method private static setTagCoverFieldForCoverArt(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0x16

    const/16 v10, 0xb

    const/16 v9, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x4

    .line 199
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 201
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 203
    invoke-static {p0, v7}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->readBytesToLong(Ljava/io/RandomAccessFile;I)I

    move-result v0

    .line 206
    invoke-virtual {p0, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 208
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 209
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 212
    invoke-static {p0, v7}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->readBytesToLong(Ljava/io/RandomAccessFile;I)I

    move-result v1

    .line 213
    invoke-virtual {p0, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 216
    add-int/lit8 v3, v0, -0x1

    .line 218
    add-int/lit8 v0, v1, -0x18

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 219
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 308
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 220
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 221
    invoke-static {p0, v7}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->readBytesToLong(Ljava/io/RandomAccessFile;I)I

    move-result v1

    .line 222
    invoke-virtual {p0, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 224
    sget-object v4, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->GUID_HEADER_EXTENSION:Ljava/lang/String;

    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->toHexString1([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 225
    invoke-virtual {p0, v11}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 226
    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 227
    new-array v4, v11, [B

    .line 228
    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 229
    sget-object v5, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->GUID_PICTURE:Ljava/lang/String;

    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->toHexString1([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 231
    invoke-static {p0, v7}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->readBytesToLong(Ljava/io/RandomAccessFile;I)I

    move-result v2

    .line 232
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 233
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 234
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 235
    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->PICTURE_TAG_JPG:Ljava/lang/String;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->toHexString1([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    invoke-virtual {p0, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 247
    :goto_2
    invoke-static {p0, v2}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->readFileDataIntoBufferBE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 248
    new-array v3, v2, [B

    .line 249
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 250
    new-instance v0, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 253
    add-int/lit8 v1, v1, -0x18

    add-int/lit8 v1, v1, -0x6f

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_1

    .line 237
    :cond_1
    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->PICTURE_TAG_PNG:Ljava/lang/String;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->toHexString1([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    invoke-virtual {p0, v9}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_2

    .line 239
    :cond_2
    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->PICTURE_TAG_BMP:Ljava/lang/String;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->toHexString1([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {p0, v9}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_2

    .line 243
    :cond_3
    invoke-virtual {p0, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_2

    .line 256
    :cond_4
    add-int/lit8 v1, v1, -0x18

    add-int/lit8 v1, v1, -0x52

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 219
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 258
    :cond_6
    sget-object v4, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->GUID_EXTENDED_CONTENT_DESCRIPTION:Ljava/lang/String;

    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->toHexString1([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 259
    invoke-static {p0, v8}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->readBytesToLong(Ljava/io/RandomAccessFile;I)I

    move-result v4

    .line 262
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v4, :cond_5

    .line 263
    invoke-static {p0, v8}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->readBytesToLong(Ljava/io/RandomAccessFile;I)I

    move-result v5

    .line 264
    if-ne v5, v11, :cond_b

    .line 265
    new-array v5, v11, [B

    .line 266
    invoke-virtual {p0, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 268
    sget-object v6, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->GUID_PICTURE:Ljava/lang/String;

    invoke-static {v5}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->toHexString1([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 269
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 270
    invoke-static {p0, v7}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->readBytesToLong(Ljava/io/RandomAccessFile;I)I

    move-result v0

    .line 271
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 272
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 273
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 274
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->PICTURE_TAG_JPG:Ljava/lang/String;

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->toHexString1([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 275
    invoke-virtual {p0, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 284
    :goto_5
    invoke-static {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->readFileDataIntoBufferBE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 285
    new-array v2, v0, [B

    .line 286
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 287
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/16 :goto_1

    .line 276
    :cond_7
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->PICTURE_TAG_PNG:Ljava/lang/String;

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->toHexString1([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 277
    invoke-virtual {p0, v9}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_5

    .line 278
    :cond_8
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->PICTURE_TAG_BMP:Ljava/lang/String;

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->toHexString1([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 279
    invoke-virtual {p0, v9}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_5

    .line 282
    :cond_9
    invoke-virtual {p0, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_5

    .line 291
    :cond_a
    invoke-virtual {p0, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 292
    invoke-static {p0, v8}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->readBytesToLong(Ljava/io/RandomAccessFile;I)I

    move-result v5

    .line 293
    invoke-virtual {p0, v5}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 262
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 296
    :cond_b
    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v5}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 297
    invoke-static {p0, v8}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->readBytesToLong(Ljava/io/RandomAccessFile;I)I

    move-result v5

    .line 298
    invoke-virtual {p0, v5}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_6

    .line 304
    :cond_c
    add-int/lit8 v1, v1, -0x18

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto/16 :goto_3
.end method

.method public static toHexString1(B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    and-int/lit16 v0, p0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    :cond_0
    return-object v0
.end method

.method public static toHexString1([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 403
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 404
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 407
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 405
    :cond_0
    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->toHexString1(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
