.class public Lorg/justcodecs/dsd/Scarletbook$TOC;
.super Ljava/lang/Object;
.source "Scarletbook.java"


# static fields
.field static tb:[B


# instance fields
.field albumCatalogNumber:Ljava/lang/String;

.field albumGenre:[Lorg/justcodecs/dsd/Scarletbook$Genre;

.field albumSequenceNumber:S

.field albumSetSize:S

.field area1Toc1Start:I

.field area1Toc2Start:I

.field area1TocSize:S

.field area_2_toc_1_start:I

.field area_2_toc_2_start:I

.field area_2_toc_size:S

.field discCatalogNumber:Ljava/lang/String;

.field discGenre:[Lorg/justcodecs/dsd/Scarletbook$Genre;

.field disc_date_day:B

.field disc_date_month:B

.field disc_date_year:S

.field id:[B

.field locales:[Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

.field major:B

.field minor:B

.field text_area_count:B

.field typeHybrid:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0x14

    new-array v0, v0, [B

    sput-object v0, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x4

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->id:[B

    .line 131
    new-array v0, v1, [Lorg/justcodecs/dsd/Scarletbook$Genre;

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->albumGenre:[Lorg/justcodecs/dsd/Scarletbook$Genre;

    .line 140
    new-array v0, v1, [Lorg/justcodecs/dsd/Scarletbook$Genre;

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->discGenre:[Lorg/justcodecs/dsd/Scarletbook$Genre;

    .line 145
    new-array v0, v2, [Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->locales:[Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

    .line 124
    return-void
.end method


# virtual methods
.method read(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 150
    :try_start_0
    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->id:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->id:[B

    array-length v3, v3

    invoke-interface {p1, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 151
    const-string v1, "SACDMTOC"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->id:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "It doesn\'t be appear SACD image"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 153
    :cond_0
    :try_start_1
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {p1, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 154
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->major:B

    .line 155
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->minor:B

    .line 156
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    add-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 157
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v1

    iput-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->albumSetSize:S

    .line 158
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v1

    iput-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->albumSequenceNumber:S

    .line 159
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 160
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-interface {p1, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 161
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-nez v1, :cond_1

    .line 162
    const-string v1, ""

    iput-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->albumCatalogNumber:Ljava/lang/String;

    :goto_0
    move v1, v0

    .line 165
    :goto_1
    if-lt v1, v6, :cond_2

    .line 169
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 170
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->area1Toc1Start:I

    .line 171
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->area1Toc2Start:I

    .line 172
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->area_2_toc_1_start:I

    .line 173
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->area_2_toc_2_start:I

    .line 174
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v1

    iput-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->typeHybrid:S

    .line 175
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 176
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v1

    iput-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->area1TocSize:S

    .line 177
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v1

    iput-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->area_2_toc_size:S

    .line 178
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-interface {p1, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 179
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-nez v1, :cond_3

    .line 180
    const-string v1, ""

    iput-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->discCatalogNumber:Ljava/lang/String;

    .line 183
    :goto_2
    if-lt v0, v6, :cond_4

    .line 187
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->disc_date_year:S

    .line 188
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 189
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->disc_date_month:B

    .line 190
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->disc_date_day:B

    .line 191
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 192
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 193
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->text_area_count:B

    .line 194
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 195
    return-void

    .line 164
    :cond_1
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->albumCatalogNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->albumGenre:[Lorg/justcodecs/dsd/Scarletbook$Genre;

    new-instance v3, Lorg/justcodecs/dsd/Scarletbook$Genre;

    invoke-direct {v3}, Lorg/justcodecs/dsd/Scarletbook$Genre;-><init>()V

    aput-object v3, v2, v1

    .line 167
    iget-object v2, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->albumGenre:[Lorg/justcodecs/dsd/Scarletbook$Genre;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/justcodecs/dsd/Scarletbook$Genre;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 182
    :cond_3
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/justcodecs/dsd/Scarletbook$TOC;->tb:[B

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->discCatalogNumber:Ljava/lang/String;

    goto :goto_2

    .line 184
    :cond_4
    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->discGenre:[Lorg/justcodecs/dsd/Scarletbook$Genre;

    new-instance v2, Lorg/justcodecs/dsd/Scarletbook$Genre;

    invoke-direct {v2}, Lorg/justcodecs/dsd/Scarletbook$Genre;-><init>()V

    aput-object v2, v1, v0

    .line 185
    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->discGenre:[Lorg/justcodecs/dsd/Scarletbook$Genre;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/justcodecs/dsd/Scarletbook$Genre;->read(Lorg/justcodecs/dsd/DSDStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TOC [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->id:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", major="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->major:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->minor:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumSetSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->albumSetSize:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumSequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->albumSequenceNumber:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumCatalogNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->albumCatalogNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", album_genre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->albumGenre:[Lorg/justcodecs/dsd/Scarletbook$Genre;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", area_1_toc_1_start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->area1Toc1Start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", area_1_toc_2_start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->area1Toc2Start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", area_2_toc_1_start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->area_2_toc_1_start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", area_2_toc_2_start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->area_2_toc_2_start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typeHybrid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->typeHybrid:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    const-string v1, ", area_1_toc_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->area1TocSize:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", area_2_toc_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->area_2_toc_size:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    const-string v1, ", disc_catalog_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->discCatalogNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disc_genre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->discGenre:[Lorg/justcodecs/dsd/Scarletbook$Genre;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    const-string v1, ", disc_date_year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->disc_date_year:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disc_date_month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->disc_date_month:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    const-string v1, ", disc_date_day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->disc_date_day:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text_area_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->text_area_count:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TOC;->locales:[Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
