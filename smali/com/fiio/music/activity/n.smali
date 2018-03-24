.class final Lcom/fiio/music/activity/n;
.super Ljava/lang/Object;
.source "AddPlayListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/AddPlayListActivity;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/AddPlayListActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/n;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/n;->b:Landroid/widget/EditText;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/fiio/music/activity/n;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/AddPlayListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 274
    iget-object v1, p0, Lcom/fiio/music/activity/n;->b:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 275
    return-void
.end method
