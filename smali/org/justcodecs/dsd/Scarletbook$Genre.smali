.class public Lorg/justcodecs/dsd/Scarletbook$Genre;
.super Ljava/lang/Object;
.source "Scarletbook.java"


# static fields
.field static tb:[B


# instance fields
.field category:B

.field genre:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lorg/justcodecs/dsd/Scarletbook$Genre;->tb:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 3

    .prologue
    .line 77
    :try_start_0
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$Genre;->tb:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 78
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$Genre;->tb:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/justcodecs/dsd/Scarletbook$Genre;->category:B

    .line 79
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$Genre;->tb:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$Genre;->tb:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    sget-object v1, Lorg/justcodecs/dsd/Scarletbook;->GENRE:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 80
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook;->GENRE:[Ljava/lang/String;

    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$Genre;->tb:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$Genre;->genre:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Genre [category="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$Genre;->category:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", genre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$Genre;->genre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
