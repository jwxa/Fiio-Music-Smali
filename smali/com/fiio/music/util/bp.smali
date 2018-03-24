.class final Lcom/fiio/music/util/bp;
.super Ljava/lang/Object;
.source "OnlineFeedBackAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/bn;

.field private final synthetic b:Lcom/fiio/music/custom/f;

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/bn;Lcom/fiio/music/custom/f;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/bp;->a:Lcom/fiio/music/util/bn;

    iput-object p2, p0, Lcom/fiio/music/util/bp;->b:Lcom/fiio/music/custom/f;

    iput-object p3, p0, Lcom/fiio/music/util/bp;->c:Landroid/app/Activity;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fiio/music/util/bp;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 59
    iget-object v0, p0, Lcom/fiio/music/util/bp;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 60
    return-void
.end method
