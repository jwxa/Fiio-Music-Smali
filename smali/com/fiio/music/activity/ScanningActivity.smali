.class public Lcom/fiio/music/activity/ScanningActivity;
.super Lcom/fiio/music/activity/SettingActivity;
.source "ScanningActivity.java"


# static fields
.field private static m:Z


# instance fields
.field a:Landroid/os/PowerManager;

.field b:Landroid/os/PowerManager$WakeLock;

.field c:Ljava/lang/Runnable;

.field d:Landroid/view/View$OnClickListener;

.field private f:Landroid/widget/Button;

.field private g:Lcom/fiio/music/util/RoundProgressBar;

.field private h:Lcom/fiio/music/util/bh;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/Context;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:[Ljava/lang/String;

.field private q:Lcom/fiio/music/c/b;

.field private final r:Ljava/lang/Thread;

.field private s:Lcom/fiio/music/activity/gq;

.field private t:I

.field private u:Z

.field private v:I

.field private w:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lcom/fiio/music/activity/SettingActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fiio/music/activity/gm;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/gm;-><init>(Lcom/fiio/music/activity/ScanningActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->r:Ljava/lang/Thread;

    .line 74
    new-instance v0, Lcom/fiio/music/activity/gq;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/gq;-><init>(Lcom/fiio/music/activity/ScanningActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->s:Lcom/fiio/music/activity/gq;

    .line 75
    iput-object v2, p0, Lcom/fiio/music/activity/ScanningActivity;->a:Landroid/os/PowerManager;

    .line 76
    iput-object v2, p0, Lcom/fiio/music/activity/ScanningActivity;->b:Landroid/os/PowerManager$WakeLock;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/activity/ScanningActivity;->t:I

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/ScanningActivity;->v:I

    .line 160
    new-instance v0, Lcom/fiio/music/activity/gn;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/gn;-><init>(Lcom/fiio/music/activity/ScanningActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->c:Ljava/lang/Runnable;

    .line 194
    new-instance v0, Lcom/fiio/music/activity/go;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/go;-><init>(Lcom/fiio/music/activity/ScanningActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->w:Landroid/os/Handler;

    .line 287
    new-instance v0, Lcom/fiio/music/activity/gp;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/gp;-><init>(Lcom/fiio/music/activity/ScanningActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->d:Landroid/view/View$OnClickListener;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/ScanningActivity;)Lcom/fiio/music/util/bh;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->h:Lcom/fiio/music/util/bh;

    return-object v0
.end method

.method static synthetic a()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fiio/music/activity/ScanningActivity;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/ScanningActivity;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/fiio/music/activity/ScanningActivity;->t:I

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/ScanningActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fiio/music/activity/ScanningActivity;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/fiio/music/activity/ScanningActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 170
    const-string v0, "\\$*\\$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 171
    const-string v1, ""

    .line 172
    const/4 v0, 0x1

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1

    .line 188
    const-string v1, ""

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_0
    return-object v0

    .line 173
    :cond_1
    const-string v2, ""

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 174
    add-int/lit8 v2, v1, 0x1

    .line 176
    :goto_1
    array-length v4, v3

    if-lt v2, v4, :cond_3

    .line 184
    :goto_2
    const-string v2, ""

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "$"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_3
    aget-object v4, v3, v1

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, v3, v2

    const-string v5, ""

    if-eq v4, v5, :cond_4

    .line 178
    const-string v2, ""

    aput-object v2, v3, v1

    goto :goto_2

    .line 180
    :cond_4
    aget-object v4, v3, v2

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 181
    const-string v4, ""

    aput-object v4, v3, v2

    .line 176
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static synthetic c(Lcom/fiio/music/activity/ScanningActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->w:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/activity/ScanningActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->p:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/fiio/music/activity/ScanningActivity;)Lcom/fiio/music/util/RoundProgressBar;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->g:Lcom/fiio/music/util/RoundProgressBar;

    return-object v0
.end method

.method static synthetic g(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/fiio/music/activity/ScanningActivity;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/fiio/music/activity/ScanningActivity;->t:I

    return v0
.end method

.method static synthetic j(Lcom/fiio/music/activity/ScanningActivity;)Lcom/fiio/music/c/b;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->q:Lcom/fiio/music/c/b;

    return-object v0
.end method

.method static synthetic k(Lcom/fiio/music/activity/ScanningActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/fiio/music/activity/ScanningActivity;)Lcom/fiio/music/activity/gq;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->s:Lcom/fiio/music/activity/gq;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 318
    new-instance v0, Lcom/fiio/music/c/b;

    invoke-direct {v0, p1, v3}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->q:Lcom/fiio/music/c/b;

    .line 319
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->q:Lcom/fiio/music/c/b;

    const-string v1, "multiThreadUpdate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Z)V

    .line 320
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->q:Lcom/fiio/music/c/b;

    const-string v1, "sdCardStatusChanged"

    invoke-virtual {v0, v1, v3}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Z)V

    .line 322
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->q:Lcom/fiio/music/c/b;

    const-string v1, "sdCardStatus"

    invoke-virtual {v0, v1}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->o:Ljava/lang/String;

    .line 323
    invoke-static {}, Lcom/fiio/music/widget/t;->a()Lcom/fiio/music/widget/t;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/fiio/music/widget/t;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/fiio/music/widget/t;->b()Ljava/lang/Thread;

    move-result-object v1

    .line 326
    const-string v2, "EJECT"

    iget-object v3, p0, Lcom/fiio/music/activity/ScanningActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    const-string v2, "long"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5982\u679c\u4e0a\u4e00\u6b21\u81ea\u52a8\u66f4\u65b0\u6ca1\u5b8c\u6210 \u4e14\u672c\u6b21\u4e3a\u62d4\u5361\u4fe1\u53f7 \u5219\u4e0d\u8fdb\u884c\u672c\u6b21\u62d4\u63d2\u5361\u81ea\u52a8\u66f4\u65b0\u76f8\u5e94: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {v0}, Lcom/fiio/music/widget/t;->d()V

    .line 330
    const-string v0, "long"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mThread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const-string v1, "MOUNTED"

    iget-object v2, p0, Lcom/fiio/music/activity/ScanningActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    const-string v1, "long"

    const-string v2, "\u5982\u679c\u4e0a\u4e00\u6b21\u81ea\u52a8\u66f4\u65b0\u6ca1\u5b8c\u6210 \u4e14\u672c\u6b21\u4e3a\u63d2\u5361\u4fe1\u53f7 \u5219\u4e2d\u65ad\u4e0a\u6b21\u7ebf\u7a0b\u91cd\u65b0\u5f00\u59cb\u626b\u63cf: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v0}, Lcom/fiio/music/widget/t;->d()V

    .line 337
    iget-object v1, p0, Lcom/fiio/music/activity/ScanningActivity;->s:Lcom/fiio/music/activity/gq;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/t;->a(Ljava/lang/Thread;)V

    goto :goto_0

    .line 339
    :cond_2
    const-string v1, "long"

    const-string v2, "else: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v0}, Lcom/fiio/music/widget/t;->d()V

    .line 341
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanningActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/fiio/music/activity/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanningActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChangeStyle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/ScanningActivity;->u:Z

    .line 103
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanningActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->l:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/ScanningActivity;->v:I

    .line 106
    iget v0, p0, Lcom/fiio/music/activity/ScanningActivity;->v:I

    if-ne v0, v3, :cond_2

    .line 107
    const v0, 0x7f0400ca

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanningActivity;->setContentView(I)V

    .line 120
    :cond_1
    :goto_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanningActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->a:Landroid/os/PowerManager;

    .line 122
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->a:Landroid/os/PowerManager;

    const-class v1, Lcom/fiio/music/activity/ScanningActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->b:Landroid/os/PowerManager$WakeLock;

    .line 124
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanningActivity;->getIntent()Landroid/content/Intent;

    .line 128
    const v0, 0x7f0b0277

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/RoundProgressBar;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->g:Lcom/fiio/music/util/RoundProgressBar;

    .line 129
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->g:Lcom/fiio/music/util/RoundProgressBar;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/RoundProgressBar;->setMax(I)V

    .line 131
    new-instance v0, Lcom/fiio/music/util/bh;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->h:Lcom/fiio/music/util/bh;

    .line 132
    const v0, 0x7f0b0279

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->i:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0b0278

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->j:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->g:Lcom/fiio/music/util/RoundProgressBar;

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/RoundProgressBar;->setTextIsDisplayable(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->k:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rsvalue"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->p:[Ljava/lang/String;

    .line 137
    const v0, 0x7f0b027b

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->f:Landroid/widget/Button;

    .line 138
    sput-boolean v3, Lcom/fiio/music/activity/ScanningActivity;->m:Z

    .line 139
    new-instance v0, Lcom/fiio/music/c/b;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanningActivity;->l:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->q:Lcom/fiio/music/c/b;

    .line 140
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->q:Lcom/fiio/music/c/b;

    const-string v1, "sdCardStatusChanged"

    invoke-virtual {v0, v1}, Lcom/fiio/music/c/b;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/ScanningActivity;->n:Z

    .line 141
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->q:Lcom/fiio/music/c/b;

    const-string v1, "sdCardStatus"

    invoke-virtual {v0, v1}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->o:Ljava/lang/String;

    .line 142
    iget-boolean v0, p0, Lcom/fiio/music/activity/ScanningActivity;->n:Z

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->s:Lcom/fiio/music/activity/gq;

    invoke-virtual {v0}, Lcom/fiio/music/activity/gq;->start()V

    .line 144
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->q:Lcom/fiio/music/c/b;

    const-string v1, "sdCardStatusChanged"

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Z)V

    .line 145
    invoke-static {}, Lcom/fiio/music/widget/t;->a()Lcom/fiio/music/widget/t;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ScanningActivity;->s:Lcom/fiio/music/activity/gq;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/t;->a(Ljava/lang/Thread;)V

    .line 146
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdCardEjectThread\u8fdb\u7a0b\u53f7: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/ScanningActivity;->s:Lcom/fiio/music/activity/gq;

    invoke-virtual {v2}, Lcom/fiio/music/activity/gq;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_1
    const-string v0, "long"

    const-string v1, "-----------------scanningActicity onCreate V0705 ---------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 108
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/ScanningActivity;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 109
    const v0, 0x7f0400cb

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanningActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 110
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/ScanningActivity;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 111
    const v0, 0x7f0400cc

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanningActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->k:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->k:Ljava/lang/String;

    .line 149
    :cond_5
    const-string v0, "$"

    iget-object v1, p0, Lcom/fiio/music/activity/ScanningActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 150
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->k:Ljava/lang/String;

    .line 152
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->r:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scanThread\u8fdb\u7a0b\u53f7: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/ScanningActivity;->r:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 91
    invoke-super {p0}, Lcom/fiio/music/activity/SettingActivity;->onDestroy()V

    .line 92
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 299
    new-instance v2, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v2, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    .line 300
    const/16 v3, 0x19

    if-ne p1, v3, :cond_0

    .line 301
    invoke-virtual {v2, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 310
    :goto_0
    return v0

    .line 303
    :cond_0
    const/16 v3, 0x18

    if-ne p1, v3, :cond_1

    .line 304
    invoke-virtual {v2, v1}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 307
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/fiio/music/activity/ScanningActivity;->m:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 308
    goto :goto_0

    .line 310
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/fiio/music/activity/SettingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0}, Lcom/fiio/music/activity/SettingActivity;->onPause()V

    .line 286
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Lcom/fiio/music/activity/SettingActivity;->onResume()V

    .line 280
    iget-object v0, p0, Lcom/fiio/music/activity/ScanningActivity;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 281
    const-string v0, "long"

    const-string v1, "wakeLock.acquire();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method
