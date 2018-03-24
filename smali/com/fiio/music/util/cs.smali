.class public final Lcom/fiio/music/util/cs;
.super Ljava/lang/Object;
.source "ToastShortTimeUtils.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/cs;->b:Landroid/widget/Toast;

    .line 23
    iput-object p1, p0, Lcom/fiio/music/util/cs;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/util/cs;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fiio/music/util/cs;->b:Landroid/widget/Toast;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/fiio/music/util/ct;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fiio/music/util/ct;-><init>(Landroid/app/Activity;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040152

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    const v0, 0x7f0b0215

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    iget-object v2, p0, Lcom/fiio/music/util/cs;->b:Landroid/widget/Toast;

    if-nez v2, :cond_0

    .line 70
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fiio/music/util/cs;->b:Landroid/widget/Toast;

    .line 71
    iget-object v2, p0, Lcom/fiio/music/util/cs;->b:Landroid/widget/Toast;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 72
    iget-object v2, p0, Lcom/fiio/music/util/cs;->b:Landroid/widget/Toast;

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 73
    iget-object v2, p0, Lcom/fiio/music/util/cs;->b:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 74
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/fiio/music/util/cv;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/cv;-><init>(Lcom/fiio/music/util/cs;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 94
    return-void

    .line 77
    :cond_0
    const-string v1, "zengxy--wa o"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "debadeba"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
