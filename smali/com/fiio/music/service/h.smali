.class public final Lcom/fiio/music/service/h;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"


# static fields
.field public static final a:[F

.field public static final b:[F

.field public static final c:[F

.field public static final d:[F

.field public static final e:[F

.field public static final f:[F

.field public static final g:[F

.field public static final h:[F

.field public static final i:[F


# instance fields
.field j:Landroid/os/Handler;

.field private k:Lcom/fiio/music/service/MediaPlayerService;

.field private l:Landroid/content/ContextWrapper;

.field private m:Lcom/fiio/music/service/l;

.field private n:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 82
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fiio/music/service/h;->a:[F

    .line 83
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/fiio/music/service/h;->b:[F

    .line 84
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/fiio/music/service/h;->c:[F

    .line 85
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/fiio/music/service/h;->d:[F

    .line 86
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/fiio/music/service/h;->e:[F

    .line 87
    new-array v0, v1, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/fiio/music/service/h;->f:[F

    .line 88
    new-array v0, v1, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/fiio/music/service/h;->g:[F

    .line 89
    new-array v0, v1, [F

    fill-array-data v0, :array_7

    sput-object v0, Lcom/fiio/music/service/h;->h:[F

    .line 90
    new-array v0, v1, [F

    fill-array-data v0, :array_8

    sput-object v0, Lcom/fiio/music/service/h;->i:[F

    .line 180
    return-void

    .line 82
    :array_0
    .array-data 4
        -0x40000000    # -2.0f
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
        -0x40000000    # -2.0f
        -0x3f800000    # -4.0f
    .end array-data

    .line 83
    :array_1
    .array-data 4
        0x0
        0x40c00000    # 6.0f
        0x40c00000    # 6.0f
        0x40800000    # 4.0f
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
    .end array-data

    .line 84
    :array_2
    .array-data 4
        -0x40000000    # -2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
        0x0
        0x0
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data

    .line 85
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    .line 86
    :array_4
    .array-data 4
        -0x3f400000    # -6.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x0
    .end array-data

    .line 87
    :array_5
    .array-data 4
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        -0x40000000    # -2.0f
        -0x3f800000    # -4.0f
        -0x3f800000    # -4.0f
        -0x40000000    # -2.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    .line 88
    :array_6
    .array-data 4
        -0x40000000    # -2.0f
        0x0
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
        0x0
        0x0
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data

    .line 89
    :array_7
    .array-data 4
        -0x3f800000    # -4.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x3f800000    # -4.0f
        -0x3f400000    # -6.0f
    .end array-data

    .line 90
    :array_8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lcom/fiio/music/service/i;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/i;-><init>(Lcom/fiio/music/service/h;)V

    iput-object v0, p0, Lcom/fiio/music/service/h;->n:Landroid/content/ServiceConnection;

    .line 414
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/h;->j:Landroid/os/Handler;

    .line 187
    iput-object p1, p0, Lcom/fiio/music/service/h;->l:Landroid/content/ContextWrapper;

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/service/h;)Lcom/fiio/music/service/l;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fiio/music/service/h;->m:Lcom/fiio/music/service/l;

    return-object v0
.end method

.method static synthetic a(Lcom/fiio/music/service/h;Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    return-void
.end method

.method static synthetic b(Lcom/fiio/music/service/h;)Lcom/fiio/music/service/MediaPlayerService;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->b()V

    .line 675
    :cond_0
    return-void
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->F()Ljava/lang/String;

    move-result-object v0

    .line 685
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->v()Ljava/lang/String;

    move-result-object v0

    .line 696
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final D()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->l()V

    .line 707
    :cond_0
    return-void
.end method

.method public final E()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->C()V

    .line 732
    :cond_0
    return-void
.end method

.method public final F()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->D()V

    .line 757
    :cond_0
    return-void
.end method

.method public final G()Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->N()Z

    move-result v0

    .line 763
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final H()Z
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->G()Z

    move-result v0

    .line 783
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final I()Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->O()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 794
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final J()Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->P()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 805
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final K()Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->Q()Z

    move-result v0

    .line 849
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final L()V
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->R()V

    .line 870
    :cond_0
    return-void
.end method

.method public final M()I
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->S()I

    move-result v0

    .line 875
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final N()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->T()V

    .line 882
    :cond_0
    return-void
.end method

.method public final O()Z
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 934
    const/4 v0, 0x1

    .line 936
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final P()V
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->U()V

    .line 950
    :cond_0
    return-void
.end method

.method public final Q()Z
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->V()Z

    move-result v0

    .line 971
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final R()Lorg/justcodecs/dsd/SacdDataFormat;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->W()Lorg/justcodecs/dsd/SacdDataFormat;

    move-result-object v0

    .line 984
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final S()Lcom/fiio/music/service/MediaPlayerService;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    return-object v0
.end method

.method public final T()V
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->A()V

    .line 1012
    :cond_0
    return-void
.end method

.method public final U()V
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->Y()V

    .line 1018
    :cond_0
    return-void
.end method

.method public final V()V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->d()V

    .line 1023
    :cond_0
    return-void
.end method

.method public final W()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->Z()Ljava/util/List;

    move-result-object v0

    .line 1029
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final X()I
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->ab()I

    move-result v0

    .line 1085
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Y()I
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->ac()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1092
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Z()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->ad()Landroid/database/Cursor;

    move-result-object v0

    .line 1099
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/io/File;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/io/File;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 485
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->c()V

    .line 223
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->b(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public final a(IILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fiio/music/service/MediaPlayerService;->a(IILjava/lang/String;Ljava/util/List;)V

    .line 537
    :cond_0
    return-void
.end method

.method public final varargs a(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 1066
    :cond_0
    return-void
.end method

.method public final a(Landroid/database/Cursor;I)V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/database/Cursor;I)V

    .line 1113
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_0
    return-void
.end method

.method public final a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 816
    :cond_0
    return-void
.end method

.method public final a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 962
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    .line 965
    :cond_0
    return-void
.end method

.method public final a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    .line 505
    :cond_0
    return-void
.end method

.method public final a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 955
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    .line 958
    :cond_0
    return-void
.end method

.method public final a(Lcom/fiio/music/entity/Song;Landroid/database/Cursor;I)V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;Landroid/database/Cursor;I)V

    .line 1044
    :cond_0
    return-void
.end method

.method public final a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 826
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    .line 829
    :cond_0
    return-void
.end method

.method public final a(Lcom/fiio/music/service/l;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/fiio/music/service/h;->m:Lcom/fiio/music/service/l;

    .line 197
    return-void
.end method

.method public final a(Lcom/fiio/music/util/j;)V
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/util/j;)V

    .line 843
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->d(Ljava/lang/String;)V

    .line 366
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 545
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 472
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 521
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/fiio/music/entity/Song;)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/lang/String;Lcom/fiio/music/entity/Song;)V

    .line 458
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fiio/music/service/MediaPlayerService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 464
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/util/ArrayList;)V

    .line 1077
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/util/List;)V

    .line 633
    :cond_0
    return-void
.end method

.method public final a(Lorg/justcodecs/dsd/SacdDataFormat;)V
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lorg/justcodecs/dsd/SacdDataFormat;)V

    .line 995
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->c(Z)V

    .line 492
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    const-string v1, "com.fiio.music.service.meidaplayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/fiio/music/service/h;->l:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/fiio/music/service/h;->l:Landroid/content/ContextWrapper;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    iget-object v1, p0, Lcom/fiio/music/service/h;->l:Landroid/content/ContextWrapper;

    iget-object v2, p0, Lcom/fiio/music/service/h;->n:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 236
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->c(I)V

    .line 355
    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fiio/music/service/MediaPlayerService;->b(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_0
    return-void
.end method

.method public final b(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    .line 562
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->b(Ljava/lang/String;)V

    .line 724
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fiio/music/service/MediaPlayerService;->b(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 500
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 479
    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->b(Ljava/util/List;)V

    .line 650
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    const-string v1, "com.fiio.music.service.meidaplayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/fiio/music/service/h;->l:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v1, p0, Lcom/fiio/music/service/h;->l:Landroid/content/ContextWrapper;

    iget-object v2, p0, Lcom/fiio/music/service/h;->n:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 244
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->a(I)V

    .line 374
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->c(Ljava/lang/String;)V

    .line 738
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->f()V

    .line 252
    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->d(I)V

    .line 746
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->e()V

    .line 260
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->e(Ljava/lang/String;)V

    .line 888
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->E()V

    .line 266
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/fiio/music/service/h;->l:Landroid/content/ContextWrapper;

    iget-object v1, p0, Lcom/fiio/music/service/h;->n:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 275
    :cond_0
    return-void
.end method

.method public final h()Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->g()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->h()I

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->j()I

    move-result v0

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->k()I

    move-result v0

    .line 338
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->m()I

    move-result v0

    .line 348
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->r()Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->q()I

    move-result v0

    .line 393
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final p()I
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->L()Z

    move-result v0

    .line 409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()V
    .locals 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/fiio/music/service/h;->j:Landroid/os/Handler;

    new-instance v1, Lcom/fiio/music/service/j;

    invoke-direct {v1, p0}, Lcom/fiio/music/service/j;-><init>(Lcom/fiio/music/service/h;)V

    .line 422
    const-wide/16 v2, 0xa

    .line 417
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 425
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 4

    .prologue
    .line 432
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/fiio/music/service/h;->j:Landroid/os/Handler;

    new-instance v1, Lcom/fiio/music/service/k;

    invoke-direct {v1, p0}, Lcom/fiio/music/service/k;-><init>(Lcom/fiio/music/service/h;)V

    .line 438
    const-wide/16 v2, 0xa

    .line 433
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->z()V

    .line 449
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->B()V

    .line 550
    :cond_0
    return-void
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->H()Ljava/util/List;

    move-result-object v0

    .line 571
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->I()Ljava/util/List;

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 628
    :cond_0
    return-void
.end method

.method public final y()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->K()V

    .line 641
    :cond_0
    return-void
.end method

.method public final z()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/fiio/music/service/h;->k:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->w()I

    move-result v0

    .line 665
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
