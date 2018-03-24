.class public final Lcom/fiio/music/custom/b;
.super Ljava/lang/Object;
.source "FiioDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/content/DialogInterface$OnCancelListener;

.field private g:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/custom/b;->b:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/custom/b;->c:Z

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/custom/b;->d:Z

    .line 75
    iput-object p1, p0, Lcom/fiio/music/custom/b;->a:Landroid/content/Context;

    .line 76
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lcom/fiio/music/custom/b;
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lcom/fiio/music/custom/b;->e:Landroid/view/View;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/custom/b;->d:Z

    .line 106
    return-object p0
.end method

.method public final b(Landroid/view/View;)Lcom/fiio/music/custom/a;
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/fiio/music/custom/b;->a:Landroid/content/Context;

    .line 179
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    new-instance v0, Lcom/fiio/music/custom/a;

    iget-object v1, p0, Lcom/fiio/music/custom/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/a;-><init>(Landroid/content/Context;)V

    .line 181
    iget-boolean v1, p0, Lcom/fiio/music/custom/b;->c:Z

    invoke-virtual {v0, v1}, Lcom/fiio/music/custom/a;->setCancelable(Z)V

    .line 183
    iget-object v1, p0, Lcom/fiio/music/custom/b;->f:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/fiio/music/custom/b;->f:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/fiio/music/custom/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/custom/b;->g:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/fiio/music/custom/b;->g:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/fiio/music/custom/a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 192
    :cond_1
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    .line 193
    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 192
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {v0, p1}, Lcom/fiio/music/custom/a;->setContentView(Landroid/view/View;)V

    .line 196
    return-object v0
.end method
