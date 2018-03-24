.class public final Lcom/fiio/music/widget/h;
.super Ljava/lang/Object;
.source "EqBarView2.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/widget/h;->d:I

    .line 19
    iput-object p1, p0, Lcom/fiio/music/widget/h;->a:Landroid/content/Context;

    .line 20
    iput-boolean p2, p0, Lcom/fiio/music/widget/h;->c:Z

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lcom/fiio/music/widget/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/h;->d:I

    .line 27
    iget v0, p0, Lcom/fiio/music/widget/h;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/fiio/music/widget/h;->a:Landroid/content/Context;

    const v1, 0x7f040058

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/h;->b:Landroid/view/View;

    .line 41
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/widget/h;->b:Landroid/view/View;

    return-object v0

    .line 29
    :cond_1
    iget v0, p0, Lcom/fiio/music/widget/h;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 30
    iget-object v0, p0, Lcom/fiio/music/widget/h;->a:Landroid/content/Context;

    const v1, 0x7f040059

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/h;->b:Landroid/view/View;

    goto :goto_0

    .line 31
    :cond_2
    iget v0, p0, Lcom/fiio/music/widget/h;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 32
    iget-object v0, p0, Lcom/fiio/music/widget/h;->a:Landroid/content/Context;

    const v1, 0x7f04005a

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/h;->b:Landroid/view/View;

    goto :goto_0

    .line 33
    :cond_3
    iget v0, p0, Lcom/fiio/music/widget/h;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/fiio/music/widget/h;->a:Landroid/content/Context;

    const v1, 0x7f04005b

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/h;->b:Landroid/view/View;

    goto :goto_0
.end method
