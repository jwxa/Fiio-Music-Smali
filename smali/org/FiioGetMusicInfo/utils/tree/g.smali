.class final Lorg/FiioGetMusicInfo/utils/tree/g;
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

.field final synthetic b:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V
    .locals 2

    .prologue
    .line 1293
    iput-object p1, p0, Lorg/FiioGetMusicInfo/utils/tree/g;->b:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1295
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1296
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1297
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/g;->a:Ljava/util/Stack;

    .line 1298
    iget-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/g;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/g;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/g;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic nextElement()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/g;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    invoke-interface {v1}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->children()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/g;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/g;->a:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method
