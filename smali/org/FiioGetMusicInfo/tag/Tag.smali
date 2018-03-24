.class public interface abstract Lorg/FiioGetMusicInfo/tag/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# virtual methods
.method public abstract addField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
.end method

.method public abstract addField(Lorg/FiioGetMusicInfo/tag/TagField;)V
.end method

.method public abstract addField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
.end method

.method public abstract createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;
.end method

.method public abstract createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
.end method

.method public abstract createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;
.end method

.method public abstract deleteArtworkField()V
.end method

.method public abstract deleteField(Ljava/lang/String;)V
.end method

.method public abstract deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V
.end method

.method public abstract getAll(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArtworkList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/images/Artwork;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFieldCount()I
.end method

.method public abstract getFieldCountIncludingSubValues()I
.end method

.method public abstract getFields()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFields(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFirst(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;
.end method

.method public abstract getFirstArtwork()Lorg/FiioGetMusicInfo/tag/images/Artwork;
.end method

.method public abstract getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
.end method

.method public abstract getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;
.end method

.method public abstract getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;
.end method

.method public abstract hasCommonFields()Z
.end method

.method public abstract hasField(Ljava/lang/String;)Z
.end method

.method public abstract hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract setEncoding(Ljava/nio/charset/Charset;)Z
.end method

.method public abstract setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
.end method

.method public abstract setField(Lorg/FiioGetMusicInfo/tag/TagField;)V
.end method

.method public abstract setField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
