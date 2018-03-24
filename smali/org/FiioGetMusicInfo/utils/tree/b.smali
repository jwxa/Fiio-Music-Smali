.class final Lorg/FiioGetMusicInfo/utils/tree/b;
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
.field protected a:Lorg/FiioGetMusicInfo/utils/tree/c;

.field final synthetic b:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V
    .locals 2

    .prologue
    .line 1364
    iput-object p1, p0, Lorg/FiioGetMusicInfo/utils/tree/b;->b:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1367
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1368
    new-instance v1, Lorg/FiioGetMusicInfo/utils/tree/c;

    invoke-direct {v1, p0}, Lorg/FiioGetMusicInfo/utils/tree/c;-><init>(Lorg/FiioGetMusicInfo/utils/tree/b;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/b;->a:Lorg/FiioGetMusicInfo/utils/tree/c;

    .line 1369
    iget-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/b;->a:Lorg/FiioGetMusicInfo/utils/tree/c;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/utils/tree/c;->a(Ljava/lang/Object;)V

    .line 1370
    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1373
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/b;->a:Lorg/FiioGetMusicInfo/utils/tree/c;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/utils/tree/c;->a:Lorg/FiioGetMusicInfo/utils/tree/d;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 1374
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/b;->a:Lorg/FiioGetMusicInfo/utils/tree/c;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1373
    :goto_1
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public final synthetic nextElement()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/b;->a:Lorg/FiioGetMusicInfo/utils/tree/c;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    invoke-interface {v1}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->children()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/b;->a:Lorg/FiioGetMusicInfo/utils/tree/c;

    iget-object v3, v0, Lorg/FiioGetMusicInfo/utils/tree/c;->a:Lorg/FiioGetMusicInfo/utils/tree/d;

    if-nez v3, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v3, v0, Lorg/FiioGetMusicInfo/utils/tree/c;->a:Lorg/FiioGetMusicInfo/utils/tree/d;

    iget-object v3, v3, Lorg/FiioGetMusicInfo/utils/tree/d;->a:Ljava/lang/Object;

    iget-object v3, v0, Lorg/FiioGetMusicInfo/utils/tree/c;->a:Lorg/FiioGetMusicInfo/utils/tree/d;

    iget-object v4, v0, Lorg/FiioGetMusicInfo/utils/tree/c;->a:Lorg/FiioGetMusicInfo/utils/tree/d;

    iget-object v4, v4, Lorg/FiioGetMusicInfo/utils/tree/d;->b:Lorg/FiioGetMusicInfo/utils/tree/d;

    iput-object v4, v0, Lorg/FiioGetMusicInfo/utils/tree/c;->a:Lorg/FiioGetMusicInfo/utils/tree/d;

    iget-object v4, v0, Lorg/FiioGetMusicInfo/utils/tree/c;->a:Lorg/FiioGetMusicInfo/utils/tree/d;

    if-nez v4, :cond_3

    iput-object v5, v0, Lorg/FiioGetMusicInfo/utils/tree/c;->b:Lorg/FiioGetMusicInfo/utils/tree/d;

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/b;->a:Lorg/FiioGetMusicInfo/utils/tree/c;

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/utils/tree/c;->a(Ljava/lang/Object;)V

    :cond_2
    return-object v1

    :cond_3
    iput-object v5, v3, Lorg/FiioGetMusicInfo/utils/tree/d;->b:Lorg/FiioGetMusicInfo/utils/tree/d;

    goto :goto_0
.end method
