.class public Lcom/fiio/music/activity/UserExperienceActivity;
.super Landroid/app/Activity;
.source "UserExperienceActivity.java"


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/content/SharedPreferences;

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/fiio/music/activity/UserExperienceActivity;->a:I

    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/fiio/music/activity/UserExperienceActivity;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->i:I

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/UserExperienceActivity;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->h:I

    return v0
.end method

.method static synthetic b(Lcom/fiio/music/activity/UserExperienceActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->g:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f040013

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/fiio/music/activity/UserExperienceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/UserExperienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "switch"

    sget v2, Lcom/fiio/music/activity/UserExperienceActivity;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->h:I

    .line 43
    iget v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 44
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/UserExperienceActivity;->setContentView(I)V

    .line 53
    :cond_1
    :goto_0
    const-string v0, "UserExperience"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/UserExperienceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->g:Landroid/content/SharedPreferences;

    .line 54
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/UserExperienceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->c:Landroid/widget/Button;

    .line 55
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/UserExperienceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->d:Landroid/widget/Button;

    .line 56
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/UserExperienceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->e:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/UserExperienceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->f:Landroid/widget/TextView;

    .line 58
    iget v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->h:I

    sget v1, Lcom/fiio/music/activity/UserExperienceActivity;->b:I

    if-ne v0, v1, :cond_6

    .line 59
    iget-object v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0c0237

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/UserExperienceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f0c0238

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/UserExperienceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/fiio/music/activity/gx;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/gx;-><init>(Lcom/fiio/music/activity/UserExperienceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/fiio/music/activity/gy;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/gy;-><init>(Lcom/fiio/music/activity/UserExperienceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void

    .line 45
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 46
    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/UserExperienceActivity;->setContentView(I)V

    goto :goto_0

    .line 47
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 48
    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/UserExperienceActivity;->setContentView(I)V

    goto :goto_0

    .line 49
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->i:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 50
    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/UserExperienceActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 61
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->h:I

    sget v1, Lcom/fiio/music/activity/UserExperienceActivity;->a:I

    if-ne v0, v1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0c01cf

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/UserExperienceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/fiio/music/activity/UserExperienceActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f0c01d0

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/UserExperienceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
