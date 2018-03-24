.class public Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;
.super Ljava/lang/Object;
.source "DefaultTreeModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/FiioGetMusicInfo/utils/tree/TreeModel;


# instance fields
.field protected asksAllowsChildren:Z

.field protected listenerList:Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

.field protected root:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;-><init>(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;Z)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->listenerList:Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

    .line 84
    iput-object p1, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->root:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    .line 85
    iput-boolean p2, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    .line 86
    return-void
.end method

.method private fireTreeStructureChanged(Ljava/lang/Object;Lorg/FiioGetMusicInfo/utils/tree/TreePath;)V
    .locals 5

    .prologue
    .line 581
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->listenerList:Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v3

    .line 582
    const/4 v1, 0x0

    .line 585
    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    move-object v0, v1

    :goto_0
    if-gez v2, :cond_0

    .line 593
    return-void

    .line 586
    :cond_0
    aget-object v1, v3, v2

    const-class v4, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    if-ne v1, v4, :cond_2

    .line 588
    if-nez v0, :cond_1

    .line 589
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;

    invoke-direct {v0, p1, p2}, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;Lorg/FiioGetMusicInfo/utils/tree/TreePath;)V

    move-object v1, v0

    .line 590
    :goto_1
    add-int/lit8 v0, v2, 0x1

    aget-object v0, v3, v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    invoke-interface {v0, v1}, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;->treeStructureChanged(Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;)V

    .line 585
    :goto_2
    add-int/lit8 v0, v2, -0x2

    move v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .prologue
    .line 650
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 652
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 653
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 656
    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 657
    const-string v2, "root"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->root:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    .line 659
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 637
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 639
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 641
    iget-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->root:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->root:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    instance-of v1, v1, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    .line 642
    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 643
    iget-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->root:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 645
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 646
    return-void
.end method


# virtual methods
.method public addTreeModelListener(Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;)V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->listenerList:Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

    const-class v1, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    invoke-virtual {v0, v1, p1}, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    .line 415
    return-void
.end method

.method public asksAllowsChildren()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    return v0
.end method

.method protected fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 461
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->listenerList:Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v3

    .line 462
    const/4 v1, 0x0

    .line 465
    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    move-object v0, v1

    :goto_0
    if-gez v2, :cond_0

    .line 474
    return-void

    .line 466
    :cond_0
    aget-object v1, v3, v2

    const-class v4, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    if-ne v1, v4, :cond_2

    .line 468
    if-nez v0, :cond_1

    .line 469
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    move-object v1, v0

    .line 471
    :goto_1
    add-int/lit8 v0, v2, 0x1

    aget-object v0, v3, v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    invoke-interface {v0, v1}, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;->treeNodesChanged(Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;)V

    .line 465
    :goto_2
    add-int/lit8 v0, v2, -0x2

    move v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_2
.end method

.method protected fireTreeNodesInserted(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 492
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->listenerList:Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v3

    .line 493
    const/4 v1, 0x0

    .line 496
    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    move-object v0, v1

    :goto_0
    if-gez v2, :cond_0

    .line 505
    return-void

    .line 497
    :cond_0
    aget-object v1, v3, v2

    const-class v4, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    if-ne v1, v4, :cond_2

    .line 499
    if-nez v0, :cond_1

    .line 500
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    move-object v1, v0

    .line 502
    :goto_1
    add-int/lit8 v0, v2, 0x1

    aget-object v0, v3, v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    invoke-interface {v0, v1}, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;->treeNodesInserted(Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;)V

    .line 496
    :goto_2
    add-int/lit8 v0, v2, -0x2

    move v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_2
.end method

.method protected fireTreeNodesRemoved(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 523
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->listenerList:Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v3

    .line 524
    const/4 v1, 0x0

    .line 527
    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    move-object v0, v1

    :goto_0
    if-gez v2, :cond_0

    .line 536
    return-void

    .line 528
    :cond_0
    aget-object v1, v3, v2

    const-class v4, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    if-ne v1, v4, :cond_2

    .line 530
    if-nez v0, :cond_1

    .line 531
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    move-object v1, v0

    .line 533
    :goto_1
    add-int/lit8 v0, v2, 0x1

    aget-object v0, v3, v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    invoke-interface {v0, v1}, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;->treeNodesRemoved(Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;)V

    .line 527
    :goto_2
    add-int/lit8 v0, v2, -0x2

    move v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_2
.end method

.method protected fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 554
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->listenerList:Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v3

    .line 555
    const/4 v1, 0x0

    .line 558
    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    move-object v0, v1

    :goto_0
    if-gez v2, :cond_0

    .line 567
    return-void

    .line 559
    :cond_0
    aget-object v1, v3, v2

    const-class v4, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    if-ne v1, v4, :cond_2

    .line 561
    if-nez v0, :cond_1

    .line 562
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    move-object v1, v0

    .line 564
    :goto_1
    add-int/lit8 v0, v2, 0x1

    aget-object v0, v3, v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    invoke-interface {v0, v1}, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;->treeStructureChanged(Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;)V

    .line 558
    :goto_2
    add-int/lit8 v0, v2, -0x2

    move v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_2
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    check-cast p1, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    invoke-interface {p1, p2}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getChildAt(I)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 171
    check-cast p1, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getIndexOfChild(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 143
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 144
    :cond_0
    const/4 v0, -0x1

    .line 145
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    check-cast p2, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    invoke-interface {p1, p2}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getIndex(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)I

    move-result v0

    goto :goto_0
.end method

.method public getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 632
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->listenerList:Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    return-object v0
.end method

.method public getPathToRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;I)[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method protected getPathToRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;I)[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    .locals 3

    .prologue
    .line 386
    if-nez p1, :cond_1

    .line 387
    if-nez p2, :cond_0

    .line 388
    const/4 v0, 0x0

    .line 400
    :goto_0
    return-object v0

    .line 390
    :cond_0
    new-array v0, p2, [Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    goto :goto_0

    .line 393
    :cond_1
    add-int/lit8 v1, p2, 0x1

    .line 394
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->root:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    if-ne p1, v0, :cond_2

    .line 395
    new-array v0, v1, [Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    .line 398
    :goto_1
    array-length v2, v0

    sub-int v1, v2, v1

    aput-object p1, v0, v1

    goto :goto_0

    .line 397
    :cond_2
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;I)[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    goto :goto_1
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->root:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    return-object v0
.end method

.method public getTreeModelListeners()[Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->listenerList:Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

    .line 442
    const-class v1, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    .line 441
    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    return-object v0
.end method

.method public insertNodeInto(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;I)V
    .locals 2

    .prologue
    .line 221
    invoke-interface {p2, p1, p3}, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;->insert(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;I)V

    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 225
    const/4 v1, 0x0

    aput p3, v0, v1

    .line 226
    invoke-virtual {p0, p2, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->nodesWereInserted(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;[I)V

    .line 227
    return-void
.end method

.method public isLeaf(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    if-eqz v0, :cond_1

    .line 187
    check-cast p1, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getAllowsChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    .line 187
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    :cond_1
    check-cast p1, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->isLeaf()Z

    move-result v0

    goto :goto_0
.end method

.method public nodeChanged(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->listenerList:Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 256
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_1

    .line 259
    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getIndex(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)I

    move-result v1

    .line 260
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 261
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 263
    const/4 v3, 0x0

    aput v1, v2, v3

    .line 264
    invoke-virtual {p0, v0, v2}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->nodesChanged(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;[I)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->nodesChanged(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;[I)V

    goto :goto_0
.end method

.method public nodeStructureChanged(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    .line 352
    :cond_0
    return-void
.end method

.method public nodesChanged(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;[I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 323
    if-eqz p1, :cond_0

    .line 324
    if-eqz p2, :cond_2

    .line 325
    array-length v1, p2

    .line 327
    if-lez v1, :cond_0

    .line 328
    new-array v2, v1, [Ljava/lang/Object;

    .line 330
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 333
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p0, p0, v0, p2, v2}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    .line 341
    :cond_0
    :goto_1
    return-void

    .line 332
    :cond_1
    aget v3, p2, v0

    .line 331
    invoke-interface {p1, v3}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getChildAt(I)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v3

    aput-object v3, v2, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 338
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public nodesWereInserted(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;[I)V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->listenerList:Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 293
    array-length v0, p2

    if-lez v0, :cond_0

    .line 294
    array-length v1, p2

    .line 295
    new-array v2, v1, [Ljava/lang/Object;

    .line 297
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 299
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p0, p0, v0, p2, v2}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->fireTreeNodesInserted(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    .line 302
    :cond_0
    return-void

    .line 298
    :cond_1
    aget v3, p2, v0

    invoke-interface {p1, v3}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getChildAt(I)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v3

    aput-object v3, v2, v0

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public nodesWereRemoved(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;[I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 312
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 313
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p0, p0, v0, p2, p3}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->fireTreeNodesRemoved(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    .line 316
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->root:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->reload(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V

    .line 198
    return-void
.end method

.method public reload(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 281
    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    .line 284
    :cond_0
    return-void
.end method

.method public removeNodeFromParent(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 236
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;

    .line 238
    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node does not have a parent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    new-array v1, v2, [I

    .line 242
    new-array v2, v2, [Ljava/lang/Object;

    .line 244
    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;->getIndex(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)I

    move-result v3

    aput v3, v1, v4

    .line 245
    aget v3, v1, v4

    invoke-interface {v0, v3}, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;->remove(I)V

    .line 246
    aput-object p1, v2, v4

    .line 247
    invoke-virtual {p0, v0, v1, v2}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->nodesWereRemoved(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;[I[Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public removeTreeModelListener(Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;)V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->listenerList:Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;

    const-class v1, Lorg/FiioGetMusicInfo/utils/tree/TreeModelListener;

    invoke-virtual {v0, v1, p1}, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    .line 425
    return-void
.end method

.method public setAsksAllowsChildren(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    .line 95
    return-void
.end method

.method public setRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->root:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    .line 115
    iput-object p1, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->root:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    .line 116
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;Lorg/FiioGetMusicInfo/utils/tree/TreePath;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->nodeStructureChanged(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V

    goto :goto_0
.end method

.method public valueForPathChanged(Lorg/FiioGetMusicInfo/utils/tree/TreePath;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;

    .line 209
    invoke-interface {v0, p2}, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;->nodeChanged(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V

    .line 211
    return-void
.end method
