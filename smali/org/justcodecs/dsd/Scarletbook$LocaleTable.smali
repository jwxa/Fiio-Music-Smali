.class public Lorg/justcodecs/dsd/Scarletbook$LocaleTable;
.super Ljava/lang/Object;
.source "Scarletbook.java"


# static fields
.field static tb:[B


# instance fields
.field code:Ljava/lang/String;

.field encoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->tb:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 4

    .prologue
    .line 101
    :try_start_0
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->tb:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 102
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->tb:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->tb:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->code:Ljava/lang/String;

    .line 105
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook;->CHARSET:[Ljava/lang/String;

    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->tb:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    :try_start_1
    iget-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->encoding:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->encoding:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocaleTable [code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
