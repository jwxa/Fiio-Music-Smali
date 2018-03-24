.class public Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
.super Ljava/lang/Object;
.source "DefaultMutableTreeNode.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;


# static fields
.field public static final EMPTY_ENUMERATION:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Lorg/FiioGetMusicInfo/utils/tree/TreeNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected allowsChildren:Z

.field protected children:Ljava/util/Vector;

.field protected parent:Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;

.field protected transient userObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/a;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/utils/tree/a;-><init>()V

    .line 81
    sput-object v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;Z)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->parent:Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;

    .line 134
    iput-boolean p2, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    .line 135
    iput-object p1, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .prologue
    .line 1282
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1284
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1286
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "userObject"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1287
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    .line 1288
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1266
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1268
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    .line 1269
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1270
    const-string v1, "userObject"

    aput-object v1, v0, v2

    .line 1271
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 1275
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1276
    return-void

    .line 1274
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;)V
    .locals 1

    .prologue
    .line 396
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 397
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->insert(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;I)V

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->insert(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;I)V

    goto :goto_0
.end method

.method public breadthFirstEnumeration()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 785
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/b;

    invoke-direct {v0, p0, p0}, Lorg/FiioGetMusicInfo/utils/tree/b;-><init>(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V

    return-object v0
.end method

.method public children()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 282
    sget-object v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    .line 284
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1244
    .line 1247
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 1250
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    .line 1251
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->parent:Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    return-object v0

    .line 1253
    :catch_0
    move-exception v0

    .line 1255
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public depthFirstEnumeration()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->postorderEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllowsChildren()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    return v0
.end method

.method public getChildAfter(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    .locals 2

    .prologue
    .line 903
    if-nez p1, :cond_0

    .line 904
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_0
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getIndex(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)I

    move-result v0

    .line 909
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 910
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node is not a child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 914
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    .line 916
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildAt(I)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "node has no children"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    return-object v0
.end method

.method public getChildBefore(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    .locals 2

    .prologue
    .line 934
    if-nez p1, :cond_0

    .line 935
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_0
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getIndex(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)I

    move-result v0

    .line 940
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 941
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument is not a child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_1
    if-lez v0, :cond_2

    .line 945
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    .line 947
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDepth()I
    .locals 3

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 548
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    if-nez v0, :cond_1

    .line 553
    new-instance v0, Ljava/lang/Error;

    const-string v1, "nodes should be null"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 556
    :cond_1
    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getLevel()I

    move-result v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getLevel()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFirstChild()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    .locals 2

    .prologue
    .line 866
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 867
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "node has no children"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method public getFirstLeaf()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .prologue
    .line 1089
    .line 1091
    :goto_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    return-object p0

    .line 1092
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getFirstChild()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-object p0, v0

    goto :goto_0
.end method

.method public getIndex(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)I
    .locals 2

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->isNodeChild(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    const/4 v0, -0x1

    .line 270
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getLastChild()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    .locals 2

    .prologue
    .line 881
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 882
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "node has no children"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method public getLastLeaf()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .prologue
    .line 1109
    .line 1111
    :goto_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    return-object p0

    .line 1112
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getLastChild()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-object p0, v0

    goto :goto_0
.end method

.method public getLeafCount()I
    .locals 3

    .prologue
    .line 1198
    const/4 v0, 0x0

    .line 1201
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    .line 1203
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1210
    if-gtz v1, :cond_2

    .line 1211
    new-instance v0, Ljava/lang/Error;

    const-string v1, "tree has zero leaves"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1204
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    .line 1205
    invoke-interface {v0}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1206
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1214
    :cond_2
    return v1
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    .line 573
    :goto_0
    invoke-interface {p0}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object p0

    if-nez p0, :cond_0

    .line 577
    return v0

    .line 574
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNextLeaf()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 2

    .prologue
    .line 1140
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 1142
    if-nez v0, :cond_0

    .line 1143
    const/4 v0, 0x0

    .line 1150
    :goto_0
    return-object v0

    .line 1145
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getNextSibling()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v1

    .line 1147
    if-eqz v1, :cond_1

    .line 1148
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getFirstLeaf()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    goto :goto_0

    .line 1150
    :cond_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getNextLeaf()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    goto :goto_0
.end method

.method public getNextNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 2

    .prologue
    .line 682
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 684
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getNextSibling()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    .line 686
    if-nez v0, :cond_0

    .line 687
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-object v1, v0

    .line 690
    :goto_0
    if-nez v1, :cond_1

    .line 691
    const/4 v0, 0x0

    .line 705
    :cond_0
    :goto_1
    return-object v0

    .line 694
    :cond_1
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getNextSibling()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    .line 695
    if-nez v0, :cond_0

    .line 699
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-object v1, v0

    .line 700
    goto :goto_0

    .line 705
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    goto :goto_1
.end method

.method public getNextSibling()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 2

    .prologue
    .line 1017
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 1019
    if-nez v0, :cond_0

    .line 1020
    const/4 v0, 0x0

    .line 1025
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->isNodeSibling(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1026
    new-instance v0, Ljava/lang/Error;

    const-string v1, "child of parent is not a sibling"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1022
    :cond_0
    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildAfter(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    goto :goto_0

    .line 1029
    :cond_1
    return-object v0
.end method

.method public getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->parent:Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;

    return-object v0
.end method

.method public getPath()[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getPathToRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;I)[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method protected getPathToRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;I)[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    .locals 3

    .prologue
    .line 610
    if-nez p1, :cond_1

    .line 611
    if-nez p2, :cond_0

    .line 612
    const/4 v0, 0x0

    .line 621
    :goto_0
    return-object v0

    .line 614
    :cond_0
    new-array v0, p2, [Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    goto :goto_0

    .line 617
    :cond_1
    add-int/lit8 v1, p2, 0x1

    .line 618
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getPathToRoot(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;I)[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    .line 619
    array-length v2, v0

    sub-int v1, v2, v1

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public getPreviousLeaf()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 1177
    if-nez v0, :cond_0

    .line 1178
    const/4 v0, 0x0

    .line 1185
    :goto_0
    return-object v0

    .line 1180
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getPreviousSibling()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v1

    .line 1182
    if-eqz v1, :cond_1

    .line 1183
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getLastLeaf()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    goto :goto_0

    .line 1185
    :cond_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getPreviousLeaf()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviousNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 2

    .prologue
    .line 723
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 725
    if-nez v0, :cond_1

    .line 726
    const/4 v0, 0x0

    .line 737
    :cond_0
    :goto_0
    return-object v0

    .line 729
    :cond_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getPreviousSibling()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v1

    .line 731
    if-eqz v1, :cond_0

    .line 732
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 733
    goto :goto_0

    .line 735
    :cond_2
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getLastLeaf()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviousSibling()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 2

    .prologue
    .line 1044
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 1046
    if-nez v0, :cond_0

    .line 1047
    const/4 v0, 0x0

    .line 1052
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->isNodeSibling(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1053
    new-instance v0, Ljava/lang/Error;

    const-string v1, "child of parent is not a sibling"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1049
    :cond_0
    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildBefore(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    goto :goto_0

    .line 1056
    :cond_1
    return-object v0
.end method

.method public getRoot()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    .locals 1

    .prologue
    .line 647
    .line 652
    :goto_0
    invoke-interface {p0}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    .line 653
    if-nez v0, :cond_0

    .line 655
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public getSharedAncestor(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 470
    if-ne p1, p0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-object p0

    .line 472
    :cond_1
    if-nez p1, :cond_2

    move-object p0, v0

    .line 473
    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getLevel()I

    move-result v1

    .line 480
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getLevel()I

    move-result v2

    .line 482
    if-le v2, v1, :cond_5

    .line 483
    sub-int v1, v2, v1

    move v2, v1

    move-object v1, p0

    move-object p0, p1

    .line 493
    :goto_1
    if-gtz v2, :cond_6

    .line 504
    :cond_3
    if-eq p0, v1, :cond_0

    .line 507
    invoke-interface {p0}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object p0

    .line 508
    invoke-interface {v1}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v1

    .line 509
    if-nez p0, :cond_3

    .line 512
    if-nez p0, :cond_4

    if-eqz v1, :cond_7

    .line 513
    :cond_4
    new-instance v0, Ljava/lang/Error;

    const-string v1, "nodes should be null"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_5
    sub-int/2addr v1, v2

    move v2, v1

    move-object v1, p1

    .line 489
    goto :goto_1

    .line 494
    :cond_6
    invoke-interface {p0}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object p0

    .line 495
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_7
    move-object p0, v0

    .line 516
    goto :goto_0
.end method

.method public getSiblingCount()I
    .locals 1

    .prologue
    .line 994
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    .line 996
    if-nez v0, :cond_0

    .line 997
    const/4 v0, 0x1

    .line 999
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserObjectPath()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 630
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getPath()[Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v2

    .line 631
    array-length v0, v2

    new-array v3, v0, [Ljava/lang/Object;

    .line 633
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-lt v1, v0, :cond_0

    .line 636
    return-object v3

    .line 634
    :cond_0
    aget-object v0, v2, v1

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 635
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    .line 634
    aput-object v0, v3, v1

    .line 633
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public insert(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;I)V
    .locals 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "node does not allow children"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    if-nez p1, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "new child is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->isNodeAncestor(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "new child is an ancestor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_2
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;

    .line 173
    if-eqz v0, :cond_3

    .line 174
    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;->remove(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;)V

    .line 176
    :cond_3
    invoke-interface {p1, p0}, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;->setParent(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;)V

    .line 177
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    if-nez v0, :cond_4

    .line 178
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    .line 180
    :cond_4
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 181
    return-void
.end method

.method public isLeaf()Z
    .locals 1

    .prologue
    .line 1075
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNodeAncestor(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 422
    if-nez p1, :cond_0

    .line 434
    :goto_0
    return v0

    .line 429
    :cond_0
    if-ne p0, p1, :cond_1

    .line 430
    const/4 v0, 0x1

    goto :goto_0

    .line 432
    :cond_1
    invoke-interface {p0}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0
.end method

.method public isNodeChild(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Z
    .locals 1

    .prologue
    .line 844
    if-eqz p1, :cond_0

    .line 845
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    .line 854
    :goto_0
    return v0

    .line 848
    :cond_0
    const/4 v0, 0x0

    .line 854
    goto :goto_0
.end method

.method public isNodeDescendant(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Z
    .locals 1

    .prologue
    .line 451
    if-nez p1, :cond_0

    .line 452
    const/4 v0, 0x0

    .line 454
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->isNodeAncestor(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Z

    move-result v0

    goto :goto_0
.end method

.method public isNodeRelated(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Z
    .locals 2

    .prologue
    .line 530
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getRoot()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getRoot()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNodeSibling(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 968
    if-nez p1, :cond_0

    .line 982
    :goto_0
    return v0

    .line 970
    :cond_0
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 972
    goto :goto_0

    .line 973
    :cond_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v2

    .line 974
    if-eqz v2, :cond_2

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 976
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 977
    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->isNodeChild(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 978
    new-instance v0, Ljava/lang/Error;

    const-string v1, "sibling has different parent"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v0

    .line 974
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pathFromAncestorEnumeration(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 826
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/e;

    invoke-direct {v0, p0, p1, p0}, Lorg/FiioGetMusicInfo/utils/tree/e;-><init>(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;Lorg/FiioGetMusicInfo/utils/tree/TreeNode;Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V

    return-object v0
.end method

.method public postorderEnumeration()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 770
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/f;

    invoke-direct {v0, p0, p0}, Lorg/FiioGetMusicInfo/utils/tree/f;-><init>(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V

    return-object v0
.end method

.method public preorderEnumeration()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 753
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/g;

    invoke-direct {v0, p0, p0}, Lorg/FiioGetMusicInfo/utils/tree/g;-><init>(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V

    return-object v0
.end method

.method public remove(I)V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;

    .line 195
    iget-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 196
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;->setParent(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;)V

    .line 197
    return-void
.end method

.method public remove(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;)V
    .locals 2

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->isNodeChild(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument is not a child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_1
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getIndex(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->remove(I)V

    .line 372
    return-void
.end method

.method public removeAllChildren()V
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    .line 382
    return-void

    .line 380
    :cond_0
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->remove(I)V

    .line 379
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public removeFromParent()V
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;

    .line 350
    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0, p0}, Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;->remove(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;)V

    .line 353
    :cond_0
    return-void
.end method

.method public setAllowsChildren(Z)V
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    if-eq p1, v0, :cond_0

    .line 299
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    .line 300
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    if-nez v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->removeAllChildren()V

    .line 304
    :cond_0
    return-void
.end method

.method public setParent(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->parent:Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;

    .line 210
    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    .line 325
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1230
    const/4 v0, 0x0

    .line 1232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
