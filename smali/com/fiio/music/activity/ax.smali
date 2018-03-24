.class final Lcom/fiio/music/activity/ax;
.super Ljava/lang/Object;
.source "ListMainActivity.java"

# interfaces
.implements Lcom/fiio/music/adapter/MenuAdapter$ItemListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ax;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 1384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/ax;)Lcom/fiio/music/activity/ListMainActivity;
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/fiio/music/activity/ax;->a:Lcom/fiio/music/activity/ListMainActivity;

    return-object v0
.end method


# virtual methods
.method public final onClickListener(ILandroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1387
    iget-object v0, p0, Lcom/fiio/music/activity/ax;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$47(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/custom/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/custom/j;->c()V

    .line 1388
    if-nez p1, :cond_2

    .line 1389
    new-instance v0, Lcom/fiio/music/c/b;

    iget-object v1, p0, Lcom/fiio/music/activity/ax;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    .line 1390
    const-string v1, "sleep"

    invoke-virtual {v0, v1}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1392
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/fiio/music/activity/ax;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1393
    new-instance v3, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v3}, Landroid/text/method/DigitsKeyListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1394
    const-string v3, "\u5355\u4f4d\uff1a\u5206\u949f"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1396
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1397
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1399
    :cond_0
    iget-object v3, p0, Lcom/fiio/music/activity/ax;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/ListMainActivity;->access$48(Lcom/fiio/music/activity/ListMainActivity;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1400
    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1401
    new-instance v3, Lcom/fiio/music/custom/g;

    iget-object v4, p0, Lcom/fiio/music/activity/ax;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {v3, v4}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/fiio/music/activity/ax;->a:Lcom/fiio/music/activity/ListMainActivity;

    const v5, 0x7f0c022a

    invoke-virtual {v4, v5}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/custom/g;->a(Ljava/lang/CharSequence;)Lcom/fiio/music/custom/g;

    move-result-object v3

    .line 1402
    invoke-virtual {v3, v2}, Lcom/fiio/music/custom/g;->a(Landroid/view/View;)Lcom/fiio/music/custom/g;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/ax;->a:Lcom/fiio/music/activity/ListMainActivity;

    const v5, 0x7f0c002c

    invoke-virtual {v4, v5}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fiio/music/activity/ay;

    invoke-direct {v5, p0, v2, v1, v0}, Lcom/fiio/music/activity/ay;-><init>(Lcom/fiio/music/activity/ax;Landroid/widget/EditText;Ljava/lang/String;Lcom/fiio/music/c/b;)V

    invoke-virtual {v3, v4, v5}, Lcom/fiio/music/custom/g;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fiio/music/custom/g;

    move-result-object v0

    .line 1430
    iget-object v1, p0, Lcom/fiio/music/activity/ax;->a:Lcom/fiio/music/activity/ListMainActivity;

    const v2, 0x7f0c002a

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/custom/g;->a(Ljava/lang/String;)Lcom/fiio/music/custom/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->show()V

    .line 1437
    :cond_1
    :goto_0
    return-void

    .line 1431
    :cond_2
    if-eq p1, v2, :cond_1

    .line 1433
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1434
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/ax;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-class v2, Lcom/fiio/music/activity/SystemSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1435
    iget-object v1, p0, Lcom/fiio/music/activity/ax;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
