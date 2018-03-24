.class public Lorg/seamless/util/math/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field private height:I

.field private position:Lorg/seamless/util/math/Point;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/seamless/util/math/Point;II)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    .line 31
    iput p2, p0, Lorg/seamless/util/math/Rectangle;->width:I

    .line 32
    iput p3, p0, Lorg/seamless/util/math/Rectangle;->height:I

    .line 33
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/seamless/util/math/Rectangle;->height:I

    return v0
.end method

.method public getPosition()Lorg/seamless/util/math/Point;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/seamless/util/math/Rectangle;->width:I

    return v0
.end method

.method public intersection(Lorg/seamless/util/math/Rectangle;)Lorg/seamless/util/math/Rectangle;
    .locals 14

    .prologue
    .line 66
    iget-object v0, p0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    invoke-virtual {v0}, Lorg/seamless/util/math/Point;->getX()I

    move-result v11

    .line 67
    iget-object v0, p0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    invoke-virtual {v0}, Lorg/seamless/util/math/Point;->getY()I

    move-result v9

    .line 68
    iget-object v0, p1, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    invoke-virtual {v0}, Lorg/seamless/util/math/Point;->getX()I

    move-result v10

    .line 69
    iget-object v0, p1, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    invoke-virtual {v0}, Lorg/seamless/util/math/Point;->getY()I

    move-result v8

    .line 70
    int-to-long v0, v11

    .line 71
    iget v2, p0, Lorg/seamless/util/math/Rectangle;->width:I

    int-to-long v2, v2

    add-long v6, v0, v2

    .line 72
    int-to-long v0, v9

    .line 73
    iget v2, p0, Lorg/seamless/util/math/Rectangle;->height:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 74
    int-to-long v0, v10

    .line 75
    iget v4, p1, Lorg/seamless/util/math/Rectangle;->width:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    .line 76
    int-to-long v0, v8

    .line 77
    iget v12, p1, Lorg/seamless/util/math/Rectangle;->height:I

    int-to-long v12, v12

    add-long/2addr v0, v12

    .line 78
    if-ge v11, v10, :cond_5

    .line 79
    :goto_0
    if-ge v9, v8, :cond_4

    .line 80
    :goto_1
    cmp-long v9, v6, v4

    if-lez v9, :cond_3

    .line 81
    :goto_2
    cmp-long v6, v2, v0

    if-lez v6, :cond_2

    .line 82
    :goto_3
    int-to-long v2, v10

    sub-long v2, v4, v2

    .line 83
    int-to-long v4, v8

    sub-long/2addr v0, v4

    .line 88
    const-wide/32 v4, -0x80000000

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const-wide/32 v2, -0x80000000

    .line 89
    :cond_0
    const-wide/32 v4, -0x80000000

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    const-wide/32 v0, -0x80000000

    .line 90
    :cond_1
    new-instance v4, Lorg/seamless/util/math/Rectangle;

    new-instance v5, Lorg/seamless/util/math/Point;

    invoke-direct {v5, v10, v8}, Lorg/seamless/util/math/Point;-><init>(II)V

    long-to-int v2, v2

    long-to-int v0, v0

    invoke-direct {v4, v5, v2, v0}, Lorg/seamless/util/math/Rectangle;-><init>(Lorg/seamless/util/math/Point;II)V

    return-object v4

    :cond_2
    move-wide v0, v2

    goto :goto_3

    :cond_3
    move-wide v4, v6

    goto :goto_2

    :cond_4
    move v8, v9

    goto :goto_1

    :cond_5
    move v10, v11

    goto :goto_0
.end method

.method public isOverlapping(Lorg/seamless/util/math/Rectangle;)Z
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lorg/seamless/util/math/Rectangle;->intersection(Lorg/seamless/util/math/Rectangle;)Lorg/seamless/util/math/Rectangle;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lorg/seamless/util/math/Rectangle;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lorg/seamless/util/math/Rectangle;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    new-instance v0, Lorg/seamless/util/math/Point;

    invoke-direct {v0, v1, v1}, Lorg/seamless/util/math/Point;-><init>(II)V

    iput-object v0, p0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    .line 37
    iput v1, p0, Lorg/seamless/util/math/Rectangle;->width:I

    .line 38
    iput v1, p0, Lorg/seamless/util/math/Rectangle;->height:I

    .line 39
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lorg/seamless/util/math/Rectangle;->height:I

    .line 63
    return-void
.end method

.method public setPosition(Lorg/seamless/util/math/Point;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    .line 47
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lorg/seamless/util/math/Rectangle;->width:I

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rectangle("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/seamless/util/math/Rectangle;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/seamless/util/math/Rectangle;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
