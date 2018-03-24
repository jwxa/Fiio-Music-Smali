.class final Lorg/FiioGetMusicInfo/utils/tree/f;
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
.field protected a:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

.field protected b:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Lorg/FiioGetMusicInfo/utils/tree/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Lorg/FiioGetMusicInfo/utils/tree/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V
    .locals 1

    .prologue
    .line 1329
    iput-object p1, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->d:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 1330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    iput-object p2, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->a:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    .line 1332
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->a:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;->children()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->b:Ljava/util/Enumeration;

    .line 1333
    sget-object v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->c:Ljava/util/Enumeration;

    .line 1334
    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->a:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    if-eqz v0, :cond_0

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
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->c:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->c:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->b:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lorg/FiioGetMusicInfo/utils/tree/f;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->d:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->b:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    invoke-direct {v1, v2, v0}, Lorg/FiioGetMusicInfo/utils/tree/f;-><init>(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->c:Ljava/util/Enumeration;

    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->c:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->a:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/f;->a:Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    goto :goto_0
.end method
