.class public final La/a/a/r;
.super Ljava/lang/Object;
.source "TagContent.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:[B

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:[B

.field protected g:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object v0, p0, La/a/a/r;->a:Ljava/lang/String;

    .line 201
    iput-object v0, p0, La/a/a/r;->b:Ljava/lang/String;

    .line 202
    iput-object v0, p0, La/a/a/r;->c:[B

    .line 203
    iput-object v0, p0, La/a/a/r;->d:Ljava/lang/String;

    .line 204
    iput-object v0, p0, La/a/a/r;->e:Ljava/lang/String;

    .line 205
    iput-object v0, p0, La/a/a/r;->f:[B

    .line 48
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, La/a/a/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, La/a/a/r;->a:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public final a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, La/a/a/r;->g:Ljava/util/Date;

    .line 152
    return-void
.end method

.method public final a([B)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, La/a/a/r;->c:[B

    .line 90
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, La/a/a/r;->d:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public final b([B)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, La/a/a/r;->f:[B

    .line 162
    return-void
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, La/a/a/r;->f:[B

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, La/a/a/r;->e:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/a/a/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
