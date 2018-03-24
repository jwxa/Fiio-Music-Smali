.class public Lcom/fiio/music/activity/ScanSettingActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ScanSettingActivity.java"


# instance fields
.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private audioSizeFilter:Landroid/widget/RelativeLayout;

.field private cueSplitterCheck:Landroid/widget/CheckBox;

.field private filterSettingText:Landroid/widget/TextView;

.field private filterSize:I

.field private filterSwitch:Ljava/lang/Boolean;

.field private filterTime60s:Ljava/lang/Boolean;

.field private filterTime60sCheck:Landroid/widget/CheckBox;

.field private limit12M:Landroid/widget/RadioButton;

.field private limit3M:Landroid/widget/RadioButton;

.field private limit6M:Landroid/widget/RadioButton;

.field private scanSettingCancel:Landroid/widget/Button;

.field private scanSettingConfirm:Landroid/widget/Button;

.field private scanSettingSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->STYLE_PARAMTER:I

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/activity/ScanSettingActivity;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/fiio/music/activity/ScanSettingActivity;->showAudioSizeFilter()V

    return-void
.end method

.method static synthetic access$1(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->scanSettingSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterTime60sCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/activity/ScanSettingActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSwitch:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fiio/music/activity/ScanSettingActivity;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSize:I

    return v0
.end method

.method static synthetic access$5(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->limit3M:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSettingText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->limit6M:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private showAudioSizeFilter()V
    .locals 7

    .prologue
    const v6, 0x7f040017

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 158
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 159
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 161
    iget v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_2

    .line 162
    const v0, 0x7f040015

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(I)V

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->scanSettingSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "FILTER_SIZE"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSize:I

    .line 172
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->scanSettingSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "FILTER_SWITCH"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSwitch:Ljava/lang/Boolean;

    .line 173
    const v0, 0x7f0b0050

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->limit3M:Landroid/widget/RadioButton;

    .line 174
    const v0, 0x7f0b0051

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->limit6M:Landroid/widget/RadioButton;

    .line 175
    const v0, 0x7f0b0052

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->limit12M:Landroid/widget/RadioButton;

    .line 176
    const v0, 0x7f0b004f

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 177
    const v1, 0x7f0b0054

    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 178
    const v4, 0x7f0b0053

    invoke-virtual {v2, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 180
    iget-object v4, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSwitch:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    :cond_1
    iget v4, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSize:I

    packed-switch v4, :pswitch_data_0

    .line 192
    :goto_1
    new-instance v4, Lcom/fiio/music/activity/gk;

    invoke-direct {v4, p0, v3}, Lcom/fiio/music/activity/gk;-><init>(Lcom/fiio/music/activity/ScanSettingActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v2, Lcom/fiio/music/activity/gl;

    invoke-direct {v2, p0, v0, v3}, Lcom/fiio/music/activity/gl;-><init>(Lcom/fiio/music/activity/ScanSettingActivity;Landroid/widget/CheckBox;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-void

    .line 163
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 164
    const v0, 0x7f040016

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0

    .line 165
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 166
    invoke-virtual {v2, v6}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 167
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 168
    invoke-virtual {v2, v6}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 185
    :pswitch_0
    iget-object v4, p0, Lcom/fiio/music/activity/ScanSettingActivity;->limit3M:Landroid/widget/RadioButton;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 188
    :pswitch_1
    iget-object v4, p0, Lcom/fiio/music/activity/ScanSettingActivity;->limit6M:Landroid/widget/RadioButton;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 191
    :pswitch_2
    iget-object v4, p0, Lcom/fiio/music/activity/ScanSettingActivity;->limit12M:Landroid/widget/RadioButton;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChangeStyle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->UI_IS_CHANGE:Z

    .line 59
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->STYLE_PARAMTER:I

    .line 61
    iget v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_3

    .line 62
    const v0, 0x7f0400e1

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanSettingActivity;->setContentView(I)V

    .line 70
    :cond_1
    :goto_0
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 71
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanSettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "scan_setting"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->scanSettingSharedPreferences:Landroid/content/SharedPreferences;

    .line 72
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->scanSettingSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "FILTER_TIME_60S"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterTime60s:Ljava/lang/Boolean;

    .line 73
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->scanSettingSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "FILTER_SIZE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSize:I

    .line 75
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->scanSettingSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "FILTER_SWITCH"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSwitch:Ljava/lang/Boolean;

    .line 76
    const v0, 0x7f0b028d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterTime60sCheck:Landroid/widget/CheckBox;

    .line 78
    const v0, 0x7f0b0291

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSettingText:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterTime60s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterTime60sCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSwitch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    iget v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSize:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_1
    const v0, 0x7f0b028e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->audioSizeFilter:Landroid/widget/RelativeLayout;

    .line 108
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->audioSizeFilter:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fiio/music/activity/gh;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/gh;-><init>(Lcom/fiio/music/activity/ScanSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f0b0293

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->scanSettingConfirm:Landroid/widget/Button;

    .line 118
    const v0, 0x7f0b0292

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->scanSettingCancel:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->scanSettingConfirm:Landroid/widget/Button;

    new-instance v1, Lcom/fiio/music/activity/gi;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/gi;-><init>(Lcom/fiio/music/activity/ScanSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->scanSettingCancel:Landroid/widget/Button;

    new-instance v1, Lcom/fiio/music/activity/gj;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/gj;-><init>(Lcom/fiio/music/activity/ScanSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void

    .line 63
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 64
    const v0, 0x7f0400e2

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanSettingActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 65
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 66
    const v0, 0x7f0400e3

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanSettingActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 67
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 68
    const v0, 0x7f0400e4

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanSettingActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSettingText:Landroid/widget/TextView;

    const v1, 0x7f0c004d

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/ScanSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSettingText:Landroid/widget/TextView;

    const v1, 0x7f0c004e

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/ScanSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 97
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSettingText:Landroid/widget/TextView;

    const v1, 0x7f0c004f

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/ScanSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 103
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/ScanSettingActivity;->filterSettingText:Landroid/widget/TextView;

    const v1, 0x7f0c00e3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 46
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 47
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 238
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 239
    return-void
.end method
