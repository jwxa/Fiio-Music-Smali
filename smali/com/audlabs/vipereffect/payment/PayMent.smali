.class public Lcom/audlabs/vipereffect/payment/PayMent;
.super Ljava/lang/Object;
.source "PayMent.java"


# static fields
.field public static analogx:Z

.field public static bass:Z

.field public static clarity:Z

.field public static colorfulmusic:Z

.field public static compressor:Z

.field public static convolver:Z

.field public static cure:Z

.field public static diffsurr:Z

.field public static dynamicsystem:Z

.field public static fireq:Z

.field public static playbackgain:Z

.field public static reverb:Z

.field public static tube:Z

.field public static vhs:Z

.field public static viperddc:Z

.field public static vse:Z


# instance fields
.field private final ALIPAYURL:Ljava/lang/String;

.field private final CHCEKISPAY:Ljava/lang/String;

.field private final PAYPALURL:Ljava/lang/String;

.field private final QRCODE:Ljava/lang/String;

.field private final WXPAYURL:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEffectId:Ljava/lang/String;

.field private mPayMentCallBack:Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "http://api.audlabs.com/payment/checkispay.php"

    iput-object v0, p0, Lcom/audlabs/vipereffect/payment/PayMent;->CHCEKISPAY:Ljava/lang/String;

    .line 54
    const-string v0, "http://api.audlabs.com/payment/wxpayeffect.php"

    iput-object v0, p0, Lcom/audlabs/vipereffect/payment/PayMent;->WXPAYURL:Ljava/lang/String;

    .line 55
    const-string v0, "http://api.audlabs.com/payment/alipayeffect.php"

    iput-object v0, p0, Lcom/audlabs/vipereffect/payment/PayMent;->ALIPAYURL:Ljava/lang/String;

    .line 56
    const-string v0, "http://api.audlabs.com/payment/paypaleffect.php"

    iput-object v0, p0, Lcom/audlabs/vipereffect/payment/PayMent;->PAYPALURL:Ljava/lang/String;

    .line 57
    const-string v0, "http://api.audlabs.com/payment/qrcode.php"

    iput-object v0, p0, Lcom/audlabs/vipereffect/payment/PayMent;->QRCODE:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/payment/PayMent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/payment/PayMent;->setPayMent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/payment/PayMent;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/payment/PayMent;)V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/audlabs/vipereffect/payment/PayMent;->selectPayDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/payment/PayMent;)V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/audlabs/vipereffect/payment/PayMent;->wxPayDialog()V

    return-void
.end method

.method static synthetic access$4(Lcom/audlabs/vipereffect/payment/PayMent;)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/audlabs/vipereffect/payment/PayMent;->aliPayDialog()V

    return-void
.end method

.method static synthetic access$5(Lcom/audlabs/vipereffect/payment/PayMent;)V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/audlabs/vipereffect/payment/PayMent;->payPalDialog()V

    return-void
.end method

.method static synthetic access$6(Lcom/audlabs/vipereffect/payment/PayMent;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/payment/PayMent;->payDialog(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$7(Lcom/audlabs/vipereffect/payment/PayMent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mEffectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/audlabs/vipereffect/payment/PayMent;)Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mPayMentCallBack:Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;

    return-object v0
.end method

.method private aliPayDialog()V
    .locals 5

    .prologue
    const/high16 v4, 0x42a00000    # 80.0f

    .line 431
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 432
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 433
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 434
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 435
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 437
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {p0, v4}, Lcom/audlabs/vipereffect/payment/PayMent;->dip2px(F)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/audlabs/vipereffect/payment/PayMent;->dip2px(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 438
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 439
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://api.audlabs.com/payment/alipayeffect.php?appId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/audlabs/vipereffect/payment/PayMent;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&effectId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mEffectId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 441
    new-instance v0, Lcom/audlabs/vipereffect/payment/e;

    invoke-direct {v0, p0, v1}, Lcom/audlabs/vipereffect/payment/e;-><init>(Lcom/audlabs/vipereffect/payment/PayMent;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 465
    return-void
.end method

.method private dip2px(F)I
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 536
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    const-string v0, "ro.serialno"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNotNetWorkPayMent(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 373
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 291
    :pswitch_1
    const-string v1, "1001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->playbackgain:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 291
    :pswitch_2
    const-string v1, "1002"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->compressor:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 291
    :pswitch_3
    const-string v1, "1003"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->viperddc:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 291
    :pswitch_4
    const-string v1, "1004"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->vse:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 291
    :pswitch_5
    const-string v1, "1005"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->fireq:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 291
    :pswitch_6
    const-string v1, "1006"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->convolver:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 291
    :pswitch_7
    const-string v1, "1007"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->colorfulmusic:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 291
    :pswitch_8
    const-string v1, "1008"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->diffsurr:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 291
    :pswitch_9
    const-string v1, "1009"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->vhs:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 291
    :pswitch_a
    const-string v1, "1010"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->reverb:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 291
    :pswitch_b
    const-string v1, "1011"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->dynamicsystem:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 291
    :pswitch_c
    const-string v1, "1012"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->tube:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 291
    :pswitch_d
    const-string v1, "1013"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->bass:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 291
    :pswitch_e
    const-string v1, "1014"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->clarity:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 291
    :pswitch_f
    const-string v1, "1015"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->cure:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 291
    :pswitch_10
    const-string v1, "1016"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    sget-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->analogx:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x170060
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private payDialog(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 496
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040030

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 498
    const v0, 0x7f0b0086

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 499
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 500
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 503
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 504
    new-instance v2, Lcom/audlabs/vipereffect/payment/h;

    invoke-direct {v2, p0, v1, v0}, Lcom/audlabs/vipereffect/payment/h;-><init>(Lcom/audlabs/vipereffect/payment/PayMent;Landroid/os/Handler;Landroid/app/AlertDialog;)V

    .line 520
    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 521
    new-instance v3, Lcom/audlabs/vipereffect/payment/j;

    invoke-direct {v3, p0, v1, v2}, Lcom/audlabs/vipereffect/payment/j;-><init>(Lcom/audlabs/vipereffect/payment/PayMent;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 528
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x438c0000    # 280.0f

    invoke-direct {p0, v1}, Lcom/audlabs/vipereffect/payment/PayMent;->dip2px(F)I

    move-result v1

    const/high16 v2, 0x43960000    # 300.0f

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/payment/PayMent;->dip2px(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 529
    return-void
.end method

.method private payPalDialog()V
    .locals 4

    .prologue
    const/high16 v3, 0x42a00000    # 80.0f

    .line 406
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 407
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 408
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 409
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 412
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/payment/PayMent;->dip2px(F)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/payment/PayMent;->dip2px(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://api.audlabs.com/payment/qrcode.php?data=http://api.audlabs.com/payment/paypaleffect.php?params="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/audlabs/vipereffect/payment/PayMent;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mEffectId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    new-instance v2, Lcom/audlabs/vipereffect/base/HttpRequest;

    invoke-direct {v2}, Lcom/audlabs/vipereffect/base/HttpRequest;-><init>()V

    new-instance v3, Lcom/audlabs/vipereffect/payment/d;

    invoke-direct {v3, p0, v0}, Lcom/audlabs/vipereffect/payment/d;-><init>(Lcom/audlabs/vipereffect/payment/PayMent;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v1, v3}, Lcom/audlabs/vipereffect/base/HttpRequest;->getHttpBitmap(Ljava/lang/String;Lcom/audlabs/vipereffect/base/HttpRequest$CallBackBitmap;)V

    .line 425
    return-void
.end method

.method private selectPayDialog()V
    .locals 3

    .prologue
    .line 380
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    const v1, 0x7f0c01c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 382
    iget-object v1, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 383
    new-instance v2, Lcom/audlabs/vipereffect/payment/c;

    invoke-direct {v2, p0}, Lcom/audlabs/vipereffect/payment/c;-><init>(Lcom/audlabs/vipereffect/payment/PayMent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 403
    return-void
.end method

.method private setPayMent(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 104
    const-string v0, "ViPEREffect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPayMent result"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz p1, :cond_f

    .line 107
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v1, "1001"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_0

    .line 109
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->playbackgain:Z

    .line 111
    :cond_0
    const-string v1, "1002"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_1

    .line 112
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->compressor:Z

    .line 114
    :cond_1
    const-string v1, "1003"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_2

    .line 115
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->viperddc:Z

    .line 117
    :cond_2
    const-string v1, "1004"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_3

    .line 118
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->vse:Z

    .line 120
    :cond_3
    const-string v1, "1005"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_4

    .line 121
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->fireq:Z

    .line 123
    :cond_4
    const-string v1, "1006"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_5

    .line 124
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->convolver:Z

    .line 126
    :cond_5
    const-string v1, "1007"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_6

    .line 127
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->colorfulmusic:Z

    .line 129
    :cond_6
    const-string v1, "1008"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_7

    .line 130
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->diffsurr:Z

    .line 132
    :cond_7
    const-string v1, "1009"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_8

    .line 133
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->vhs:Z

    .line 135
    :cond_8
    const-string v1, "1010"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_9

    .line 136
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->reverb:Z

    .line 138
    :cond_9
    const-string v1, "1011"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_a

    .line 139
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->dynamicsystem:Z

    .line 141
    :cond_a
    const-string v1, "1012"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_b

    .line 142
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->tube:Z

    .line 144
    :cond_b
    const-string v1, "1013"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_c

    .line 145
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->bass:Z

    .line 147
    :cond_c
    const-string v1, "1014"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_d

    .line 148
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->clarity:Z

    .line 150
    :cond_d
    const-string v1, "1015"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_e

    .line 151
    const/4 v1, 0x1

    sput-boolean v1, Lcom/audlabs/vipereffect/payment/PayMent;->cure:Z

    .line 153
    :cond_e
    const-string v1, "1016"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v3, :cond_f

    .line 154
    const/4 v0, 0x1

    sput-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->analogx:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_f
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 158
    const-string v0, "ViPEREffect"

    const-string v1, "setPayMent error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wxPayDialog()V
    .locals 4

    .prologue
    const/high16 v3, 0x42a00000    # 80.0f

    .line 471
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 473
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 474
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 477
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/payment/PayMent;->dip2px(F)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/payment/PayMent;->dip2px(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 478
    new-instance v1, Lcom/audlabs/vipereffect/base/HttpRequest;

    invoke-direct {v1}, Lcom/audlabs/vipereffect/base/HttpRequest;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://api.audlabs.com/payment/wxpayeffect.php?appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/audlabs/vipereffect/payment/PayMent;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&effectId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mEffectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/audlabs/vipereffect/payment/g;

    invoke-direct {v3, p0, v0}, Lcom/audlabs/vipereffect/payment/g;-><init>(Lcom/audlabs/vipereffect/payment/PayMent;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/audlabs/vipereffect/base/HttpRequest;->getHttpBitmap(Ljava/lang/String;Lcom/audlabs/vipereffect/base/HttpRequest$CallBackBitmap;)V

    .line 489
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 78
    const-string v0, "com.audlabs.vipereffect"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 80
    const-string v2, "\u6b63\u5728\u4e0e\u670d\u52a1\u5668\u540c\u6b65\u6570\u636e..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    const-string v2, "PayMent"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    const-string v3, "ViPEREffect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "payment result"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-static {p1}, Lcom/audlabs/vipereffect/util/NetUtils;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    :goto_0
    return-void

    .line 86
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 88
    :cond_1
    invoke-static {}, Lcom/audlabs/vipereffect/payment/PayMent;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/audlabs/vipereffect/util/CyptoUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/payment/PayMent;->setPayMent(Ljava/lang/String;)V

    .line 90
    new-instance v2, Lcom/audlabs/vipereffect/base/HttpRequest;

    invoke-direct {v2}, Lcom/audlabs/vipereffect/base/HttpRequest;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://api.audlabs.com/payment/checkispay.php?appId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/audlabs/vipereffect/payment/PayMent;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/audlabs/vipereffect/payment/a;

    invoke-direct {v4, p0, p2, v1, v0}, Lcom/audlabs/vipereffect/payment/a;-><init>(Lcom/audlabs/vipereffect/payment/PayMent;ZLandroid/app/ProgressDialog;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3, v4}, Lcom/audlabs/vipereffect/base/HttpRequest;->getHttpString(Ljava/lang/String;Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;)V

    goto :goto_0
.end method

.method public setPayMentEffect(Landroid/content/Context;Ljava/lang/String;Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 165
    const-string v0, "1000"

    .line 166
    if-nez p2, :cond_1

    .line 167
    const-string v0, "1012"

    .line 220
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mContext:Landroid/content/Context;

    .line 226
    iput-object v0, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mEffectId:Ljava/lang/String;

    .line 227
    iput-object p3, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mPayMentCallBack:Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;

    .line 229
    const-string v1, "com.audlabs.vipereffect"

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 230
    const-string v2, ""

    const-string v3, "PayMent"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    iget-object v1, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/audlabs/vipereffect/payment/PayMent;->init(Landroid/content/Context;Z)V

    .line 233
    new-instance v1, Lcom/audlabs/vipereffect/base/HttpRequest;

    invoke-direct {v1}, Lcom/audlabs/vipereffect/base/HttpRequest;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://api.audlabs.com/payment/checkispay.php?appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/audlabs/vipereffect/payment/PayMent;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&effectId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/audlabs/vipereffect/payment/b;

    invoke-direct {v2, p0, p3}, Lcom/audlabs/vipereffect/payment/b;-><init>(Lcom/audlabs/vipereffect/payment/PayMent;Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;)V

    invoke-virtual {v1, v0, v2}, Lcom/audlabs/vipereffect/base/HttpRequest;->getHttpString(Ljava/lang/String;Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;)V

    .line 283
    :goto_1
    return-void

    .line 168
    :cond_1
    const-string v1, "limiter"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-interface {p3}, Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;->onComplete()V

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "colorfulmusic"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const-string v0, "1007"

    goto :goto_0

    .line 172
    :sswitch_1
    const-string v1, "reverb"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v0, "1010"

    goto :goto_0

    .line 172
    :sswitch_2
    const-string v1, "analogx"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const-string v0, "1016"

    goto/16 :goto_0

    .line 172
    :sswitch_3
    const-string v1, "compressor"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const-string v0, "1002"

    goto/16 :goto_0

    .line 172
    :sswitch_4
    const-string v1, "convolver"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const-string v0, "1006"

    goto/16 :goto_0

    .line 172
    :sswitch_5
    const-string v1, "diffsurr"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const-string v0, "1008"

    goto/16 :goto_0

    .line 172
    :sswitch_6
    const-string v1, "vhs"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const-string v0, "1009"

    goto/16 :goto_0

    .line 172
    :sswitch_7
    const-string v1, "vse"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const-string v0, "1004"

    goto/16 :goto_0

    .line 172
    :sswitch_8
    const-string v1, "bass"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const-string v0, "1013"

    goto/16 :goto_0

    .line 172
    :sswitch_9
    const-string v1, "cure"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const-string v0, "1015"

    goto/16 :goto_0

    .line 172
    :sswitch_a
    const-string v1, "tube"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const-string v0, "1012"

    goto/16 :goto_0

    .line 172
    :sswitch_b
    const-string v1, "fireq"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v0, "1005"

    goto/16 :goto_0

    .line 172
    :sswitch_c
    const-string v1, "clarity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const-string v0, "1014"

    goto/16 :goto_0

    .line 172
    :sswitch_d
    const-string v1, "playbackgain"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string v0, "1001"

    goto/16 :goto_0

    .line 172
    :sswitch_e
    const-string v1, "dynamicsystem"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v0, "1011"

    goto/16 :goto_0

    .line 172
    :sswitch_f
    const-string v1, "viperddc"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const-string v0, "1003"

    goto/16 :goto_0

    .line 251
    :cond_3
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/payment/PayMent;->isNotNetWorkPayMent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    invoke-interface {p3}, Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;->onComplete()V

    goto/16 :goto_1

    .line 254
    :cond_4
    invoke-static {p1}, Lcom/audlabs/vipereffect/util/NetUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 255
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/PayMent;->mContext:Landroid/content/Context;

    const v1, 0x7f0c01cc

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 257
    :cond_5
    invoke-direct {p0}, Lcom/audlabs/vipereffect/payment/PayMent;->selectPayDialog()V

    goto/16 :goto_1

    .line 172
    :sswitch_data_0
    .sparse-switch
        -0x5b0d9cd5 -> :sswitch_0
        -0x37b1162e -> :sswitch_1
        -0x3384ca78 -> :sswitch_2
        -0x1605573b -> :sswitch_3
        -0x144e3e0e -> :sswitch_4
        -0x5ba7259 -> :sswitch_5
        0x1c801 -> :sswitch_6
        0x1c948 -> :sswitch_7
        0x2e06df -> :sswitch_8
        0x2ec625 -> :sswitch_9
        0x367e84 -> :sswitch_a
        0x5ced0fb -> :sswitch_b
        0x32e0a014 -> :sswitch_c
        0x50d39c1a -> :sswitch_d
        0x54e2672e -> :sswitch_e
        0x591c5e19 -> :sswitch_f
    .end sparse-switch
.end method
