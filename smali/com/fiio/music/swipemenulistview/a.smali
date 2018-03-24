.class public final Lcom/fiio/music/swipemenulistview/a;
.super Ljava/lang/Object;
.source "SwipeMenu.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/swipemenulistview/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/a;->a:Landroid/content/Context;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/swipemenulistview/a;->b:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/fiio/music/swipemenulistview/a;->d:Landroid/view/View;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/fiio/music/swipemenulistview/a;->c:I

    .line 58
    return-void
.end method

.method public final a(Lcom/fiio/music/swipemenulistview/d;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/swipemenulistview/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/a;->d:Landroid/view/View;

    return-object v0
.end method
