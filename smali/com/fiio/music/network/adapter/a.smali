.class public Lcom/fiio/music/network/adapter/a;
.super Landroid/widget/BaseAdapter;
.source "BrowserLrcAdapter.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/fiio/music/h/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/fiio/music/network/adapter/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/network/adapter/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/network/adapter/a;->f:Lcom/fiio/music/h/b;

    .line 34
    iput-object p1, p0, Lcom/fiio/music/network/adapter/a;->b:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/fiio/music/network/adapter/a;->d:Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/network/adapter/a;->c:Landroid/view/LayoutInflater;

    .line 38
    new-instance v0, Lcom/fiio/music/h/a;

    invoke-direct {v0}, Lcom/fiio/music/h/a;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/network/adapter/a;->f:Lcom/fiio/music/h/b;

    .line 40
    iget-object v0, p0, Lcom/fiio/music/network/adapter/a;->f:Lcom/fiio/music/h/b;

    invoke-virtual {p2}, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->getLyric()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fiio/music/h/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/network/adapter/a;->e:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fiio/music/network/adapter/a;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/network/adapter/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fiio/music/network/adapter/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 72
    if-nez p2, :cond_0

    .line 75
    new-instance v1, Lcom/fiio/music/network/adapter/b;

    invoke-direct {v1, p0}, Lcom/fiio/music/network/adapter/b;-><init>(Lcom/fiio/music/network/adapter/a;)V

    .line 76
    iget-object v0, p0, Lcom/fiio/music/network/adapter/a;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f040085

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 77
    const v0, 0x7f0b0193

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/network/adapter/b;->a:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/network/adapter/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/h/c;

    .line 87
    iget-object v1, v1, Lcom/fiio/music/network/adapter/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/h/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 90
    return-object p2

    .line 80
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/adapter/b;

    move-object v1, v0

    goto :goto_0
.end method
