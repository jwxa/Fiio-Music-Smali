.class public Lcom/fiio/music/widget/VolumeDialog;
.super Landroid/view/ViewGroup;
.source "VolumeDialog.java"


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/media/AudioManager;

.field private c:Lcom/fiio/music/custom/a;

.field private d:Landroid/content/Context;

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private i:I

.field private j:I

.field private k:Landroid/widget/TextView;

.field private l:Landroid/content/SharedPreferences;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Z

.field private r:I

.field private s:Z

.field private t:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v2, p0, Lcom/fiio/music/widget/VolumeDialog;->h:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->a:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/widget/VolumeDialog;->r:I

    .line 238
    new-instance v0, Lcom/fiio/music/widget/u;

    invoke-direct {v0, p0}, Lcom/fiio/music/widget/u;-><init>(Lcom/fiio/music/widget/VolumeDialog;)V

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->t:Landroid/view/View$OnTouchListener;

    .line 52
    iput-object p1, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    .line 53
    const-string v0, "changestyle"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    const-string v1, "styleChange"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/widget/VolumeDialog;->q:Z

    .line 55
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/VolumeDialog;->r:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/widget/VolumeDialog;->h:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->a:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/widget/VolumeDialog;->r:I

    .line 238
    new-instance v0, Lcom/fiio/music/widget/u;

    invoke-direct {v0, p0}, Lcom/fiio/music/widget/u;-><init>(Lcom/fiio/music/widget/VolumeDialog;)V

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->t:Landroid/view/View$OnTouchListener;

    .line 60
    iput-object p1, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/widget/VolumeDialog;->h:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->a:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/widget/VolumeDialog;->r:I

    .line 238
    new-instance v0, Lcom/fiio/music/widget/u;

    invoke-direct {v0, p0}, Lcom/fiio/music/widget/u;-><init>(Lcom/fiio/music/widget/VolumeDialog;)V

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->t:Landroid/view/View$OnTouchListener;

    .line 65
    iput-object p1, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/widget/VolumeDialog;)F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/fiio/music/widget/VolumeDialog;->f:F

    return v0
.end method

.method static synthetic a(Lcom/fiio/music/widget/VolumeDialog;F)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/fiio/music/widget/VolumeDialog;->f:F

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/widget/VolumeDialog;I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/fiio/music/widget/VolumeDialog;->i:I

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/widget/VolumeDialog;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/fiio/music/widget/VolumeDialog;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/widget/VolumeDialog;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 68
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->a()V

    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->f()V

    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->c()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->a()V

    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->e()V

    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->c()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->b()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic b(Lcom/fiio/music/widget/VolumeDialog;)Lcom/fiio/music/custom/a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    return-object v0
.end method

.method static synthetic b(Lcom/fiio/music/widget/VolumeDialog;F)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/fiio/music/widget/VolumeDialog;->g:F

    return-void
.end method

.method static synthetic b(Lcom/fiio/music/widget/VolumeDialog;I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/fiio/music/widget/VolumeDialog;->j:I

    return-void
.end method

.method static synthetic c(Lcom/fiio/music/widget/VolumeDialog;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/fiio/music/widget/VolumeDialog;->h()V

    return-void
.end method

.method static synthetic d(Lcom/fiio/music/widget/VolumeDialog;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/fiio/music/widget/VolumeDialog;->h:Z

    return v0
.end method

.method static synthetic e(Lcom/fiio/music/widget/VolumeDialog;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/fiio/music/widget/VolumeDialog;->g:F

    return v0
.end method

.method static synthetic f(Lcom/fiio/music/widget/VolumeDialog;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->l:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic g(Lcom/fiio/music/widget/VolumeDialog;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/fiio/music/widget/VolumeDialog;->i:I

    return v0
.end method

.method static synthetic h(Lcom/fiio/music/widget/VolumeDialog;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/fiio/music/widget/VolumeDialog;->j:I

    return v0
.end method

.method private h()V
    .locals 7

    .prologue
    const v6, 0x7f0400bc

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    const-string v1, "max_voice"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->l:Landroid/content/SharedPreferences;

    .line 118
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    const-string v1, "changestyle"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    const-string v1, "styleChange"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/widget/VolumeDialog;->q:Z

    .line 121
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/VolumeDialog;->r:I

    .line 123
    iget v0, p0, Lcom/fiio/music/widget/VolumeDialog;->r:I

    if-ne v0, v4, :cond_1

    .line 124
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ba

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->m:Landroid/view/View;

    .line 132
    :cond_0
    :goto_0
    new-instance v0, Lcom/fiio/music/custom/b;

    iget-object v1, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/fiio/music/widget/VolumeDialog;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/custom/b;->a(Landroid/view/View;)Lcom/fiio/music/custom/b;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/widget/VolumeDialog;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/custom/b;->b(Landroid/view/View;)Lcom/fiio/music/custom/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    .line 137
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->m:Landroid/view/View;

    const v1, 0x7f0b0269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->k:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->m:Landroid/view/View;

    const v1, 0x7f0b026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->n:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->m:Landroid/view/View;

    const v1, 0x7f0b0268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->o:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->m:Landroid/view/View;

    const v1, 0x7f0b0267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->p:Landroid/widget/ImageView;

    .line 142
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->b:Landroid/media/AudioManager;

    .line 143
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/fiio/music/widget/VolumeDialog;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    if-lez v0, :cond_5

    .line 146
    iget-boolean v0, p0, Lcom/fiio/music/widget/VolumeDialog;->q:Z

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->n:Landroid/widget/ImageView;

    const v1, 0x7f020425

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/fiio/music/widget/VolumeDialog;->t:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    invoke-virtual {v0, v4}, Lcom/fiio/music/custom/a;->setCanceledOnTouchOutside(Z)V

    .line 161
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    new-instance v1, Lcom/fiio/music/widget/v;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/v;-><init>(Lcom/fiio/music/widget/VolumeDialog;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/custom/a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 171
    new-instance v0, Lcom/fiio/music/widget/x;

    iget-object v1, p0, Lcom/fiio/music/widget/VolumeDialog;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/widget/VolumeDialog;->n:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fiio/music/widget/VolumeDialog;->b:Landroid/media/AudioManager;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/fiio/music/widget/x;-><init>(Lcom/fiio/music/widget/VolumeDialog;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/media/AudioManager;)V

    .line 172
    iget-object v1, p0, Lcom/fiio/music/widget/VolumeDialog;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/fiio/music/widget/VolumeDialog;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    invoke-virtual {v0}, Lcom/fiio/music/custom/a;->show()V

    .line 175
    return-void

    .line 125
    :cond_1
    iget v0, p0, Lcom/fiio/music/widget/VolumeDialog;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400bb

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->m:Landroid/view/View;

    goto/16 :goto_0

    .line 127
    :cond_2
    iget v0, p0, Lcom/fiio/music/widget/VolumeDialog;->r:I

    if-ne v0, v5, :cond_3

    .line 128
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->m:Landroid/view/View;

    goto/16 :goto_0

    .line 129
    :cond_3
    iget v0, p0, Lcom/fiio/music/widget/VolumeDialog;->r:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->m:Landroid/view/View;

    goto/16 :goto_0

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->n:Landroid/widget/ImageView;

    const v1, 0x7f020426

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 152
    :cond_5
    iget-boolean v0, p0, Lcom/fiio/music/widget/VolumeDialog;->q:Z

    if-eqz v0, :cond_6

    .line 153
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->n:Landroid/widget/ImageView;

    const v1, 0x7f020431

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 155
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->n:Landroid/widget/ImageView;

    const v1, 0x7f020432

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method static synthetic i(Lcom/fiio/music/widget/VolumeDialog;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/fiio/music/widget/VolumeDialog;->q:Z

    return v0
.end method

.method static synthetic j(Lcom/fiio/music/widget/VolumeDialog;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->b:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    invoke-virtual {v0}, Lcom/fiio/music/custom/a;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    invoke-virtual {v0}, Lcom/fiio/music/custom/a;->show()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/fiio/music/widget/VolumeDialog;->h()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 366
    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->a()V

    .line 368
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->e()V

    .line 369
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    .line 370
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->c()V

    .line 377
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->a()V

    .line 373
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->f()V

    .line 374
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    .line 375
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->c()V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    invoke-virtual {v0}, Lcom/fiio/music/custom/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    const-string v1, "default_voice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SWITCH"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v2, "DEFAULT_VOICE"

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/fiio/music/widget/VolumeDialog;->s:Z

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    invoke-virtual {v0}, Lcom/fiio/music/custom/a;->dismiss()V

    .line 182
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 185
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->b:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->d:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->b:Landroid/media/AudioManager;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->b:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/fiio/music/widget/VolumeDialog;->a:Landroid/os/Handler;

    new-instance v2, Lcom/fiio/music/widget/w;

    invoke-direct {v2, p0, v0}, Lcom/fiio/music/widget/w;-><init>(Lcom/fiio/music/widget/VolumeDialog;I)V

    .line 196
    const-wide/16 v4, 0x5dc

    .line 189
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    invoke-virtual {v0}, Lcom/fiio/music/custom/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    invoke-virtual {v0}, Lcom/fiio/music/custom/a;->dismiss()V

    .line 216
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    .line 217
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 337
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->b:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 338
    return-void
.end method

.method public final f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->l:Landroid/content/SharedPreferences;

    const-string v1, "MAX_VOICE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/VolumeDialog;->i:I

    .line 342
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 343
    iget v1, p0, Lcom/fiio/music/widget/VolumeDialog;->i:I

    if-le v1, v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->b:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 345
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->b:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/fiio/music/widget/VolumeDialog;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    if-lez v0, :cond_1

    .line 351
    iget-boolean v0, p0, Lcom/fiio/music/widget/VolumeDialog;->q:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->n:Landroid/widget/ImageView;

    const v1, 0x7f020425

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->n:Landroid/widget/ImageView;

    const v1, 0x7f020426

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 357
    :cond_1
    iget-boolean v0, p0, Lcom/fiio/music/widget/VolumeDialog;->q:Z

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->n:Landroid/widget/ImageView;

    const v1, 0x7f020431

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->n:Landroid/widget/ImageView;

    const v1, 0x7f020432

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 330
    :cond_0
    :goto_0
    return v4

    .line 297
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/VolumeDialog;->e:F

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/VolumeDialog;->f:F

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/widget/VolumeDialog;->g:F

    goto :goto_0

    .line 305
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/fiio/music/widget/VolumeDialog;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 308
    iget v2, p0, Lcom/fiio/music/widget/VolumeDialog;->f:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/widget/VolumeDialog;->c:Lcom/fiio/music/custom/a;

    invoke-virtual {v0}, Lcom/fiio/music/custom/a;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/fiio/music/widget/VolumeDialog;->h()V

    .line 311
    iput-boolean v4, p0, Lcom/fiio/music/widget/VolumeDialog;->h:Z

    .line 312
    iput v1, p0, Lcom/fiio/music/widget/VolumeDialog;->f:F

    .line 315
    :cond_2
    iget-boolean v0, p0, Lcom/fiio/music/widget/VolumeDialog;->h:Z

    if-eqz v0, :cond_0

    .line 316
    iget v0, p0, Lcom/fiio/music/widget/VolumeDialog;->f:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/fiio/music/widget/VolumeDialog;->g:F

    .line 317
    iget v0, p0, Lcom/fiio/music/widget/VolumeDialog;->g:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 318
    iput v1, p0, Lcom/fiio/music/widget/VolumeDialog;->f:F

    .line 319
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->e()V

    .line 320
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    goto :goto_0

    .line 321
    :cond_3
    iget v0, p0, Lcom/fiio/music/widget/VolumeDialog;->g:F

    const/high16 v2, -0x40000000    # -2.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 322
    iput v1, p0, Lcom/fiio/music/widget/VolumeDialog;->f:F

    .line 323
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->f()V

    .line 324
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    goto :goto_0

    .line 329
    :pswitch_2
    invoke-virtual {p0}, Lcom/fiio/music/widget/VolumeDialog;->c()V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setActivityIsFinish(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/fiio/music/widget/VolumeDialog;->s:Z

    .line 207
    return-void
.end method
