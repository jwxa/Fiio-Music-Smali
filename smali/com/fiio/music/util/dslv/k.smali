.class final Lcom/fiio/music/util/dslv/k;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# instance fields
.field a:Ljava/lang/StringBuilder;

.field b:Ljava/io/File;

.field final synthetic c:Lcom/fiio/music/util/dslv/DragSortListView;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/fiio/music/util/dslv/DragSortListView;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2964
    iput-object p1, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    .line 2959
    iput v1, p0, Lcom/fiio/music/util/dslv/k;->d:I

    .line 2960
    iput v1, p0, Lcom/fiio/music/util/dslv/k;->e:I

    .line 2962
    iput-boolean v1, p0, Lcom/fiio/music/util/dslv/k;->f:Z

    .line 2965
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2966
    new-instance v1, Ljava/io/File;

    const-string v2, "dslv_state.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fiio/music/util/dslv/k;->b:Ljava/io/File;

    .line 2968
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2970
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 2971
    const-string v0, "mobeta"

    const-string v1, "file created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2978
    :cond_0
    :goto_0
    return-void

    .line 2972
    :catch_0
    move-exception v0

    .line 2973
    const-string v1, "mobeta"

    const-string v2, "Could not create dslv_state.txt"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    const-string v1, "mobeta"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3041
    iget-boolean v1, p0, Lcom/fiio/music/util/dslv/k;->f:Z

    if-nez v1, :cond_0

    .line 3063
    :goto_0
    return-void

    .line 3047
    :cond_0
    const/4 v1, 0x1

    .line 3048
    :try_start_0
    iget v2, p0, Lcom/fiio/music/util/dslv/k;->e:I

    if-nez v2, :cond_1

    .line 3051
    :goto_1
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/fiio/music/util/dslv/k;->b:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3053
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3054
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3056
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 3057
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 3059
    iget v0, p0, Lcom/fiio/music/util/dslv/k;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fiio/music/util/dslv/k;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3063
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 2981
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/util/dslv/k;->e:I

    .line 2983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/k;->f:Z

    .line 2984
    return-void
.end method

.method public final b()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2987
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/k;->f:Z

    if-nez v0, :cond_1

    .line 3038
    :cond_0
    :goto_0
    return-void

    .line 2991
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v2, "<DSLVState>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2992
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildCount()I

    move-result v2

    .line 2993
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2994
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <Positions>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2995
    :goto_1
    if-lt v0, v2, :cond_2

    .line 2998
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "</Positions>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <Tops>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 3001
    :goto_2
    if-lt v0, v2, :cond_3

    .line 3004
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "</Tops>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3005
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <Bottoms>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 3006
    :goto_3
    if-lt v0, v2, :cond_4

    .line 3009
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "</Bottoms>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3011
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpPos>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v4}, Lcom/fiio/music/util/dslv/DragSortListView;->m(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</FirstExpPos>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpBlankHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3013
    iget-object v4, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    iget-object v5, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v5}, Lcom/fiio/music/util/dslv/DragSortListView;->m(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/fiio/music/util/dslv/DragSortListView;->c(Lcom/fiio/music/util/dslv/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    iget-object v6, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v6}, Lcom/fiio/music/util/dslv/DragSortListView;->m(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/fiio/music/util/dslv/DragSortListView;->d(Lcom/fiio/music/util/dslv/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3014
    const-string v4, "</FirstExpBlankHeight>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpPos>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v4}, Lcom/fiio/music/util/dslv/DragSortListView;->n(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</SecondExpPos>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpBlankHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3017
    iget-object v4, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    iget-object v5, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v5}, Lcom/fiio/music/util/dslv/DragSortListView;->n(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/fiio/music/util/dslv/DragSortListView;->c(Lcom/fiio/music/util/dslv/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    iget-object v6, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v6}, Lcom/fiio/music/util/dslv/DragSortListView;->n(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/fiio/music/util/dslv/DragSortListView;->d(Lcom/fiio/music/util/dslv/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3018
    const-string v4, "</SecondExpBlankHeight>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3019
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcPos>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v4}, Lcom/fiio/music/util/dslv/DragSortListView;->i(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</SrcPos>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3020
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v4}, Lcom/fiio/music/util/dslv/DragSortListView;->k(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/fiio/music/util/dslv/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3021
    const-string v4, "</SrcHeight>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3022
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <ViewHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</ViewHeight>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <LastY>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v4}, Lcom/fiio/music/util/dslv/DragSortListView;->y(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</LastY>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3024
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <FloatY>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v4}, Lcom/fiio/music/util/dslv/DragSortListView;->s(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</FloatY>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3025
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <ShuffleEdges>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 3026
    :goto_4
    if-lt v0, v2, :cond_5

    .line 3029
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v2, "</ShuffleEdges>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3031
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v2, "</DSLVState>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3032
    iget v0, p0, Lcom/fiio/music/util/dslv/k;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fiio/music/util/dslv/k;->d:I

    .line 3034
    iget v0, p0, Lcom/fiio/music/util/dslv/k;->d:I

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    .line 3035
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/k;->d()V

    .line 3036
    iput v1, p0, Lcom/fiio/music/util/dslv/k;->d:I

    goto/16 :goto_0

    .line 2996
    :cond_2
    iget-object v4, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    add-int v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2995
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 3002
    :cond_3
    iget-object v4, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v5, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3001
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 3007
    :cond_4
    iget-object v4, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v5, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3006
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 3027
    :cond_5
    iget-object v4, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    add-int v6, v3, v0

    iget-object v7, p0, Lcom/fiio/music/util/dslv/k;->c:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v7, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/fiio/music/util/dslv/DragSortListView;->a(Lcom/fiio/music/util/dslv/DragSortListView;II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3026
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 3066
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/k;->f:Z

    if-eqz v0, :cond_0

    .line 3067
    iget-object v0, p0, Lcom/fiio/music/util/dslv/k;->a:Ljava/lang/StringBuilder;

    const-string v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3068
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/k;->d()V

    .line 3069
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/k;->f:Z

    .line 3071
    :cond_0
    return-void
.end method
