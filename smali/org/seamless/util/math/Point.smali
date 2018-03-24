.class public Lorg/seamless/util/math/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lorg/seamless/util/math/Point;->x:I

    .line 26
    iput p2, p0, Lorg/seamless/util/math/Point;->y:I

    .line 27
    return-void
.end method


# virtual methods
.method public divide(D)Lorg/seamless/util/math/Point;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 45
    new-instance v2, Lorg/seamless/util/math/Point;

    iget v0, p0, Lorg/seamless/util/math/Point;->x:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/seamless/util/math/Point;->x:I

    int-to-double v4, v0

    div-double/2addr v4, p1

    double-to-int v0, v4

    :goto_0
    iget v3, p0, Lorg/seamless/util/math/Point;->y:I

    if-eqz v3, :cond_0

    iget v1, p0, Lorg/seamless/util/math/Point;->y:I

    int-to-double v4, v1

    div-double/2addr v4, p1

    double-to-int v1, v4

    :cond_0
    invoke-direct {v2, v0, v1}, Lorg/seamless/util/math/Point;-><init>(II)V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 56
    :cond_3
    check-cast p1, Lorg/seamless/util/math/Point;

    .line 58
    iget v2, p0, Lorg/seamless/util/math/Point;->x:I

    iget v3, p1, Lorg/seamless/util/math/Point;->x:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 59
    :cond_4
    iget v2, p0, Lorg/seamless/util/math/Point;->y:I

    iget v3, p1, Lorg/seamless/util/math/Point;->y:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lorg/seamless/util/math/Point;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lorg/seamless/util/math/Point;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lorg/seamless/util/math/Point;->x:I

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/seamless/util/math/Point;->y:I

    add-int/2addr v0, v1

    .line 68
    return v0
.end method

.method public multiply(D)Lorg/seamless/util/math/Point;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 38
    new-instance v2, Lorg/seamless/util/math/Point;

    iget v0, p0, Lorg/seamless/util/math/Point;->x:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/seamless/util/math/Point;->x:I

    int-to-double v4, v0

    mul-double/2addr v4, p1

    double-to-int v0, v4

    :goto_0
    iget v3, p0, Lorg/seamless/util/math/Point;->y:I

    if-eqz v3, :cond_0

    iget v1, p0, Lorg/seamless/util/math/Point;->y:I

    int-to-double v4, v1

    mul-double/2addr v4, p1

    double-to-int v1, v4

    :cond_0
    invoke-direct {v2, v0, v1}, Lorg/seamless/util/math/Point;-><init>(II)V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Point("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/seamless/util/math/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/seamless/util/math/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
