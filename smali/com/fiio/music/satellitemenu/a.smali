.class public final Lcom/fiio/music/satellitemenu/a;
.super Ljava/lang/Object;
.source "DefaultDegreeProvider.java"

# interfaces
.implements Lcom/fiio/music/satellitemenu/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IF)[F
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 13
    if-gtz p1, :cond_0

    .line 15
    new-array v0, v1, [F

    .line 37
    :goto_0
    return-object v0

    .line 18
    :cond_0
    if-ge p1, v4, :cond_1

    .line 21
    add-int/lit8 v0, p1, 0x1

    .line 26
    :goto_1
    new-array v2, p1, [F

    .line 27
    int-to-float v0, v0

    div-float v3, p2, v0

    .line 29
    :goto_2
    if-lt v1, p1, :cond_2

    move-object v0, v2

    .line 37
    goto :goto_0

    .line 23
    :cond_1
    add-int/lit8 v0, p1, -0x1

    goto :goto_1

    .line 31
    :cond_2
    if-ge p1, v4, :cond_3

    .line 32
    add-int/lit8 v0, v1, 0x1

    .line 34
    :goto_3
    int-to-float v0, v0

    mul-float/2addr v0, v3

    aput v0, v2, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method
