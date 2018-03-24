.class final Lorg/FiioGetMusicInfo/utils/tree/e;
.super Ljava/lang/Object;
.source "DefaultMutableTreeNode.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Lorg/FiioGetMusicInfo/utils/tree/TreeNode;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/FiioGetMusicInfo/utils/tree/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;Lorg/FiioGetMusicInfo/utils/tree/TreeNode;Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V
    .locals 3

    .prologue
    .line 1454
    iput-object p1, p0, Lorg/FiioGetMusicInfo/utils/tree/e;->b:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 1455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1457
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1458
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1463
    :cond_1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/e;->a:Ljava/util/Stack;

    .line 1464
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/e;->a:Ljava/util/Stack;

    invoke-virtual {v0, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    .line 1467
    :goto_0
    if-ne v0, p2, :cond_2

    .line 1475
    return-void

    .line 1468
    :cond_2
    invoke-interface {v0}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    .line 1469
    if-nez v0, :cond_3

    if-eq p3, p2, :cond_3

    .line 1470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "node "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1471
    const-string v2, " is not an ancestor of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1470
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1473
    :cond_3
    iget-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/e;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    .locals 2

    .prologue
    .line 1483
    :try_start_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/e;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1485
    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/e;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/utils/tree/e;->a()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    return-object v0
.end method
