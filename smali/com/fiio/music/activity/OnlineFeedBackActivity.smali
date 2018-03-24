.class public Lcom/fiio/music/activity/OnlineFeedBackActivity;
.super Landroid/app/Activity;
.source "OnlineFeedBackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field public static final a:Le/af;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/RadioGroup;

.field private f:Landroid/widget/RadioButton;

.field private g:Landroid/widget/RadioButton;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/TextView;

.field private k:Ljava/lang/String;

.field private l:Landroid/app/ProgressDialog;

.field private m:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/fiio/music/activity/OnlineFeedBackActivity;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 43
    sput-object v0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->b:Ljava/lang/String;

    .line 46
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Le/af;->a(Ljava/lang/String;)Le/af;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->a:Le/af;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const-string v0, "Suggestion"

    iput-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->k:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/fiio/music/activity/eq;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/eq;-><init>(Lcom/fiio/music/activity/OnlineFeedBackActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->m:Landroid/content/BroadcastReceiver;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->f:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/fiio/music/activity/OnlineFeedBackActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->l:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .prologue
    .line 175
    packed-switch p2, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 177
    :pswitch_0
    const-string v0, "Report"

    iput-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->k:Ljava/lang/String;

    goto :goto_0

    .line 180
    :pswitch_1
    const-string v0, "Suggestion"

    iput-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->k:Ljava/lang/String;

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x7f0b0221
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 146
    :pswitch_0
    new-instance v0, Lcom/fiio/music/network/d/a;

    invoke-direct {v0, p0}, Lcom/fiio/music/network/d/a;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v0}, Lcom/fiio/music/network/d/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    sget-object v0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->b:Ljava/lang/String;

    const-string v1, "Can not connect to the internet!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/fiio/a/a/b;->a()Lcom/fiio/a/a/b;

    const v0, 0x7f0c0207

    invoke-static {v0}, Lcom/fiio/a/a/b;->a(I)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->l:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 155
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->l:Landroid/app/ProgressDialog;

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->l:Landroid/app/ProgressDialog;

    const v2, 0x7f0c01fe

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 161
    new-instance v2, Lcom/fiio/music/entity/OnlineFeedBack;

    invoke-direct {v2}, Lcom/fiio/music/entity/OnlineFeedBack;-><init>()V

    const-string v0, "ro.serialno"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    invoke-static {}, Lcom/fiio/a/a/b;->a()Lcom/fiio/a/a/b;

    const v0, 0x7f0c0209

    invoke-static {v0}, Lcom/fiio/a/a/b;->a(I)V

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->l:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    const-string v0, "empty"

    :cond_6
    invoke-virtual {v2, v3}, Lcom/fiio/music/entity/OnlineFeedBack;->setSn(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/fiio/music/entity/OnlineFeedBack;->setModel(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/fiio/music/entity/OnlineFeedBack;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/fiio/music/entity/OnlineFeedBack;->setContent(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/fiio/music/entity/OnlineFeedBack;->setContact(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lcom/fiio/music/util/cg;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v0}, Lcom/fiio/music/util/cg;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/fiio/a/a/b;->a()Lcom/fiio/a/a/b;

    const v0, 0x7f0c0208

    invoke-static {v0}, Lcom/fiio/a/a/b;->a(I)V

    move-object v0, v1

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/fiio/music/activity/OnlineFeedBackActivity;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onlineFeedBack = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/OnlineFeedBack;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/fiio/music/activity/OnlineFeedBackActivity;->b:Ljava/lang/String;

    const-string v2, "url = http://www.fiio.mobi:8080/FiiOMusicForApp/ServletForOnlineFeedback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    const-string v1, "http://www.fiio.mobi:8080/FiiOMusicForApp/ServletForOnlineFeedback"

    const-string v2, "sendFeedBack"

    new-instance v3, Lcom/fiio/music/activity/er;

    invoke-direct {v3, p0}, Lcom/fiio/music/activity/er;-><init>(Lcom/fiio/music/activity/OnlineFeedBackActivity;)V

    invoke-static {v1, v2, v0, v3}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;

    goto/16 :goto_0

    .line 164
    :pswitch_1
    invoke-virtual {p0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->finish()V

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b021e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f080073

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f0400ac

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->setContentView(I)V

    .line 97
    const v0, 0x7f0b021e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f0b021f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->d:Landroid/widget/Button;

    const v0, 0x7f0b0220

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->e:Landroid/widget/RadioGroup;

    const v0, 0x7f0b0221

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->f:Landroid/widget/RadioButton;

    const v0, 0x7f0b0222

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->g:Landroid/widget/RadioButton;

    const v0, 0x7f0b0223

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->h:Landroid/widget/EditText;

    const v0, 0x7f0b0225

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    const v0, 0x7f0b0224

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/fiio/music/activity/es;

    iget-object v2, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->h:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fiio/music/activity/es;-><init>(Lcom/fiio/music/activity/OnlineFeedBackActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->e:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.fiio.music.feedback.success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.fiio.music.feedback.fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 127
    iget-object v0, p0, Lcom/fiio/music/activity/OnlineFeedBackActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method
