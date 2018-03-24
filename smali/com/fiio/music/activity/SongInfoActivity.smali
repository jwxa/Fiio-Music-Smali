.class public Lcom/fiio/music/activity/SongInfoActivity;
.super Lcom/fiio/music/activity/BaseActivity;
.source "SongInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Z

.field private B:I

.field protected a:Lcom/b/a/b/f;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/RatingBar;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/RatingBar;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/fiio/music/entity/Song;

.field private x:I

.field private y:Landroid/content/Context;

.field private z:Lcom/b/a/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fiio/music/activity/BaseActivity;-><init>()V

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->B:I

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 183
    :pswitch_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/SongInfoActivity;->finish()V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x7f0b0364
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f0c00c1

    const v5, 0x7f020423

    const v4, 0x7f0201c6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/fiio/music/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/fiio/music/activity/SongInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/SongInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChangeStyle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->A:Z

    .line 83
    invoke-virtual {p0}, Lcom/fiio/music/activity/SongInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->B:I

    .line 85
    iget v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->B:I

    if-ne v0, v3, :cond_2

    .line 86
    const v0, 0x7f040131

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->setContentView(I)V

    .line 94
    :cond_1
    :goto_0
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 95
    iput-object p0, p0, Lcom/fiio/music/activity/SongInfoActivity;->y:Landroid/content/Context;

    .line 96
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->a:Lcom/b/a/b/f;

    iget-boolean v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->A:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->z:Lcom/b/a/b/d;

    .line 97
    :goto_1
    const v0, 0x7f0b0360

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b0361

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0362

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0363

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->e:Landroid/widget/Button;

    const v0, 0x7f0b0364

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->f:Landroid/widget/Button;

    const v0, 0x7f0b0365

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0b022a

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->h:Landroid/widget/RatingBar;

    const v0, 0x7f0b0366

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0b022e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->j:Landroid/widget/RatingBar;

    const v0, 0x7f0b0367

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f0b0368

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f0b0369

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0b036a

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f0b036b

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0b036c

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f0b036d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f0b036e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f0b036f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f0b0370

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f0b0371

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f0b0372

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/fiio/music/activity/SongInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 99
    const-string v0, "song"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    .line 100
    const-string v0, "duration"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->x:I

    .line 101
    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->o:Landroid/widget/TextView;

    iget v1, p0, Lcom/fiio/music/activity/SongInfoActivity;->x:I

    invoke-static {v1}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->p:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getSize()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/fiio/music/util/h;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f0c0067

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/SongInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/fiio/music/activity/SongInfoActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getYear()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getYear()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getStyle()Lcom/fiio/music/entity/SongStyle;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getStyle()Lcom/fiio/music/entity/SongStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getStyle()Lcom/fiio/music/entity/SongStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lcom/fiio/music/activity/SongInfoActivity;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    iget v1, p0, Lcom/fiio/music/activity/SongInfoActivity;->B:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/SongInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/SongInfoActivity;->a:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/SongInfoActivity;->a:Lcom/b/a/b/f;

    iget-object v2, p0, Lcom/fiio/music/activity/SongInfoActivity;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fiio/music/activity/SongInfoActivity;->z:Lcom/b/a/b/d;

    invoke-virtual {v1, v0, v2, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getChannels()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getBitRate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " kbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->t:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/activity/SongInfoActivity;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getSampleRate()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " kHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void

    .line 87
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 88
    const v0, 0x7f040132

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 89
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->B:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 90
    const v0, 0x7f040133

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 91
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->B:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 92
    const v0, 0x7f040134

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SongInfoActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 96
    :cond_5
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    invoke-virtual {v0, v5}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/SongInfoActivity;->z:Lcom/b/a/b/d;

    goto/16 :goto_1

    .line 101
    :cond_6
    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/SongInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    const-string v0, " "

    goto/16 :goto_3

    :cond_8
    const-string v0, " "

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/SongInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 259
    invoke-super {p0}, Lcom/fiio/music/activity/BaseActivity;->onDestroy()V

    .line 260
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 244
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    .line 245
    const/16 v2, 0x19

    if-ne p1, v2, :cond_0

    .line 246
    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 252
    :goto_0
    return v0

    .line 248
    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 249
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/fiio/music/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
