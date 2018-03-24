.class public final Lcom/fiio/music/util/o;
.super Ljava/lang/Object;
.source "EqSeekbarSaveStateUtils.java"


# static fields
.field private static g:Lcom/fiio/music/util/o;


# instance fields
.field a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

.field private b:Lcom/fiio/music/widget/a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/widget/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/fiio/music/widget/BezierCurveChart;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/util/VerticalSeekBar;",
            ">;"
        }
    .end annotation
.end field

.field private f:[Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/fiio/music/util/o;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    .line 22
    iput-object v0, p0, Lcom/fiio/music/util/o;->b:Lcom/fiio/music/widget/a;

    .line 23
    iput-object v0, p0, Lcom/fiio/music/util/o;->c:Ljava/util/ArrayList;

    .line 24
    iput-object v0, p0, Lcom/fiio/music/util/o;->d:Lcom/fiio/music/widget/BezierCurveChart;

    .line 25
    iput-object v0, p0, Lcom/fiio/music/util/o;->e:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lcom/fiio/music/util/o;->f:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/example/root/checkappmusic/FiioMediaPlayer;Lcom/fiio/music/widget/BezierCurveChart;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/widget/a;",
            ">;",
            "Lcom/example/root/checkappmusic/FiioMediaPlayer;",
            "Lcom/fiio/music/widget/BezierCurveChart;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/fiio/music/util/o;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    .line 22
    iput-object v0, p0, Lcom/fiio/music/util/o;->b:Lcom/fiio/music/widget/a;

    .line 23
    iput-object v0, p0, Lcom/fiio/music/util/o;->c:Ljava/util/ArrayList;

    .line 24
    iput-object v0, p0, Lcom/fiio/music/util/o;->d:Lcom/fiio/music/widget/BezierCurveChart;

    .line 25
    iput-object v0, p0, Lcom/fiio/music/util/o;->e:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lcom/fiio/music/util/o;->f:[Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/fiio/music/util/o;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    .line 40
    iput-object p1, p0, Lcom/fiio/music/util/o;->c:Ljava/util/ArrayList;

    .line 41
    iput-object p3, p0, Lcom/fiio/music/util/o;->d:Lcom/fiio/music/widget/BezierCurveChart;

    .line 42
    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lcom/example/root/checkappmusic/FiioMediaPlayer;Lcom/fiio/music/widget/BezierCurveChart;)Lcom/fiio/music/util/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/widget/a;",
            ">;",
            "Lcom/example/root/checkappmusic/FiioMediaPlayer;",
            "Lcom/fiio/music/widget/BezierCurveChart;",
            ")",
            "Lcom/fiio/music/util/o;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/fiio/music/util/o;->g:Lcom/fiio/music/util/o;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/fiio/music/util/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/fiio/music/util/o;-><init>(Ljava/util/ArrayList;Lcom/example/root/checkappmusic/FiioMediaPlayer;Lcom/fiio/music/widget/BezierCurveChart;)V

    sput-object v0, Lcom/fiio/music/util/o;->g:Lcom/fiio/music/util/o;

    .line 32
    :cond_0
    sget-object v0, Lcom/fiio/music/util/o;->g:Lcom/fiio/music/util/o;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/util/VerticalSeekBar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fiio/music/util/o;->e:Ljava/util/List;

    .line 48
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/fiio/music/util/o;->h:Z

    .line 57
    return-void
.end method

.method public final a([F)V
    .locals 10

    .prologue
    const v6, -0x3ace8000    # -2840.0f

    const/4 v1, 0x0

    .line 67
    if-eqz p1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/fiio/music/util/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/fiio/music/util/o;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fiio/music/util/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v0, p0, Lcom/fiio/music/util/o;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/fiio/music/widget/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v6}, Lcom/fiio/music/widget/a;-><init>(FF)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 72
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_2

    .line 78
    iget-object v0, p0, Lcom/fiio/music/util/o;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/fiio/music/widget/a;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-direct {v2, v3, v6}, Lcom/fiio/music/widget/a;-><init>(FF)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    iget-boolean v0, p0, Lcom/fiio/music/util/o;->h:Z

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/fiio/music/util/o;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setEqualizer(Z[F)V

    :goto_1
    move v2, v1

    .line 87
    :goto_2
    array-length v0, p1

    if-lt v2, v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/fiio/music/util/o;->d:Lcom/fiio/music/widget/BezierCurveChart;

    iget-object v1, p0, Lcom/fiio/music/util/o;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fiio/music/util/o;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/widget/BezierCurveChart;->a(Ljava/util/List;[Ljava/lang/String;)V

    .line 93
    :cond_1
    return-void

    .line 73
    :cond_2
    const v2, -0x3c135555

    .line 74
    aget v3, p1, v0

    .line 73
    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 74
    const-wide v4, 0x40a6300000000000L    # 2840.0

    .line 73
    sub-double/2addr v2, v4

    double-to-float v2, v2

    .line 75
    new-instance v3, Lcom/fiio/music/widget/a;

    add-int/lit8 v4, v0, 0x1

    int-to-float v4, v4

    invoke-direct {v3, v4, v2}, Lcom/fiio/music/widget/a;-><init>(FF)V

    iput-object v3, p0, Lcom/fiio/music/util/o;->b:Lcom/fiio/music/widget/a;

    .line 76
    iget-object v2, p0, Lcom/fiio/music/util/o;->c:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/fiio/music/util/o;->b:Lcom/fiio/music/widget/a;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/util/o;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v1, p1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setEqualizer(Z[F)V

    goto :goto_1

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/util/o;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    add-int/lit8 v1, v2, 0x1

    const-wide v4, 0x4073100000000000L    # 305.0

    iget-object v3, p0, Lcom/fiio/music/util/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/widget/a;

    iget v1, v1, Lcom/fiio/music/widget/a;->c:F

    float-to-double v6, v1

    const-wide v8, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/fiio/music/util/VerticalSeekBar;->a(D)V

    .line 87
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2
.end method

.method public final a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/fiio/music/util/o;->f:[Ljava/lang/String;

    .line 52
    return-void
.end method
