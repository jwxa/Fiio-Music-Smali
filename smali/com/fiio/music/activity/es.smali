.class public final Lcom/fiio/music/activity/es;
.super Ljava/lang/Object;
.source "OnlineFeedBackActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

.field private b:I

.field private c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/fiio/music/activity/OnlineFeedBackActivity;Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lcom/fiio/music/activity/es;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/fiio/music/activity/es;->b:I

    .line 193
    iput-object p2, p0, Lcom/fiio/music/activity/es;->c:Landroid/widget/EditText;

    .line 194
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fiio/music/activity/es;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 208
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 210
    iget v2, p0, Lcom/fiio/music/activity/es;->b:I

    if-le v0, v2, :cond_1

    .line 211
    iget-object v0, p0, Lcom/fiio/music/activity/es;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->d(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/fiio/music/activity/es;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 213
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    const/4 v2, 0x0

    iget v3, p0, Lcom/fiio/music/activity/es;->b:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/fiio/music/activity/es;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v1, p0, Lcom/fiio/music/activity/es;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 219
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 221
    if-le v0, v2, :cond_0

    .line 222
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 225
    :cond_0
    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/es;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->d(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
