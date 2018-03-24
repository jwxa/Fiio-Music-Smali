.class public final Lcom/fiio/music/custom/g;
.super Ljava/lang/Object;
.source "XfDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/view/View;

.field private o:Landroid/content/DialogInterface$OnClickListener;

.field private p:Landroid/content/DialogInterface$OnClickListener;

.field private q:Landroid/content/DialogInterface$OnClickListener;

.field private r:Landroid/content/DialogInterface$OnCancelListener;

.field private s:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/custom/g;->b:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/custom/g;->h:Z

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/custom/g;->m:Z

    .line 55
    iput-object p1, p0, Lcom/fiio/music/custom/g;->a:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/CharSequence;ILandroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 2

    .prologue
    .line 233
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 235
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    if-eqz p5, :cond_0

    .line 237
    new-instance v1, Lcom/fiio/music/custom/h;

    invoke-direct {v1, p0, p5, p4}, Lcom/fiio/music/custom/h;-><init>(Lcom/fiio/music/custom/g;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :goto_0
    const/4 v0, 0x1

    .line 255
    :goto_1
    return v0

    .line 245
    :cond_0
    new-instance v1, Lcom/fiio/music/custom/i;

    invoke-direct {v1, p0, p4}, Lcom/fiio/music/custom/i;-><init>(Lcom/fiio/music/custom/g;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/fiio/music/custom/f;
    .locals 11

    .prologue
    const v10, 0x7f0b0048

    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/16 v8, 0x8

    .line 158
    iget-object v0, p0, Lcom/fiio/music/custom/g;->a:Landroid/content/Context;

    .line 159
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    check-cast v0, Landroid/view/LayoutInflater;

    .line 160
    new-instance v4, Lcom/fiio/music/custom/f;

    iget-object v1, p0, Lcom/fiio/music/custom/g;->a:Landroid/content/Context;

    invoke-direct {v4, v1}, Lcom/fiio/music/custom/f;-><init>(Landroid/content/Context;)V

    .line 161
    iget-boolean v1, p0, Lcom/fiio/music/custom/g;->h:Z

    invoke-virtual {v4, v1}, Lcom/fiio/music/custom/f;->setCancelable(Z)V

    .line 163
    iget-object v1, p0, Lcom/fiio/music/custom/g;->r:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/fiio/music/custom/g;->r:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v4, v1}, Lcom/fiio/music/custom/f;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/custom/g;->s:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/fiio/music/custom/g;->s:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v1}, Lcom/fiio/music/custom/f;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 171
    :cond_1
    const v2, 0x7f040014

    iget-object v1, p0, Lcom/fiio/music/custom/g;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 172
    const v3, 0x7f0b003f

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 171
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 173
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 174
    const/4 v2, -0x2

    invoke-direct {v0, v5, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 173
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    const v0, 0x7f0b0043

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/custom/g;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget v0, p0, Lcom/fiio/music/custom/g;->b:I

    if-eq v0, v5, :cond_2

    .line 179
    const v0, 0x7f0b0042

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 180
    iget v2, p0, Lcom/fiio/music/custom/g;->b:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 182
    :cond_2
    const/4 v6, 0x0

    .line 184
    iget-object v2, p0, Lcom/fiio/music/custom/g;->e:Ljava/lang/CharSequence;

    const v3, 0x7f0b004b

    iget-object v5, p0, Lcom/fiio/music/custom/g;->o:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/custom/g;->a(Landroid/view/View;Ljava/lang/CharSequence;ILandroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v6, v7

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/fiio/music/custom/g;->f:Ljava/lang/CharSequence;

    const v3, 0x7f0b004d

    iget-object v5, p0, Lcom/fiio/music/custom/g;->p:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/custom/g;->a(Landroid/view/View;Ljava/lang/CharSequence;ILandroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 188
    :cond_4
    iget-object v2, p0, Lcom/fiio/music/custom/g;->g:Ljava/lang/CharSequence;

    const v3, 0x7f0b004c

    iget-object v5, p0, Lcom/fiio/music/custom/g;->q:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/custom/g;->a(Landroid/view/View;Ljava/lang/CharSequence;ILandroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v6, v6, 0x1

    .line 190
    :cond_5
    if-nez v6, :cond_6

    .line 191
    const v0, 0x7f0b0049

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_6
    if-ne v6, v7, :cond_7

    .line 195
    const v0, 0x7f0b004a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 197
    const v0, 0x7f0b004e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/custom/g;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 202
    const v0, 0x7f0b0047

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    iget-object v2, p0, Lcom/fiio/music/custom/g;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/custom/g;->n:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 211
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 210
    check-cast v0, Landroid/widget/FrameLayout;

    .line 212
    iget-boolean v2, p0, Lcom/fiio/music/custom/g;->m:Z

    if-eqz v2, :cond_8

    .line 213
    iget v2, p0, Lcom/fiio/music/custom/g;->i:I

    iget v3, p0, Lcom/fiio/music/custom/g;->j:I

    .line 214
    iget v5, p0, Lcom/fiio/music/custom/g;->k:I

    iget v6, p0, Lcom/fiio/music/custom/g;->l:I

    .line 213
    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 216
    :cond_8
    iget-object v2, p0, Lcom/fiio/music/custom/g;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 221
    :goto_1
    invoke-virtual {v4, v1}, Lcom/fiio/music/custom/f;->setContentView(Landroid/view/View;)V

    .line 222
    return-object v4

    .line 205
    :cond_9
    const v0, 0x7f0b0045

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 206
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 218
    :cond_a
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 219
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)Lcom/fiio/music/custom/g;
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fiio/music/custom/g;->n:Landroid/view/View;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/custom/g;->m:Z

    .line 86
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/fiio/music/custom/g;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/fiio/music/custom/g;->c:Ljava/lang/CharSequence;

    .line 75
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/fiio/music/custom/g;
    .locals 1

    .prologue
    .line 137
    iput-object p1, p0, Lcom/fiio/music/custom/g;->f:Ljava/lang/CharSequence;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/custom/g;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 139
    return-object p0
.end method

.method public final a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fiio/music/custom/g;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/fiio/music/custom/g;->e:Ljava/lang/CharSequence;

    .line 110
    iput-object p2, p0, Lcom/fiio/music/custom/g;->o:Landroid/content/DialogInterface$OnClickListener;

    .line 111
    return-object p0
.end method
